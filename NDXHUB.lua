 -- =============================================
-- FULL KEY SYSTEM - KeyAuth (Dual Mode: License & User/Pass)
-- By: Fsatria.abimanyu
-- Taruh di: StarterPlayerScripts > LocalScript
-- =============================================

local HttpService   = game:GetService("HttpService")
local Players       = game:GetService("Players")
local TweenService  = game:GetService("TweenService")
local RbxAnalytics  = game:GetService("RbxAnalyticsService")

local player = Players.LocalPlayer

-- =============================================
-- KONFIGURASI - Edit bagian ini
local KEYAUTH = {
    name       = "Keysystem",
    ownerid    = "4hTZE2HMk7",
    secret     = "fc5a64f3a3e7d384dd016da03be39969f5b114764f6228bf06ae0f20edb3407a",
    version    = "1.0",
    getkey_url = "https://loot-link.com/s?HahjGSfI",
}
-- =============================================

local sessionid   = ""
local initialized = false
local folderName  = "NDX_KeySystem"
local fileName    = folderName .. "/saved_credentials.json"

-- Get Hardware ID
local function getHWID()
    local ok, cid = pcall(function() return RbxAnalytics:GetClientId() end)
    if ok and cid then return cid end
    return "Unknown_HWID_Fallback"
end
local hwid = getHWID()

-- Local Storage logic
local function saveCredentials(mode, user, pass, key)
    if writefile and isfolder and makefolder then
        if not isfolder(folderName) then makefolder(folderName) end
        local data = {Mode = mode, User = user, Pass = pass, Key = key}
        pcall(function() writefile(fileName, HttpService:JSONEncode(data)) end)
    end
end

local function loadCredentials()
    if readfile and isfile and isfile(fileName) then
        local ok, data = pcall(function() return HttpService:JSONDecode(readfile(fileName)) end)
        if ok and type(data) == "table" then return data end
    end
    return nil
end

-- =============================================
-- KEYAUTH API
-- =============================================
local function urlEncode(str)
    if not str then return "" end
    str = string.gsub(str, "([^%w %-%_%.%~])", function(c) return string.format("%%%02X", string.byte(c)) end)
    str = string.gsub(str, " ", "%%20")
    return str
end

local function kaInit()
    local ok, res = pcall(function()
        return game:HttpGet(
            "https://keyauth.win/api/1.2/?type=init"
            .. "&name="    .. urlEncode(KEYAUTH.name)
            .. "&ownerid=" .. KEYAUTH.ownerid
            .. "&secret="  .. KEYAUTH.secret
            .. "&ver="     .. KEYAUTH.version
        )
    end)
    if not ok or res == "KeyAuth_Invalid" then
        return false, "Aplikasi tidak ditemukan di KeyAuth atau terblokir."
    end
    local dataOk, data = pcall(function() return HttpService:JSONDecode(res) end)
    if not dataOk then return false, "Respon server cacat (Terblokir Cloudflare)." end
    if data.success then
        sessionid   = data.sessionid
        initialized = true
        return true, data
    end
    return false, data.message or "Gagal inisialisasi."
end

local function kaLicense(key)
    if not initialized then return false, "KeyAuth belum siap." end
    local ok, res = pcall(function()
        return game:HttpGet(
            "https://keyauth.win/api/1.2/?type=license"
            .. "&name="      .. urlEncode(KEYAUTH.name)
            .. "&ownerid="   .. KEYAUTH.ownerid
            .. "&secret="    .. KEYAUTH.secret
            .. "&ver="       .. KEYAUTH.version
            .. "&sessionid=" .. sessionid
            .. "&hwid="      .. urlEncode(hwid)
            .. "&key="       .. urlEncode(key)
        )
    end)
    if not ok then return false, "Gagal terhubung ke server." end
    local dataOk, data = pcall(function() return HttpService:JSONDecode(res) end)
    if not dataOk then return false, "Respon server cacat." end
    if data.success then return true, data.info end
    return false, data.message or "Key tidak valid."
end

local function kaLogin(username, pass)
    if not initialized then return false, "KeyAuth belum siap." end
    local ok, res = pcall(function()
        return game:HttpGet(
            "https://keyauth.win/api/1.2/?type=login"
            .. "&name="      .. urlEncode(KEYAUTH.name)
            .. "&ownerid="   .. KEYAUTH.ownerid
            .. "&secret="    .. KEYAUTH.secret
            .. "&ver="       .. KEYAUTH.version
            .. "&sessionid=" .. sessionid
            .. "&hwid="      .. urlEncode(hwid)
            .. "&username="  .. urlEncode(username)
            .. "&pass="      .. urlEncode(pass)
        )
    end)
    if not ok then return false, "Gagal terhubung ke server." end
    local dataOk, data = pcall(function() return HttpService:JSONDecode(res) end)
    if not dataOk then return false, "Respon server cacat." end
    if data.success then return true, data.info end
    return false, data.message or "Login gagal."
