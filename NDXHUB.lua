-- =============================================
-- NDX KEY SYSTEM v2 - KeyAuth
-- Modes: License | Login | Register
-- Universal, Bug-Fixed, Optimized
-- =============================================

local HttpService      = game:GetService("HttpService")
local Players          = game:GetService("Players")
local TweenService     = game:GetService("TweenService")
local UserInputService = game:GetService("UserInputService")

local player = Players.LocalPlayer

-- =============================================
-- CONFIG
-- =============================================
local KEYAUTH = {
    name       = "Keysystem",
    ownerid    = "4hTZE2HMk7",
    secret     = "fc5a64f3a3e7d384dd016da03be39969f5b114764f6228bf06ae0f20edb3407a",
    version    = "1.0",
    getkey_url = "https://loot-link.com/s?HahjGSfI",
}
local MAIN_SCRIPT_URL = "https://raw.githubusercontent.com/NDXWorkspace/NDXPROJECT/refs/heads/main/keysystem.lua"

-- Discord Webhook untuk notifikasi pendaftaran ke Owner
-- WAJIB DIISI oleh Owner agar sistem register berfungsi!
local WEBHOOK_URL = "https://discord.com/api/webhooks/1486270801777791078/vp2DzMSf6p_-8x_dHWPhfGyP8nr6jthlrOIc7XAkjholwRVtt8WPXPaqVLdbGXyJnnMX" -- << Isi dengan URL Discord Webhook milikmu

-- =============================================
-- HWID
-- =============================================
local HWID = (function()
    if gethwid then
        local ok, id = pcall(gethwid)
        if ok and id then return id end
    end
    pcall(function()
        local svc = game:GetService("RbxAnalyticsService")
        local ok, id = pcall(function() return svc:GetClientId() end)
        if ok and id then HWID = id end
    end)
    return HWID or "HWID_FALLBACK"
end)()

-- =============================================
-- LOCAL STORAGE  +  SESSION PERSISTENCE
-- =============================================
local FOLDER      = "NDX_KeySystem"
local CRED_FILE   = FOLDER .. "/saved_credentials.json"
local SESSION_FILE = FOLDER .. "/session.json"

