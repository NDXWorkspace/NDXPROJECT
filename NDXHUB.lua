-- =============================================
-- NDX KEY SYSTEM - KeyAuth (License | Login | Register)
-- Universal | Clean Rewrite | Bug Fixed
-- =============================================

-- Services
local HttpService      = game:GetService("HttpService")
local Players          = game:GetService("Players")
local TweenService     = game:GetService("TweenService")
local UserInputService = game:GetService("UserInputService")
local RbxAnalytics     = pcall(function() return game:GetService("RbxAnalyticsService") end) and game:GetService("RbxAnalyticsService") or nil

local player = Players.LocalPlayer

-- =============================================
-- CONFIG — Edit ini sesuai kebutuhan
-- =============================================
local KEYAUTH = {
    name       = "Keysystem",
    ownerid    = "4hTZE2HMk7",
    secret     = "fc5a64f3a3e7d384dd016da03be39969f5b114764f6228bf06ae0f20edb3407a",
    version    = "1.0",
    getkey_url = "https://loot-link.com/s?HahjGSfI",
}

local MAIN_SCRIPT_URL = "https://raw.githubusercontent.com/NDXWorkspace/NDXPROJECT/refs/heads/main/keysystem.lua"

-- =============================================
-- FOLDERS & CREDENTIALS
-- =============================================
local FOLDER = "NDX_KeySystem"
local CRED_FILE = FOLDER .. "/saved_credentials.json"

local function saveCredentials(mode, user, pass, key)
    if not (writefile and makefolder and isfolder) then return end
    if not isfolder(FOLDER) then makefolder(FOLDER) end
    pcall(function()
        writefile(CRED_FILE, HttpService:JSONEncode({
            Mode = mode, User = user, Pass = pass, Key = key
        }))
    end)
end

local function loadCredentials()
    if not (readfile and isfile) then return nil end
    if not isfile(CRED_FILE) then return nil end
    local ok, data = pcall(function()
        return HttpService:JSONDecode(readfile(CRED_FILE))
    end)
    if ok and type(data) == "table" then return data end
    return nil
end

-- =============================================
-- HARDWARE ID
-- =============================================
local function getHWID()
    if gethwid then return gethwid() end
    if RbxAnalytics then
        local ok, id = pcall(function() return RbxAnalytics:GetClientId() end)
        if ok and id then return id end
    end
    return "HWID_FALLBACK"
end
local HWID = getHWID()

-- =============================================
-- KEYAUTH API
-- =============================================
local sessionid   = ""
local initialized = false

local function urlEncode(s)
    if not s then return "" end
    s = tostring(s)
    s = s:gsub("([^%w%-%.%_%~ ])", function(c) return ("%%%02X"):format(c:byte()) end)
    s = s:gsub(" ", "%%20")
    return s
end

local BASE = "https://keyauth.win/api/1.2/?"
local function buildURL(params)
    local url = BASE
    local first = true
    for k, v in pairs(params) do
        url = url .. (first and "" or "&") .. urlEncode(k) .. "=" .. urlEncode(v)
        first = false
    end
    return url
end

local function apiCall(params)
    local ok, res = pcall(function()
        return game:HttpGet(buildURL(params))
    end)
    if not ok then return false, "Gagal terhubung ke server." end
    if res == "KeyAuth_Invalid" then return false, "App tidak ditemukan di KeyAuth." end

    local jsonOk, data = pcall(function() return HttpService:JSONDecode(res) end)
    if not jsonOk or type(data) ~= "table" then return false, "Respon server tidak valid." end

    return data.success, data.success and (data.info or data.sessionid or true) or (data.message or "Kesalahan tidak diketahui.")
end

local function kaInit()
    local ok, result = apiCall({
        type    = "init",
        name    = KEYAUTH.name,
        ownerid = KEYAUTH.ownerid,
        secret  = KEYAUTH.secret,
        ver     = KEYAUTH.version,
    })
    if ok then
        sessionid   = result
        initialized = true
        return true, "Berhasil terhubung ke KeyAuth."
    end
    return false, result