end

local function kaRegister(username, pass, key)
    if not initialized then return false, "KeyAuth belum siap." end
    local ok, res = pcall(function()
        return game:HttpGet(
            "https://keyauth.win/api/1.2/?type=register"
            .. "&name="      .. urlEncode(KEYAUTH.name)
            .. "&ownerid="   .. KEYAUTH.ownerid
            .. "&secret="    .. KEYAUTH.secret
            .. "&ver="       .. KEYAUTH.version
            .. "&sessionid=" .. sessionid
            .. "&hwid="      .. urlEncode(hwid)
            .. "&username="  .. urlEncode(username)
            .. "&pass="      .. urlEncode(pass)
            .. "&key="       .. urlEncode(key)
        )
    end)
    if not ok then return false, "Gagal terhubung ke server." end
    local dataOk, data = pcall(function() return HttpService:JSONDecode(res) end)
    if not dataOk then return false, "Respon server cacat." end
    if data.success then return true, data.info end
    return false, data.message or "Register gagal."
end

-- =============================================
-- MAIN SCRIPT
-- =============================================
local function loadMainScript(info)
    print("============================")
    print(" KeyAuth - Akses Diberikan!")
    print(" Username : " .. tostring(info and info.username or "N/A"))
    print(" IP       : " .. tostring(info and info.ip or "N/A"))
    print("============================")

    loadstring(game:HttpGet("https://raw.githubusercontent.com/NDXWorkspace/NDXPROJECT/main/NDXHUB.lua"))()
end