-- Simple XOR-obfuscation for stored password (not encryption, just obfuscation)
local XOR_KEY = "NDX2025"
local function xorStr(s)
    local out = {}
    for i = 1, #s do
        local k = XOR_KEY:byte(((i - 1) % #XOR_KEY) + 1)
        out[i] = string.char(bit32.bxor(s:byte(i), k))
    end
    return table.concat(out)
end
local function toHex(s)   return (s:gsub(".", function(c) return ("%02x"):format(c:byte()) end)) end
local function fromHex(h) return (h:gsub("%x%x", function(x) return string.char(tonumber(x, 16)) end)) end
local function encodePass(p) return toHex(xorStr(p)) end
local function decodePass(h) return xorStr(fromHex(h)) end

-- Parse KeyAuth expiry string "DD/MM/YYYY HH:MM:SS" → Unix timestamp (UTC approx)
local function parseExpiry(s)
    if not s or s == "Lifetime" or s == "" then return math.huge end
    -- KeyAuth returns Unix timestamp or a date string, handle both
    local n = tonumber(s)
    if n then return n end
    -- Try "MM/DD/YYYY" or "DD/MM/YYYY HH:MM:SS"
    local mo, d, y, hh, mm, ss = s:match("(%d+)/(%d+)/(%d+) (%d+):(%d+):(%d+)")
    if y then
        -- Approximate: ignore timezone, build a rough unix timestamp
        y, mo, d = tonumber(y), tonumber(mo), tonumber(d)
        hh, mm, ss = tonumber(hh), tonumber(mm), tonumber(ss)
        -- Days from epoch (1970) approximate
        local days = (y - 1970) * 365 + math.floor((y - 1969) / 4) + (mo - 1) * 30 + d
        return days * 86400 + hh * 3600 + mm * 60 + ss
    end
    return 0 -- unknown → treat as expired
end

-- File helpers
local function fileExists(path)
    if not (readfile and isfile) then return false end
    local ok, r = pcall(isfile, path)
    return ok and r
end

local function writeJSON(path, tbl)
    if not (writefile and makefolder and isfolder) then return false end
    pcall(function()
        if not isfolder(FOLDER) then makefolder(FOLDER) end
        writefile(path, HttpService:JSONEncode(tbl))
    end)
    return true
end

local function readJSON(path)
    if not fileExists(path) then return nil end
    local ok, data = pcall(function() return HttpService:JSONDecode(readfile(path)) end)
    return (ok and type(data) == "table") and data or nil
end

local function clearSession()
    pcall(function() if isfile and isfile(SESSION_FILE) then delfile(SESSION_FILE) end end)
end

-- Save a verified session to disk
local function saveSession(mode, user, passRaw, key, expiresAt)
    writeJSON(SESSION_FILE, {
        Mode      = mode,
        User      = user or "",
        PassEnc   = passRaw and encodePass(passRaw) or "",
        Key       = key or "",
        ExpiresAt = expiresAt or 0,
        SavedAt   = os.time(),
    })
end

-- Load session only if it's still valid
local function loadSession()
    local s = readJSON(SESSION_FILE)
    if not s then return nil end
    local expiresAt = tonumber(s.ExpiresAt) or 0
    if expiresAt ~= math.huge and os.time() >= expiresAt then
        clearSession()
        return nil
    end
    -- Decode password back
    s.PassDecoded = (s.PassEnc and s.PassEnc ~= "") and decodePass(s.PassEnc) or ""
    return s
end

-- Save credentials for GUI prefill
local function saveCredentials(mode, user, key)
    writeJSON(CRED_FILE, { Mode = mode, User = user, Key = key })
end

local function loadCredentials()
    return readJSON(CRED_FILE)
end

-- =============================================
-- PENDING REGISTRATION
-- =============================================
local PENDING_FILE = FOLDER .. "/pending_register.json"

local function savePending(user, key, requestedAt)
    writeJSON(PENDING_FILE, {
        User        = user or "",
        Key         = key  or "",
        RequestedAt = requestedAt or os.time(),
    })
end

local function loadPending()
    return readJSON(PENDING_FILE)
end

local function clearPending()
    pcall(function()
        if isfile and isfile(PENDING_FILE) then delfile(PENDING_FILE) end
    end)
end

-- Send Discord Webhook notification to Owner
local function sendRegisterWebhook(user, key, reqTime)
    -- Exploit HTTP request functions (try all common names)
    local httpFunc = request or http_request or (syn and syn.request) or (http and http.request)
    if not httpFunc then return false, "Tidak ada fungsi HTTP request di eksploit ini." end
    if WEBHOOK_URL == "" then return false, "WEBHOOK_URL belum diisi oleh Owner." end

    local timeStr = tostring(reqTime or os.time())
    local payload = HttpService:JSONEncode({
        username  = "NDX KeySystem",
        avatar_url = "https://i.imgur.com/4M34hi2.png",
        embeds    = {{
            title = "📋 Permintaan Pendaftaran Baru",
            color = 0x00ADEF,
            fields = {
                { name = "👤 Username",   value = "`" .. user .. "`",   inline = true  },
                { name = "🔑 Key Diajukan", value = "`" .. key  .. "`", inline = true  },
                { name = "🖥️ HWID",        value = "`" .. HWID  .. "`", inline = false },
                { name = "⏰ Waktu Request", value = "`" .. timeStr .. "` (Unix)", inline = false },
            },
            footer = { text = "NDX Key System — Buat akun di KeyAuth lalu hubungi user." },
        }},
    })

    local ok, res = pcall(function()
        return httpFunc({
            Url     = WEBHOOK_URL,
            Method  = "POST",
            Headers = { ["Content-Type"] = "application/json" },
            Body    = payload,
        })
    end)

    if not ok then return false, "Gagal mengirim webhook: " .. tostring(res) end
    -- Discord returns 204 No Content on success
    local statusCode = (type(res) == "table") and (res.StatusCode or res.status_code or 0) or 0
    if statusCode == 204 or statusCode == 200 then
        return true
    end
    return false, "Webhook error (HTTP " .. tostring(statusCode) .. ")."
end

-- =============================================
-- KEYAUTH API
-- Fixed: ordered params, correct sessionid capture
-- =============================================
local sessionid   = ""
local initialized = false

local function urlEncode(s)
    s = tostring(s or "")
    return (s:gsub("([^%w%-%.%_%~])", function(c) return ("%%%02X"):format(c:byte()) end))
end

-- Build URL with ORDERED params to keep query string consistent
local function buildURL(ordered)
    local parts = {}
    for _, kv in ipairs(ordered) do
        parts[#parts + 1] = urlEncode(kv[1]) .. "=" .. urlEncode(kv[2])
    end
    return "https://keyauth.win/api/1.2/?" .. table.concat(parts, "&")
end

local function apiCall(ordered)
    local ok, res = pcall(function() return game:HttpGet(buildURL(ordered)) end)
    if not ok then return false, "Gagal terhubung ke server." end
    if type(res) ~= "string" or res == "" then return false, "Server tidak merespon." end
    if res:find("KeyAuth_Invalid", 1, true) then return false, "Aplikasi tidak ditemukan di KeyAuth." end

    local jok, data = pcall(function() return HttpService:JSONDecode(res) end)
    if not jok or type(data) ~= "table" then return false, "Respon server tidak valid (mungkin diblokir Cloudflare)." end

    if data.success then
        return true, data
    else
        return false, data.message or "Kesalahan tidak diketahui."
    end
end

local function kaInit()
    local ok, data = apiCall({
        { "type",    "init"          },
        { "name",    KEYAUTH.name    },
        { "ownerid", KEYAUTH.ownerid },
        { "secret",  KEYAUTH.secret  },
        { "ver",     KEYAUTH.version },
    })
    if ok and data.sessionid then
        sessionid   = data.sessionid
        initialized = true
        return true
    end
    return false, (type(data) == "string" and data) or "Gagal inisialisasi."
end

local function kaLicense(key)
    if not initialized then return false, "KeyAuth belum siap." end
    return apiCall({
        { "type",      "license"       },
        { "name",      KEYAUTH.name    },
        { "ownerid",   KEYAUTH.ownerid },
        { "secret",    KEYAUTH.secret  },
        { "ver",       KEYAUTH.version },
        { "sessionid", sessionid       },
        { "hwid",      HWID            },
        { "key",       key             },
    })
end

local function kaLogin(username, pass)
    if not initialized then return false, "KeyAuth belum siap." end
    return apiCall({
        { "type",      "login"         },
        { "name",      KEYAUTH.name    },
        { "ownerid",   KEYAUTH.ownerid },
        { "secret",    KEYAUTH.secret  },
        { "ver",       KEYAUTH.version },
        { "sessionid", sessionid       },
        { "hwid",      HWID            },
        { "username",  username        },
        { "pass",      pass            },
    })
end

local function kaRegister(username, pass, key)
    if not initialized then return false, "KeyAuth belum siap." end
    return apiCall({
        { "type",      "register"      },
        { "name",      KEYAUTH.name    },
        { "ownerid",   KEYAUTH.ownerid },
        { "secret",    KEYAUTH.secret  },
        { "ver",       KEYAUTH.version },
        { "sessionid", sessionid       },
        { "hwid",      HWID            },
        { "username",  username        },
        { "pass",      pass            },
        { "key",       key             },
    })
end

-- =============================================
-- LOAD MAIN SCRIPT
-- =============================================
local function loadMainScript(data)
    print("============================")
    print(" NDX KeySystem — Akses OK!")
    if type(data) == "table" and type(data.info) == "table" then
        local info = data.info
        print(" User    : " .. tostring(info.username or "N/A"))
        print(" IP      : " .. tostring(info.ip or "N/A"))
        print(" Expires : " .. tostring(info.expiry or "N/A"))
    end
    print("============================")
    task.spawn(function()
        local ok, err = pcall(function()
            loadstring(game:HttpGet(MAIN_SCRIPT_URL))()
        end)
        if not ok then warn("[NDX KeySystem] Error loading main: " .. tostring(err)) end
    end)
end

-- =============================================
-- GUI
-- =============================================
local function createGUI()
    -- Find safe GUI parent
    local guiParent
    pcall(function() guiParent = gethui and gethui() or game:GetService("CoreGui") end)
    if not guiParent then guiParent = player:WaitForChild("PlayerGui") end

    -- Remove any existing instance
    pcall(function()
        local old = guiParent:FindFirstChild("NDX_KeySystem_GUI")
        if old then old:Destroy() end
    end)

    local screenGui = Instance.new("ScreenGui")
    screenGui.Name           = "NDX_KeySystem_GUI"
    screenGui.ResetOnSpawn   = false
    screenGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
    screenGui.DisplayOrder   = 999
    if not pcall(function() screenGui.Parent = guiParent end) then
        screenGui.Parent = player:WaitForChild("PlayerGui")
    end

    -- Dark overlay
    local dim = Instance.new("Frame", screenGui)
    dim.Size                   = UDim2.new(1, 0, 1, 0)
    dim.BackgroundColor3       = Color3.fromRGB(4, 7, 16)
    dim.BackgroundTransparency = 0.45
    dim.BorderSizePixel        = 0
    dim.ZIndex                 = 1

    -- Window
    local win = Instance.new("Frame", screenGui)
    win.Name                   = "Window"
    win.Size                   = UDim2.new(0, 420, 0, 60)
    win.Position               = UDim2.new(0.5, -210, 0.55, -30)
    win.BackgroundColor3       = Color3.fromRGB(12, 17, 30)
    win.BackgroundTransparency = 1
    win.BorderSizePixel        = 0
    win.ClipsDescendants       = true
    win.ZIndex                 = 2
    Instance.new("UICorner", win).CornerRadius = UDim.new(0, 12)
    local winStroke = Instance.new("UIStroke", win)
    winStroke.Color     = Color3.fromRGB(0, 165, 215)
    winStroke.Thickness = 1.2

    -- Title bar (drag handle)
    local titleBar = Instance.new("Frame", win)
    titleBar.Name             = "TitleBar"
    titleBar.Size             = UDim2.new(1, 0, 0, 44)
    titleBar.BackgroundColor3 = Color3.fromRGB(8, 12, 24)
    titleBar.BorderSizePixel  = 0
    titleBar.ZIndex           = 3
    Instance.new("UICorner", titleBar).CornerRadius = UDim.new(0, 12)
    -- Fix bottom rounding of title bar
    local tbFix = Instance.new("Frame", titleBar)
    tbFix.Size             = UDim2.new(1, 0, 0.5, 0)
    tbFix.Position         = UDim2.new(0, 0, 0.5, 0)
    tbFix.BackgroundColor3 = Color3.fromRGB(8, 12, 24)
    tbFix.BorderSizePixel  = 0
    tbFix.ZIndex           = 3

    -- Title icon + text
    local titleLbl = Instance.new("TextLabel", titleBar)
    titleLbl.Text               = "⬡ " .. KEYAUTH.name:upper() .. "  —  KEY SYSTEM"
    titleLbl.Size               = UDim2.new(1, -14, 1, 0)
    titleLbl.Position           = UDim2.new(0, 14, 0, 0)
    titleLbl.BackgroundTransparency = 1
    titleLbl.TextColor3         = Color3.fromRGB(0, 205, 255)
    titleLbl.TextSize           = 12
    titleLbl.Font               = Enum.Font.Code
    titleLbl.TextXAlignment     = Enum.TextXAlignment.Left
    titleLbl.ZIndex             = 4

    -- Drag logic (connected to titleBar only so TextBoxes aren't disrupted)
    do
        local dragging, dragInput, dragStart, startPos
        titleBar.InputBegan:Connect(function(input)
            if input.UserInputType == Enum.UserInputType.MouseButton1
            or input.UserInputType == Enum.UserInputType.Touch then
                dragging  = true
                dragStart = input.Position
                startPos  = win.Position
                input.Changed:Connect(function()
                    if input.UserInputState == Enum.UserInputState.End then dragging = false end
                end)
            end
        end)
        titleBar.InputChanged:Connect(function(input)
            if input.UserInputType == Enum.UserInputType.MouseMovement
            or input.UserInputType == Enum.UserInputType.Touch then
                dragInput = input
            end
        end)
        UserInputService.InputChanged:Connect(function(input)
            if input == dragInput and dragging then
                local d = input.Position - dragStart
                win.Position = UDim2.new(
                    startPos.X.Scale, startPos.X.Offset + d.X,
                    startPos.Y.Scale, startPos.Y.Offset + d.Y
                )
            end
        end)
    end

    -- Body frame (content area below title bar)
    local body = Instance.new("Frame", win)
    body.Name                  = "Body"
    body.Size                  = UDim2.new(1, -40, 0, 0) -- height driven by layout
    body.Position              = UDim2.new(0, 20, 0, 52)
    body.BackgroundTransparency = 1
    body.ZIndex                = 3

    local listLayout = Instance.new("UIListLayout", body)
    listLayout.SortOrder           = Enum.SortOrder.LayoutOrder
    listLayout.Padding             = UDim.new(0, 8)
    listLayout.HorizontalAlignment = Enum.HorizontalAlignment.Center

    -- Auto-size body + window whenever content changes
    local function syncWindowSize()
        task.defer(function()
            local contentH = listLayout.AbsoluteContentSize.Y
            body.Size = UDim2.new(1, -40, 0, contentH)
            local totalH = 44 + 8 + contentH + 16
            TweenService:Create(win, TweenInfo.new(0.3, Enum.EasingStyle.Exponential, Enum.EasingDirection.Out), {
                Size = UDim2.new(0, 420, 0, totalH)
            }):Play()
        end)
    end
    listLayout:GetPropertyChangedSignal("AbsoluteContentSize"):Connect(syncWindowSize)

    -- =============================================
    -- INPUT FACTORY
    -- Proper password masking: real TextBox hidden
    -- behind a display label showing bullets.
    -- =============================================
    local function createInput(labelText, isPassword)
        local frame = Instance.new("Frame", body)
        frame.Size             = UDim2.new(1, 0, 0, 44)
        frame.BackgroundColor3 = Color3.fromRGB(6, 10, 20)
        frame.BorderSizePixel  = 0
        frame.ZIndex           = 4
        Instance.new("UICorner", frame).CornerRadius = UDim.new(0, 8)
        local stroke = Instance.new("UIStroke", frame)
        stroke.Color     = Color3.fromRGB(22, 36, 65)
        stroke.Thickness = 1

        -- Placeholder / display label (sits on top, purely visual)
        local displayLbl = Instance.new("TextLabel", frame)
        displayLbl.Size                  = UDim2.new(1, -20, 1, 0)
        displayLbl.Position              = UDim2.new(0, 10, 0, 0)
        displayLbl.BackgroundTransparency = 1
        displayLbl.Text                  = labelText       -- placeholder
        displayLbl.TextColor3            = Color3.fromRGB(38, 55, 85)
        displayLbl.TextSize              = 13
        displayLbl.Font                  = Enum.Font.Code
        displayLbl.TextXAlignment        = Enum.TextXAlignment.Left
        displayLbl.ZIndex                = 6
        displayLbl.TextTruncate          = Enum.TextTruncate.AtEnd
        -- won't intercept mouse (no InputBegan on Label for TextBox below)

        -- The real TextBox sits underneath the label; it captures input
        local box = Instance.new("TextBox", frame)
        box.Size                  = UDim2.new(1, -20, 1, 0)
        box.Position              = UDim2.new(0, 10, 0, 0)
        box.BackgroundTransparency = 1
        box.Text                  = ""
        box.TextColor3            = Color3.fromRGB(0, 0, 0)   -- invisible; display driven by label
        box.TextTransparency      = 1
        box.PlaceholderText       = ""                         -- placeholder handled by displayLbl
        box.TextSize              = 13
        box.Font                  = Enum.Font.Code
        box.ClearTextOnFocus      = false
        box.TextXAlignment        = Enum.TextXAlignment.Left
        box.ZIndex                = 5
        box.MultiLine             = false

        -- Focus stroke glow
        box.Focused:Connect(function()
            TweenService:Create(stroke, TweenInfo.new(0.18), {Color = Color3.fromRGB(0, 165, 215)}):Play()
        end)
        box.FocusLost:Connect(function()
            TweenService:Create(stroke, TweenInfo.new(0.18), {Color = Color3.fromRGB(22, 36, 65)}):Play()
        end)

        -- Sync display label from box.Text
        local function syncDisplay()
            local t = box.Text
            if t == "" then
                displayLbl.Text       = labelText
                displayLbl.TextColor3 = Color3.fromRGB(38, 55, 85)
            else
                displayLbl.Text       = isPassword and string.rep("•", #t) or t
                displayLbl.TextColor3 = Color3.fromRGB(0, 205, 255)
            end
        end

        box:GetPropertyChangedSignal("Text"):Connect(syncDisplay)
        syncDisplay()

        -- Helper: get raw value
        local function getValue() return box.Text end

        return frame, box, getValue
    end

    -- Create all inputs
    local userFrame, userBox, getUserText = createInput("Username")
    local passFrame, passBox, getPassText = createInput("Password", true)
    local keyFrame,  keyBox,  getKeyText  = createInput("Access / License Key")

    -- Restore saved username & key (NOT password)
    local currentMode = "login"
    local saved = loadCredentials()
    if saved then
        currentMode  = saved.Mode or "login"
        userBox.Text = saved.User or ""
        keyBox.Text  = saved.Key  or ""
    end

    -- =============================================
    -- ACTION BUTTON
    -- =============================================
    local actionBtn = Instance.new("TextButton", body)
    actionBtn.Size             = UDim2.new(1, 0, 0, 44)
    actionBtn.BackgroundColor3 = Color3.fromRGB(22, 34, 65)
    actionBtn.TextColor3       = Color3.fromRGB(210, 228, 255)
    actionBtn.TextSize         = 14
    actionBtn.Font             = Enum.Font.GothamBold
    actionBtn.BorderSizePixel  = 0
    actionBtn.AutoButtonColor  = false
    actionBtn.Text             = "..."
    actionBtn.ZIndex           = 4
    Instance.new("UICorner", actionBtn).CornerRadius = UDim.new(0, 8)

    -- Status label
    local statusLbl = Instance.new("TextLabel", body)
    statusLbl.Size               = UDim2.new(1, 0, 0, 18)
    statusLbl.BackgroundTransparency = 1
    statusLbl.Text               = ""
    statusLbl.TextColor3         = Color3.fromRGB(0, 205, 255)
    statusLbl.TextSize           = 11
    statusLbl.Font               = Enum.Font.Code
    statusLbl.TextXAlignment     = Enum.TextXAlignment.Left
    statusLbl.TextWrapped        = true
    statusLbl.ZIndex             = 4

    -- Switch mode link
    local switchBtn = Instance.new("TextButton", body)
    switchBtn.Size                  = UDim2.new(1, 0, 0, 20)
    switchBtn.BackgroundTransparency = 1
    switchBtn.TextColor3            = Color3.fromRGB(60, 88, 138)
    switchBtn.TextSize              = 12
    switchBtn.Font                  = Enum.Font.Code
    switchBtn.BorderSizePixel       = 0
    switchBtn.AutoButtonColor       = false
    switchBtn.ZIndex                = 4

    -- Sub action link
    local subBtn = Instance.new("TextButton", body)
    subBtn.Size                  = UDim2.new(1, 0, 0, 20)
    subBtn.BackgroundTransparency = 1
    subBtn.TextColor3            = Color3.fromRGB(60, 88, 138)
    subBtn.TextSize              = 12
    subBtn.Font                  = Enum.Font.Code
    subBtn.BorderSizePixel       = 0
    subBtn.AutoButtonColor       = false
    subBtn.ZIndex                = 4

    -- Layout ordering
    userFrame.LayoutOrder  = 1
    passFrame.LayoutOrder  = 2
    keyFrame.LayoutOrder   = 3
    actionBtn.LayoutOrder  = 4
    statusLbl.LayoutOrder  = 5
    switchBtn.LayoutOrder  = 6
    subBtn.LayoutOrder     = 7

    -- =============================================
    -- STATE
    -- =============================================
    local isBusy     = false
    local isReady    = false

    local C_READY   = Color3.fromRGB(0, 162, 215)
    local C_BUSY    = Color3.fromRGB(18, 28, 52)
    local C_ERROR   = Color3.fromRGB(175, 38, 38)
    local C_SUCCESS = Color3.fromRGB(74, 222, 128)

    local function setStatus(msg, color)
        statusLbl.Text       = msg or ""
        statusLbl.TextColor3 = color or Color3.fromRGB(255, 80, 80)
    end

    local function applyBtnLabel()
        if currentMode == "license"  then actionBtn.Text = "VERIFY KEY"
        elseif currentMode == "login"    then actionBtn.Text = "LOGIN"
        elseif currentMode == "register" then actionBtn.Text = "DAFTAR" end
    end

    local function setReady()
        isBusy  = false
        isReady = true
        TweenService:Create(actionBtn, TweenInfo.new(0.25), {BackgroundColor3 = C_READY}):Play()
        applyBtnLabel()
    end

    local function setBusy(label)
        isBusy  = true
        TweenService:Create(actionBtn, TweenInfo.new(0.2), {BackgroundColor3 = C_BUSY}):Play()
        actionBtn.Text = label or "Memproses..."
    end

    -- Hover effect
    actionBtn.MouseEnter:Connect(function()
        if not isBusy then
            TweenService:Create(actionBtn, TweenInfo.new(0.15), {BackgroundColor3 = Color3.fromRGB(38, 200, 248)}):Play()
        end
    end)
    actionBtn.MouseLeave:Connect(function()
        if not isBusy then
            TweenService:Create(actionBtn, TweenInfo.new(0.15), {BackgroundColor3 = C_READY}):Play()
        end
    end)

    -- Hover on link buttons
    local function linkHover(btn)
        btn.MouseEnter:Connect(function()
            TweenService:Create(btn, TweenInfo.new(0.1), {TextColor3 = Color3.fromRGB(0, 165, 215)}):Play()
        end)
        btn.MouseLeave:Connect(function()
            TweenService:Create(btn, TweenInfo.new(0.1), {TextColor3 = Color3.fromRGB(60, 88, 138)}):Play()
        end)
    end
    linkHover(switchBtn)
    linkHover(subBtn)

    -- =============================================
    -- UI STATE UPDATE
    -- =============================================
    local function updateUIState()
        local isLP = (currentMode == "login" or currentMode == "register")
        userFrame.Visible = isLP
        passFrame.Visible = isLP
        keyFrame.Visible  = (currentMode == "license" or currentMode == "register")

        if currentMode == "license" then
            switchBtn.Text = "[ Login / Akun ]"
            subBtn.Text    = "[ Dapatkan Key → ]"
            subBtn.Visible = true
        elseif currentMode == "login" then
            switchBtn.Text = "[ Gunakan License Key ]"
            subBtn.Text    = "[ Belum punya akun? Daftar ]"
            subBtn.Visible = true
        elseif currentMode == "register" then
            switchBtn.Text = "[ Kembali ke Login ]"
            subBtn.Visible = false
        end

        if isReady then applyBtnLabel() end
        -- syncWindowSize is triggered automatically by listLayout size change
    end

    -- =============================================
    -- BUTTON ACTIONS
    -- =============================================
    switchBtn.MouseButton1Click:Connect(function()
        if isBusy then return end
        if currentMode == "license"  then currentMode = "login"
        elseif currentMode == "login"    then currentMode = "license"
        elseif currentMode == "register" then currentMode = "login" end
        setStatus("", Color3.fromRGB(0, 205, 255))
        updateUIState()
    end)

    subBtn.MouseButton1Click:Connect(function()
        if isBusy then return end
        if currentMode == "license" then
            pcall(function() setclipboard(KEYAUTH.getkey_url) end)
            setStatus("◌  Link disalin ke clipboard!", Color3.fromRGB(0, 205, 255))
        elseif currentMode == "login" then
            currentMode = "register"
            setStatus("", Color3.fromRGB(0, 205, 255))
            updateUIState()
        end
    end)

    -- =============================================
    -- INIT & RETRY (single handler, no duplicates)
    -- =============================================
    local function doInit(onDone)
        setBusy("Menghubungi KeyAuth...")
        setStatus("◌  Menginisialisasi...", Color3.fromRGB(0, 205, 255))
        task.spawn(function()
            local ok, msg = kaInit()
            if ok then
                setStatus("✓  Terhubung. Silakan pilih mode.", C_SUCCESS)
                setReady()
                if onDone then onDone() end
            else
                setStatus("✕  " .. tostring(msg))
                isBusy = false
                isReady = false
                TweenService:Create(actionBtn, TweenInfo.new(0.2), {BackgroundColor3 = C_ERROR}):Play()
                actionBtn.Text = "COBA LAGI"
            end
        end)
    end

    -- Single, permanent action handler — routes via state
    local actionMode = "init" -- "init" | "auth"
    actionBtn.MouseButton1Click:Connect(function()
        if isBusy then return end

        if actionMode == "init" then
            -- Retry init
            doInit(function() actionMode = "auth" end)
            return
        end

        -- Auth mode
        if not initialized then
            setStatus("✕  KeyAuth belum siap.")
            return
        end

        local user = getUserText():match("^%s*(.-)%s*$") or ""
        local pass = getPassText()                         -- don't trim password
        local key  = getKeyText():match("^%s*(.-)%s*$") or ""

        if currentMode == "license" and key == "" then
            return setStatus("✕  Key tidak boleh kosong.")
        end
        if (currentMode == "login" or currentMode == "register") then
            if user == "" then return setStatus("✕  Username tidak boleh kosong.") end
            if pass == "" then return setStatus("✕  Password tidak boleh kosong.") end
        end
        if currentMode == "register" and key == "" then
            return setStatus("✕  Key diperlukan untuk pendaftaran.")
        end

        setBusy("Memverifikasi...")
        setStatus("◌  Menghubungi server...", Color3.fromRGB(0, 205, 255))
        saveCredentials(currentMode, user, key) -- prefill save (no password)

        task.spawn(function()
            local ok, data

            if currentMode == "license" then
                ok, data = kaLicense(key)
            elseif currentMode == "login" then
                ok, data = kaLogin(user, pass)
            elseif currentMode == "register" then
                -- ============================================
                -- REGISTER: Perlu persetujuan Owner
                -- Kirim webhook → simpan pending → blokir login
                -- ============================================
                setBusy("Mengirim permintaan...")
                setStatus("◌  Mengirim ke Owner...", Color3.fromRGB(0, 205, 255))

                local sentOk, sentErr = sendRegisterWebhook(user, key, os.time())
                if sentOk then
                    savePending(user, key, os.time())
                    saveCredentials("login", user, "") -- switch prefill to login for next time

                    -- Show pending UI
                    setStatus("◌  Permintaan terkirim! Tunggu konfirmasi Owner.", C_SUCCESS)
                    TweenService:Create(actionBtn, TweenInfo.new(0.3), {
                        BackgroundColor3 = Color3.fromRGB(200, 140, 0)
                    }):Play()
                    actionBtn.Text = "MENUNGGU PERSETUJUAN..."
                    isBusy = true -- keep locked

                    -- Add cancel button behavior to switchBtn
                    switchBtn.Text = "[ Batalkan Permintaan ]"
                    local cancelConn
                    cancelConn = switchBtn.MouseButton1Click:Connect(function()
                        clearPending()
                        cancelConn:Disconnect()
                        isBusy = false
                        currentMode = "login"
                        setStatus("Permintaan dibatalkan.", Color3.fromRGB(255, 170, 50))
                        updateUIState()
                        setReady()
                    end)
                else
                    setStatus("✕  " .. tostring(sentErr))
                    setReady()
                end
                return -- stop here, no kaRegister call
            end

            if ok then
                -- Extract & save session with expiry
                local expiresAt = math.huge
                if type(data) == "table" and type(data.info) == "table" then
                    expiresAt = parseExpiry(tostring(data.info.expiry or ""))
                end
                saveSession(currentMode, user, currentMode ~= "license" and pass or nil, key, expiresAt)

                setStatus("✓  Akses diberikan! Memuat script...", C_SUCCESS)
                task.wait(1.2)
                -- Outro
                TweenService:Create(win, TweenInfo.new(0.3, Enum.EasingStyle.Back, Enum.EasingDirection.In), {
                    Position             = UDim2.new(0.5, -210, 0.6, -30),
                    BackgroundTransparency = 1,
                }):Play()
                TweenService:Create(dim, TweenInfo.new(0.3), {BackgroundTransparency = 1}):Play()
                task.wait(0.35)
                screenGui:Destroy()
                loadMainScript(data)
            else
                setStatus("✕  " .. tostring(data))
                setReady()
            end
        end)
    end)

    -- =============================================
    -- INTRO ANIMATION + START  (+ pending check)
    -- =============================================
    win.BackgroundTransparency = 1
    win.Position = UDim2.new(0.5, -210, 0.58, -30)

    -- Check if there's a pending registration request
    local pending = loadPending()
    if pending then
        -- Show pending state immediately
        currentMode = "login"
        updateUIState()
        setStatus("◌  Permintaan dikirim. Menunggu konfirmasi Owner...", Color3.fromRGB(200, 140, 0))
        TweenService:Create(actionBtn, TweenInfo.new(0.3), {
            BackgroundColor3 = Color3.fromRGB(200, 140, 0)
        }):Play()
        actionBtn.Text = "MENUNGGU PERSETUJUAN..."
        isBusy = true
        isReady = false
        -- Prefill saved user
        if pending.User and pending.User ~= "" then
            userBox.Text = pending.User
        end

        -- Show cancel option
        switchBtn.Text = "[ Batalkan & Coba Login ]"
        local pendingConn
        pendingConn = switchBtn.MouseButton1Click:Connect(function()
            clearPending()
            if pendingConn then pendingConn:Disconnect() end
            isBusy = false
            currentMode = "login"
            setStatus("Permintaan dibatalkan. Coba login jika sudah di-approve.", Color3.fromRGB(255, 170, 50))
            updateUIState()
        end)

        -- Animate in then init in background
        task.spawn(function()
            task.wait(0.05)
            TweenService:Create(win, TweenInfo.new(0.4, Enum.EasingStyle.Back, Enum.EasingDirection.Out), {
                Position             = UDim2.new(0.5, -210, 0.5, 0),
                BackgroundTransparency = 0,
            }):Play()
            -- Init silently in background so user can login when ready
            kaInit()
            initialized = true
        end)
        return
    end

    updateUIState()
    setStatus("◌  Menginisialisasi...", Color3.fromRGB(0, 205, 255))
    actionBtn.Text = "Menghubungi Server..."

    task.spawn(function()
        task.wait(0.05) -- let layout do first pass
        TweenService:Create(win, TweenInfo.new(0.4, Enum.EasingStyle.Back, Enum.EasingDirection.Out), {
            Position             = UDim2.new(0.5, -210, 0.5, 0),
            BackgroundTransparency = 0,
        }):Play()

        doInit(function()
            actionMode = "auth"
        end)
    end)
end

-- =============================================
-- STARTUP: Try auto-login from saved session
-- =============================================
local function tryAutoLogin()
    local session = loadSession()
    if not session then
        -- No valid session → show GUI normally
        createGUI()
        return
    end

    -- Show a minimal loading notification while re-authenticating silently
    print("[NDX KeySystem] Sesi tersimpan ditemukan. Auto-login...")
    pcall(function()
        game:GetService("StarterGui"):SetCore("SendNotification", {
            Title    = "NDX KeySystem";
            Text     = "◌  Memulihkan sesi...";
            Duration = 4;
        })
    end)

    task.spawn(function()
        -- Initialize KeyAuth first
        local initOk, initMsg = kaInit()
        if not initOk then
            warn("[NDX KeySystem] Auto-login: Init gagal (" .. tostring(initMsg) .. "), buka GUI manual.")
            createGUI()
            return
        end

        local ok, data
        local mode = session.Mode or "login"

        if mode == "license" then
            ok, data = kaLicense(session.Key or "")
        elseif mode == "login" then
            ok, data = kaLogin(session.User or "", session.PassDecoded or "")
        elseif mode == "register" then
            -- After register, next login is by key or login
            ok, data = kaLicense(session.Key or "")
        end

        if ok then
            -- Refresh expiry timestamp
            local expiresAt = math.huge
            if type(data) == "table" and type(data.info) == "table" then
                expiresAt = parseExpiry(tostring(data.info.expiry or ""))
            end
            saveSession(mode, session.User, session.PassDecoded, session.Key, expiresAt)

            print("[NDX KeySystem] Auto-login berhasil!")
            pcall(function()
                game:GetService("StarterGui"):SetCore("SendNotification", {
                    Title    = "NDX KeySystem";
                    Text     = "✓  Sesi valid! Memuat script...";
                    Duration = 3;
                })
            end)
            loadMainScript(data)
        else
            -- Session invalid / expired / revoked → clear & open GUI
            warn("[NDX KeySystem] Sesi kadaluarsa atau ditolak: " .. tostring(data))
            clearSession()
            pcall(function()
                game:GetService("StarterGui"):SetCore("SendNotification", {
                    Title    = "NDX KeySystem";
                    Text     = "✕  Sesi berakhir. Silakan login ulang.";
                    Duration = 4;
                })
            end)
            task.wait(0.5)
            createGUI()
        end
    end)
end

tryAutoLogin()