end

local function kaLicense(key)
    if not initialized then return false, "KeyAuth belum siap." end
    return apiCall({
        type      = "license",
        name      = KEYAUTH.name,
        ownerid   = KEYAUTH.ownerid,
        secret    = KEYAUTH.secret,
        ver       = KEYAUTH.version,
        sessionid = sessionid,
        hwid      = HWID,
        key       = key,
    })
end

local function kaLogin(username, pass)
    if not initialized then return false, "KeyAuth belum siap." end
    return apiCall({
        type      = "login",
        name      = KEYAUTH.name,
        ownerid   = KEYAUTH.ownerid,
        secret    = KEYAUTH.secret,
        ver       = KEYAUTH.version,
        sessionid = sessionid,
        hwid      = HWID,
        username  = username,
        pass      = pass,
    })
end

local function kaRegister(username, pass, key)
    if not initialized then return false, "KeyAuth belum siap." end
    return apiCall({
        type      = "register",
        name      = KEYAUTH.name,
        ownerid   = KEYAUTH.ownerid,
        secret    = KEYAUTH.secret,
        ver       = KEYAUTH.version,
        sessionid = sessionid,
        hwid      = HWID,
        username  = username,
        pass      = pass,
        key       = key,
    })
end

-- =============================================
-- LOAD MAIN SCRIPT
-- =============================================
local function loadMainScript(info)
    print("============================")
    print(" NDX KeySystem - Akses OK!")
    if type(info) == "table" then
        print(" Username : " .. tostring(info.username or "N/A"))
        print(" IP       : " .. tostring(info.ip or "N/A"))
        print(" Expires  : " .. tostring(info.expiry or "N/A"))
    end
    print("============================")
    local ok, err = pcall(function()
        loadstring(game:HttpGet(MAIN_SCRIPT_URL))()
    end)
    if not ok then warn("[NDX KeySystem] Gagal memuat main script: " .. tostring(err)) end
end