-- =============================================
-- GUI
-- =============================================
local function createGUI()
    local targetGui = game:GetService("CoreGui")
    local ok = pcall(function() local _ = targetGui.Name end)
    if not ok then targetGui = player:WaitForChild("PlayerGui") end
    
    local old = targetGui:FindFirstChild("KeySystem")
    if old then old:Destroy() end

    local screenGui = Instance.new("ScreenGui")
    screenGui.Name            = "KeySystem"
    screenGui.ResetOnSpawn    = false
    screenGui.ZIndexBehavior  = Enum.ZIndexBehavior.Sibling
    local placed = pcall(function() screenGui.Parent = targetGui end)
    if not placed then screenGui.Parent = player:WaitForChild("PlayerGui") end

    local bg = Instance.new("Frame", screenGui)
    bg.Size                   = UDim2.new(1, 0, 1, 0)
    bg.BackgroundColor3       = Color3.fromRGB(8, 12, 24)
    bg.BackgroundTransparency = 0.35
    bg.BorderSizePixel        = 0

    local win = Instance.new("Frame", screenGui)
    win.Size                  = UDim2.new(0, 430, 0, 310)
    win.Position              = UDim2.new(0.5, -215, 0.5, -155)
    win.BackgroundColor3      = Color3.fromRGB(15, 20, 36)
    win.BorderSizePixel       = 0
    win.Active                = true
    win.Draggable             = true -- Make the UI draggable!
    Instance.new("UICorner", win).CornerRadius = UDim.new(0, 10)
    local winStroke = Instance.new("UIStroke", win)
    winStroke.Color = Color3.fromRGB(0, 180, 220)
    winStroke.Thickness = 1

    local titleBar = Instance.new("Frame", win)
    titleBar.Size = UDim2.new(1, 0, 0, 42)
    titleBar.BackgroundColor3 = Color3.fromRGB(10, 15, 28)
    titleBar.BorderSizePixel = 0
    Instance.new("UICorner", titleBar).CornerRadius = UDim.new(0, 10)
    local tbFix = Instance.new("Frame", titleBar)
    tbFix.Size = UDim2.new(1, 0, 0.5, 0)
    tbFix.Position = UDim2.new(0, 0, 0.5, 0)
    tbFix.BackgroundColor3 = Color3.fromRGB(10, 15, 28)
    tbFix.BorderSizePixel = 0

    local titleLbl = Instance.new("TextLabel", titleBar)
    titleLbl.Text = "⬡ " .. KEYAUTH.name .. "  |  KEY SYSTEM"
    titleLbl.Size = UDim2.new(1, -16, 1, 0)
    titleLbl.Position = UDim2.new(0, 14, 0, 0)
    titleLbl.BackgroundTransparency = 1
    titleLbl.TextColor3 = Color3.fromRGB(0, 212, 255)
    titleLbl.TextSize = 12
    titleLbl.Font = Enum.Font.Code
    titleLbl.TextXAlignment = Enum.TextXAlignment.Left

    local body = Instance.new("Frame", win)
    body.Size = UDim2.new(1, -40, 1, -62)
    body.Position = UDim2.new(0, 20, 0, 54)
    body.BackgroundTransparency = 1

    local function createInput(placeholder)
        local frame = Instance.new("Frame", body)
        frame.Size = UDim2.new(1, 0, 0, 46)
        frame.BackgroundColor3 = Color3.fromRGB(8, 12, 24)
        Instance.new("UICorner", frame).CornerRadius = UDim.new(0, 8)
        local stroke = Instance.new("UIStroke", frame)
        stroke.Color = Color3.fromRGB(30, 45, 74)
        
        local box = Instance.new("TextBox", frame)
        box.Size = UDim2.new(1, -20, 1, 0)
        box.Position = UDim2.new(0, 10, 0, 0)
        box.BackgroundTransparency = 1
        box.PlaceholderText = placeholder
        box.Text = ""
        box.TextColor3 = Color3.fromRGB(0, 212, 255)
        box.PlaceholderColor3 = Color3.fromRGB(40, 55, 80)
        box.TextSize = 13
        box.Font = Enum.Font.Code
        box.ClearTextOnFocus = false
        box.TextXAlignment = Enum.TextXAlignment.Left
        return box, frame
    end

    local userBox, userFrame = createInput("Masukkan Username")
    local passBox, passFrame = createInput("Masukkan Password")
    passBox.Password = true
    local keyBox, keyFrame = createInput("Masukkan Access / License Key")

    -- Load saved data feature
    local currentMode = "login"
    local saved = loadCredentials()
    if saved then
        currentMode = saved.Mode or "login"
        userBox.Text = saved.User or ""
        passBox.Text = saved.Pass or ""
        keyBox.Text = saved.Key or ""
    end

    local actionBtn = Instance.new("TextButton", body)
    actionBtn.Size = UDim2.new(1, 0, 0, 46)
    actionBtn.BackgroundColor3 = Color3.fromRGB(30, 45, 74)
    actionBtn.TextColor3 = Color3.fromRGB(8, 12, 24)
    actionBtn.TextSize = 15
    actionBtn.Font = Enum.Font.GothamBold
    actionBtn.BorderSizePixel = 0
    Instance.new("UICorner", actionBtn).CornerRadius = UDim.new(0, 8)

    local statusLbl = Instance.new("TextLabel", body)
    statusLbl.Size = UDim2.new(1, 0, 0, 20)
    statusLbl.BackgroundTransparency = 1
    statusLbl.TextColor3 = Color3.fromRGB(0, 212, 255)
    statusLbl.TextSize = 12
    statusLbl.Font = Enum.Font.Code
    statusLbl.TextXAlignment = Enum.TextXAlignment.Left

    local switchModeBtn = Instance.new("TextButton", body)
    switchModeBtn.Size = UDim2.new(1, 0, 0, 24)
    switchModeBtn.BackgroundTransparency = 1
    switchModeBtn.TextColor3 = Color3.fromRGB(70, 95, 140)
    switchModeBtn.TextSize = 12
    switchModeBtn.Font = Enum.Font.Code

    local subModeBtn = Instance.new("TextButton", body)
    subModeBtn.Size = UDim2.new(1, 0, 0, 24)
    subModeBtn.BackgroundTransparency = 1
    subModeBtn.TextColor3 = Color3.fromRGB(70, 95, 140)
    subModeBtn.TextSize = 12
    subModeBtn.Font = Enum.Font.Code

    local listLayout = Instance.new("UIListLayout", body)
    listLayout.SortOrder = Enum.SortOrder.LayoutOrder
    listLayout.Padding = UDim.new(0, 8)
    listLayout.HorizontalAlignment = Enum.HorizontalAlignment.Center

    userFrame.LayoutOrder = 1
    passFrame.LayoutOrder = 2
    keyFrame.LayoutOrder = 3
    actionBtn.LayoutOrder = 4
    statusLbl.LayoutOrder = 5
    switchModeBtn.LayoutOrder = 6
    subModeBtn.LayoutOrder = 7

    local function updateUIState()
        userFrame.Visible = (currentMode == "login" or currentMode == "register")
        passFrame.Visible = (currentMode == "login" or currentMode == "register")
        keyFrame.Visible = (currentMode == "license" or currentMode == "register")

        if currentMode == "license" then
            actionBtn.Text = "VERIFY KEY"
            switchModeBtn.Text = "[ Punya Akun? Login / Subscribe ]"
            subModeBtn.Visible = true
            subModeBtn.Text = "[ Dapatkan Key ]"
        elseif currentMode == "login" then
            actionBtn.Text = "LOGIN"
            switchModeBtn.Text = "[ Masuk dengan License Key Biasa ]"
            subModeBtn.Visible = true
            subModeBtn.Text = "[ Belum punya akun? Daftar ]"
        elseif currentMode == "register" then
            actionBtn.Text = "REGISTER ACCOUNT"
            switchModeBtn.Text = "[ Kembali ke Login ]"
            subModeBtn.Visible = false
        end

        -- Auto resize the window based on ListLayout content size
        task.delay(0.05, function()
            local targetHeight = listLayout.AbsoluteContentSize.Y + 90
            TweenService:Create(win, TweenInfo.new(0.35, Enum.EasingStyle.Exponential, Enum.EasingDirection.Out), {Size = UDim2.new(0, 430, 0, targetHeight)}):Play()
        end)
    end

    switchModeBtn.MouseButton1Click:Connect(function()
        if currentMode == "license" then currentMode = "login"
        elseif currentMode == "login" then currentMode = "license"
        elseif currentMode == "register" then currentMode = "login" end
        updateUIState()
    end)

    subModeBtn.MouseButton1Click:Connect(function()
        if currentMode == "license" then
            statusLbl.Text = "◌  Salin link: " .. KEYAUTH.getkey_url
            pcall(function() setclipboard(KEYAUTH.getkey_url) end)
        elseif currentMode == "login" then
            currentMode = "register"
            updateUIState()
        end
    end)

    local function setStatus(msg, color)
        statusLbl.Text       = msg
        statusLbl.TextColor3 = color or Color3.fromRGB(255, 100, 100)
    end

    local function setBtnReady()
        actionBtn.BackgroundColor3 = Color3.fromRGB(0, 180, 220)
        actionBtn.Active           = true
        if currentMode == "license" then actionBtn.Text = "VERIFY KEY"
        elseif currentMode == "login" then actionBtn.Text = "LOGIN"
        elseif currentMode == "register" then actionBtn.Text = "REGISTER ACCOUNT" end
    end

    local function setBtnLoading()
        actionBtn.Text             = "Menunggu Server..."
        actionBtn.BackgroundColor3 = Color3.fromRGB(30, 45, 74)
        actionBtn.Active           = false
    end

    actionBtn.MouseEnter:Connect(function()
        if actionBtn.Active then TweenService:Create(actionBtn, TweenInfo.new(0.15), {BackgroundColor3 = Color3.fromRGB(50, 220, 255)}):Play() end
    end)
    actionBtn.MouseLeave:Connect(function()
        if actionBtn.Active then TweenService:Create(actionBtn, TweenInfo.new(0.15), {BackgroundColor3 = Color3.fromRGB(0, 180, 220)}):Play() end
    end)

    actionBtn.MouseButton1Click:Connect(function()
        if not actionBtn.Active then return end
        
        local user = userBox.Text
        local pass = passBox.Text
        local key = keyBox.Text

        if currentMode == "license" and key == "" then return setStatus("✕ Key tidak boleh kosong.", nil) end
        if (currentMode == "login" or currentMode == "register") and (user == "" or pass == "") then return setStatus("✕ Username & Password tidak kosong.", nil) end
        if currentMode == "register" and key == "" then return setStatus("✕ Key dibutuhkan untuk pendaftaran.", nil) end

        setBtnLoading()
        setStatus("◌  Menghubungi KeyAuth...", Color3.fromRGB(0, 212, 255))
        
        -- Serialize & Save configs locally to prevent re-typing
        saveCredentials(currentMode, user, pass, key)

        task.spawn(function()
            local ok, info = false, nil
            if currentMode == "license" then
                ok, info = kaLicense(key)
            elseif currentMode == "login" then
                ok, info = kaLogin(user, pass)
            elseif currentMode == "register" then
                ok, info = kaRegister(user, pass, key)
            end

            if ok then
                setStatus("✓  Autentikasi Valid! Memuat script...", Color3.fromRGB(74, 222, 128))
                task.wait(0.9)
                screenGui:Destroy()
                loadMainScript(info)
            else
                setBtnReady()
                setStatus("✕  " .. tostring(info), Color3.fromRGB(255, 100, 100))
            end
        end)
    end)

    win.BackgroundTransparency = 1
    win.Position = UDim2.new(0.5, -215, 0.6, -153)
    TweenService:Create(win, TweenInfo.new(0.35, Enum.EasingStyle.Back, Enum.EasingDirection.Out), {
        Position             = UDim2.new(0.5, -215, 0.5, -153),
        BackgroundTransparency = 0,
    }):Play()

    updateUIState()
    setStatus("◌  Menginisialisasi...", Color3.fromRGB(0, 212, 255))
    task.spawn(function()
        local initOk, result = kaInit()
        if initOk then
            setStatus("✓  Terhubung! Silakan pilih mode login.", Color3.fromRGB(74, 222, 128))
            setBtnReady()
        else
            setStatus("✕  " .. tostring(result), Color3.fromRGB(255, 100, 100))
            actionBtn.Text = "GAGAL TERHUBUNG"
        end
    end)
end

createGUI()