-- =============================================
-- GUI
-- =============================================
local function createGUI()
    -- Cleanup old GUI
    local guiParent
    pcall(function()
        guiParent = (gethui and gethui()) or game:GetService("CoreGui")
    end)
    guiParent = guiParent or player:WaitForChild("PlayerGui")
    local existing = guiParent:FindFirstChild("NDX_KeySystem_GUI")
    if existing then existing:Destroy() end

    -- ScreenGui
    local screenGui = Instance.new("ScreenGui")
    screenGui.Name          = "NDX_KeySystem_GUI"
    screenGui.ResetOnSpawn  = false
    screenGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
    local placed = pcall(function() screenGui.Parent = guiParent end)
    if not placed then screenGui.Parent = player:WaitForChild("PlayerGui") end

    -- Dim overlay
    local dim = Instance.new("Frame", screenGui)
    dim.Size                   = UDim2.new(1, 0, 1, 0)
    dim.BackgroundColor3       = Color3.fromRGB(5, 8, 18)
    dim.BackgroundTransparency = 0.4
    dim.BorderSizePixel        = 0
    dim.ZIndex                 = 1

    -- Main window
    local win = Instance.new("Frame", screenGui)
    win.Name              = "Window"
    win.Size              = UDim2.new(0, 420, 0, 80) -- starts small, grows
    win.Position          = UDim2.new(0.5, -210, 0.5, -40)
    win.BackgroundColor3  = Color3.fromRGB(13, 18, 32)
    win.BorderSizePixel   = 0
    win.BackgroundTransparency = 1
    win.ZIndex            = 2
    Instance.new("UICorner", win).CornerRadius = UDim.new(0, 12)
    local winStroke = Instance.new("UIStroke", win)
    winStroke.Color     = Color3.fromRGB(0, 170, 220)
    winStroke.Thickness = 1.2

    -- Title bar
    local titleBar = Instance.new("Frame", win)
    titleBar.Size             = UDim2.new(1, 0, 0, 44)
    titleBar.BackgroundColor3 = Color3.fromRGB(9, 13, 26)
    titleBar.BorderSizePixel  = 0
    titleBar.ZIndex           = 3
    Instance.new("UICorner", titleBar).CornerRadius = UDim.new(0, 12)
    -- Fix corner overlap at bottom
    local tbFix = Instance.new("Frame", titleBar)
    tbFix.Size             = UDim2.new(1, 0, 0.5, 0)
    tbFix.Position         = UDim2.new(0, 0, 0.5, 0)
    tbFix.BackgroundColor3 = Color3.fromRGB(9, 13, 26)
    tbFix.BorderSizePixel  = 0
    tbFix.ZIndex           = 3

    local titleLbl = Instance.new("TextLabel", titleBar)
    titleLbl.Text               = "⬡ " .. KEYAUTH.name .. "  |  KEY SYSTEM"
    titleLbl.Size               = UDim2.new(1, -16, 1, 0)
    titleLbl.Position           = UDim2.new(0, 14, 0, 0)
    titleLbl.BackgroundTransparency = 1
    titleLbl.TextColor3         = Color3.fromRGB(0, 210, 255)
    titleLbl.TextSize           = 12
    titleLbl.Font               = Enum.Font.Code
    titleLbl.TextXAlignment     = Enum.TextXAlignment.Left
    titleLbl.ZIndex             = 4

    -- Dragging
    local dragging, dragInput, dragStart, startPos
    titleBar.InputBegan:Connect(function(input)
        if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
            dragging  = true
            dragStart = input.Position
            startPos  = win.Position
            input.Changed:Connect(function()
                if input.UserInputState == Enum.UserInputState.End then dragging = false end
            end)
        end
    end)
    titleBar.InputChanged:Connect(function(input)
        if input.UserInputType == Enum.UserInputType.MouseMovement or input.UserInputType == Enum.UserInputType.Touch then
            dragInput = input
        end
    end)
    UserInputService.InputChanged:Connect(function(input)
        if input == dragInput and dragging then
            local delta = input.Position - dragStart
            win.Position = UDim2.new(startPos.X.Scale, startPos.X.Offset + delta.X, startPos.Y.Scale, startPos.Y.Offset + delta.Y)
        end
    end)

    -- Body
    local body = Instance.new("Frame", win)
    body.Size                  = UDim2.new(1, -40, 1, -56)
    body.Position              = UDim2.new(0, 20, 0, 50)
    body.BackgroundTransparency = 1
    body.ZIndex                = 3

    local listLayout = Instance.new("UIListLayout", body)
    listLayout.SortOrder           = Enum.SortOrder.LayoutOrder
    listLayout.Padding             = UDim.new(0, 9)
    listLayout.HorizontalAlignment = Enum.HorizontalAlignment.Center

    -- Input factory
    local function createInput(placeholder, isPassword)
        local frame = Instance.new("Frame", body)
        frame.Size             = UDim2.new(1, 0, 0, 44)
        frame.BackgroundColor3 = Color3.fromRGB(7, 11, 22)
        frame.BorderSizePixel  = 0
        frame.ZIndex           = 4
        Instance.new("UICorner", frame).CornerRadius = UDim.new(0, 8)
        local stroke = Instance.new("UIStroke", frame)
        stroke.Color     = Color3.fromRGB(25, 40, 70)
        stroke.Thickness = 1

        local box = Instance.new("TextBox", frame)
        box.Size             = UDim2.new(1, -20, 1, 0)
        box.Position         = UDim2.new(0, 10, 0, 0)
        box.BackgroundTransparency = 1
        box.PlaceholderText  = placeholder
        box.Text             = ""
        box.TextColor3       = Color3.fromRGB(0, 210, 255)
        box.PlaceholderColor3 = Color3.fromRGB(35, 50, 80)
        box.TextSize         = 13
        box.Font             = Enum.Font.Code
        box.ClearTextOnFocus = false
        box.TextXAlignment   = Enum.TextXAlignment.Left
        box.ZIndex           = 5
        if isPassword then box.TextTransparency = 1 end -- visually mask

        -- Focus glow
        box.Focused:Connect(function() TweenService:Create(stroke, TweenInfo.new(0.2), {Color = Color3.fromRGB(0, 170, 220)}):Play() end)
        box.FocusLost:Connect(function()  TweenService:Create(stroke, TweenInfo.new(0.2), {Color = Color3.fromRGB(25, 40, 70)}):Play()  end)

        return box, frame
    end

    -- Password masking (since .Password may not work in all exploits)
    local function makePasswordBox(box)
        local realText = ""
        box.Text = ""
        local ignoreChange = false
        box:GetPropertyChangedSignal("Text"):Connect(function()
            if ignoreChange then return end
            local newText = box.Text
            local dot = "•"
            if #newText >= #realText then
                realText = realText .. newText:sub(#realText + 1)
            else
                realText = realText:sub(1, #newText)
            end
            ignoreChange = true
            box.Text = string.rep(dot, #realText)
            ignoreChange = false
        end)
        return function() return realText end
    end

    local userBox, userFrame = createInput("Username")
    local passBox, passFrame = createInput("Password")
    passBox.TextTransparency = 0
    local getPass = makePasswordBox(passBox)
    local keyBox,  keyFrame  = createInput("Access / License Key")

    -- Preload saved credentials
    local currentMode = "login"
    local saved = loadCredentials()
    if saved then
        currentMode      = saved.Mode or "login"
        userBox.Text     = saved.User or ""
        keyBox.Text      = saved.Key  or ""
        -- Don't pre-fill password for security
    end

    -- Action button
    local actionBtn = Instance.new("TextButton", body)
    actionBtn.Size             = UDim2.new(1, 0, 0, 44)
    actionBtn.BackgroundColor3 = Color3.fromRGB(25, 38, 70)
    actionBtn.TextColor3       = Color3.fromRGB(220, 235, 255)
    actionBtn.TextSize         = 14
    actionBtn.Font             = Enum.Font.GothamBold
    actionBtn.BorderSizePixel  = 0
    actionBtn.AutoButtonColor  = false
    actionBtn.ZIndex           = 4
    Instance.new("UICorner", actionBtn).CornerRadius = UDim.new(0, 8)

    -- Status label
    local statusLbl = Instance.new("TextLabel", body)
    statusLbl.Size               = UDim2.new(1, 0, 0, 20)
    statusLbl.BackgroundTransparency = 1
    statusLbl.TextColor3         = Color3.fromRGB(0, 210, 255)
    statusLbl.TextSize           = 12
    statusLbl.Font               = Enum.Font.Code
    statusLbl.TextXAlignment     = Enum.TextXAlignment.Left
    statusLbl.TextWrapped        = true
    statusLbl.ZIndex             = 4

    -- Switch / sub mode buttons
    local switchBtn = Instance.new("TextButton", body)
    switchBtn.Size               = UDim2.new(1, 0, 0, 22)
    switchBtn.BackgroundTransparency = 1
    switchBtn.TextColor3         = Color3.fromRGB(65, 90, 140)
    switchBtn.TextSize           = 12
    switchBtn.Font               = Enum.Font.Code
    switchBtn.ZIndex             = 4

    local subBtn = Instance.new("TextButton", body)
    subBtn.Size                  = UDim2.new(1, 0, 0, 22)
    subBtn.BackgroundTransparency = 1
    subBtn.TextColor3            = Color3.fromRGB(65, 90, 140)
    subBtn.TextSize              = 12
    subBtn.Font                  = Enum.Font.Code
    subBtn.ZIndex                = 4

    -- Layout order
    userFrame.LayoutOrder  = 1
    passFrame.LayoutOrder  = 2
    keyFrame.LayoutOrder   = 3
    actionBtn.LayoutOrder  = 4
    statusLbl.LayoutOrder  = 5
    switchBtn.LayoutOrder  = 6
    subBtn.LayoutOrder     = 7

    -- =============================================
    -- STATE MANAGEMENT
    -- =============================================
    local isBusy = false

    local function setStatus(msg, color)
        statusLbl.Text       = msg
        statusLbl.TextColor3 = color or Color3.fromRGB(255, 90, 90)
    end

    local BTN_IDLE  = Color3.fromRGB(25, 38, 70)
    local BTN_READY = Color3.fromRGB(0, 170, 220)
    local BTN_BUSY  = Color3.fromRGB(20, 30, 55)

    local function applyBtnText()
        if currentMode == "license" then actionBtn.Text = "VERIFY KEY"
        elseif currentMode == "login" then actionBtn.Text = "LOGIN"
        elseif currentMode == "register" then actionBtn.Text = "REGISTER ACCOUNT" end
    end

    local function setReady()
        isBusy = false
        TweenService:Create(actionBtn, TweenInfo.new(0.25), {BackgroundColor3 = BTN_READY}):Play()
        applyBtnText()
    end

    local function setBusy(label)
        isBusy = true
        TweenService:Create(actionBtn, TweenInfo.new(0.25), {BackgroundColor3 = BTN_BUSY}):Play()
        actionBtn.Text = label or "Menghubungi Server..."
    end

    local function autoResizeWindow()
        task.delay(0.06, function()
            local h = listLayout.AbsoluteContentSize.Y + 100
            TweenService:Create(win, TweenInfo.new(0.3, Enum.EasingStyle.Exponential, Enum.EasingDirection.Out), {
                Size = UDim2.new(0, 420, 0, h)
            }):Play()
        end)
    end

    local function updateUIState()
        userFrame.Visible = (currentMode == "login" or currentMode == "register")
        passFrame.Visible = (currentMode == "login" or currentMode == "register")
        keyFrame.Visible  = (currentMode == "license" or currentMode == "register")

        if currentMode == "license" then
            switchBtn.Text      = "[ Punya akun? Login ]"
            subBtn.Text         = "[ Dapatkan Key ]"
            subBtn.Visible      = true
        elseif currentMode == "login" then
            switchBtn.Text      = "[ Gunakan License Key ]"
            subBtn.Text         = "[ Belum punya akun? Daftar ]"
            subBtn.Visible      = true
        elseif currentMode == "register" then
            switchBtn.Text      = "[ Kembali ke Login ]"
            subBtn.Visible      = false
        end

        applyBtnText()
        autoResizeWindow()
    end

    -- Button hover effects
    actionBtn.MouseEnter:Connect(function()
        if not isBusy then
            TweenService:Create(actionBtn, TweenInfo.new(0.15), {BackgroundColor3 = Color3.fromRGB(40, 210, 255)}):Play()
        end
    end)
    actionBtn.MouseLeave:Connect(function()
        if not isBusy then
            TweenService:Create(actionBtn, TweenInfo.new(0.15), {BackgroundColor3 = BTN_READY}):Play()
        end
    end)

    switchBtn.MouseButton1Click:Connect(function()
        if isBusy then return end
        if currentMode == "license" then currentMode = "login"
        elseif currentMode == "login" then currentMode = "license"
        elseif currentMode == "register" then currentMode = "login" end
        setStatus("", Color3.fromRGB(0, 210, 255))
        updateUIState()
    end)

    subBtn.MouseButton1Click:Connect(function()
        if isBusy then return end
        if currentMode == "license" then
            setStatus("◌  Link disalin: " .. KEYAUTH.getkey_url, Color3.fromRGB(0, 210, 255))
            pcall(function() setclipboard(KEYAUTH.getkey_url) end)
        elseif currentMode == "login" then
            currentMode = "register"
            setStatus("", Color3.fromRGB(0, 210, 255))
            updateUIState()
        end
    end)

    -- =============================================
    -- MAIN ACTION
    -- =============================================
    actionBtn.MouseButton1Click:Connect(function()
        if isBusy or not initialized then return end

        local user = userBox.Text:match("^%s*(.-)%s*$")
        local pass = getPass()
        local key  = keyBox.Text:match("^%s*(.-)%s*$")

        if currentMode == "license" and key == "" then
            return setStatus("✕  Key tidak boleh kosong.")
        end
        if (currentMode == "login" or currentMode == "register") then
            if user == "" or pass == "" then
                return setStatus("✕  Username & Password tidak boleh kosong.")
            end
        end
        if currentMode == "register" and key == "" then
            return setStatus("✕  Key dibutuhkan untuk pendaftaran.")
        end

        setBusy("Menghubungi KeyAuth...")
        setStatus("◌  Memverifikasi...", Color3.fromRGB(0, 210, 255))
        saveCredentials(currentMode, user, nil, key) -- never save password

        task.spawn(function()
            local ok, info

            if currentMode == "license" then
                ok, info = kaLicense(key)
            elseif currentMode == "login" then
                ok, info = kaLogin(user, pass)
            elseif currentMode == "register" then
                ok, info = kaRegister(user, pass, key)
            end

            if ok then
                setStatus("✓  Akses Diberikan! Memuat script...", Color3.fromRGB(74, 222, 128))
                task.wait(1)
                -- Outro animation
                TweenService:Create(win, TweenInfo.new(0.35, Enum.EasingStyle.Back, Enum.EasingDirection.In), {
                    Position             = UDim2.new(0.5, -210, 0.6, -40),
                    BackgroundTransparency = 1,
                }):Play()
                TweenService:Create(dim, TweenInfo.new(0.35), {BackgroundTransparency = 1}):Play()
                task.wait(0.4)
                screenGui:Destroy()
                loadMainScript(info)
            else
                setStatus("✕  " .. tostring(info))
                setReady()
            end
        end)
    end)

    -- =============================================
    -- INTRO ANIMATION + INIT
    -- =============================================
    win.BackgroundTransparency = 1
    win.Position = UDim2.new(0.5, -210, 0.6, -40)

    updateUIState()
    setStatus("◌  Menginisialisasi koneksi...", Color3.fromRGB(0, 210, 255))
    actionBtn.Text = "Menghubungi Server..."

    task.spawn(function()
        -- Play intro
        TweenService:Create(win, TweenInfo.new(0.4, Enum.EasingStyle.Back, Enum.EasingDirection.Out), {
            Position             = UDim2.new(0.5, -210, 0.5, -40),
            BackgroundTransparency = 0,
        }):Play()

        local initOk, msg = kaInit()
        if initOk then
            setStatus("✓  Terhubung. Silakan login.", Color3.fromRGB(74, 222, 128))
            setReady()
        else
            setStatus("✕  " .. tostring(msg))
            actionBtn.Text             = "COBA LAGI"
            isBusy                     = false
            TweenService:Create(actionBtn, TweenInfo.new(0.25), {BackgroundColor3 = Color3.fromRGB(180, 40, 40)}):Play()

            -- Retry logic on "COBA LAGI"
            actionBtn.MouseButton1Click:Connect(function()
                if isBusy or initialized then return end
                setBusy("Mencoba ulang...")
                setStatus("◌  Menginisialisasi ulang...", Color3.fromRGB(0, 210, 255))
                task.spawn(function()
                    local retryOk, retryMsg = kaInit()
                    if retryOk then
                        setStatus("✓  Terhubung. Silakan login.", Color3.fromRGB(74, 222, 128))
                        setReady()
                    else
                        setStatus("✕  " .. tostring(retryMsg))
                        actionBtn.Text = "COBA LAGI"
                        isBusy = false
                        TweenService:Create(actionBtn, TweenInfo.new(0.25), {BackgroundColor3 = Color3.fromRGB(180, 40, 40)}):Play()
                    end
                end)
            end)
        end
    end)
end

-- Run
createGUI()
