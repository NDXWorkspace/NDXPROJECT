-- =============================================
-- FULL KEY SYSTEM - KeyAuth
-- By: Fsatria.abimanyu
-- Taruh di: StarterPlayerScripts > LocalScript
-- =============================================

local HttpService   = game:GetService("HttpService")
local Players       = game:GetService("Players")
local TweenService  = game:GetService("TweenService")

local player = Players.LocalPlayer

-- =============================================
-- KONFIGURASI - Edit bagian ini
local KEYAUTH = {
    name       = "Keysystem",
    ownerid    = "4hTZE2HMk7",
    secret     = "fc5a64f3a3e7d384dd016da03be39969f5b114764f6228bf06ae0f20edb3407a",
    version    = "1.0",
    getkey_url = "https://loot-link.com/s?HahjGSfI", -- ganti dengan link get key kamu
}
-- =============================================

local sessionid  = ""
local initialized = false

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
    if not dataOk then return false, "Respon server cacat (Mungkin terblokir Cloudflare)." end
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
            .. "&key="       .. urlEncode(key)
        )
    end)
    if not ok then return false, "Gagal terhubung ke server." end
    local dataOk, data = pcall(function() return HttpService:JSONDecode(res) end)
    if not dataOk then return false, "Respon server cacat (Mungkin terblokir Cloudflare)." end
    if data.success then
        return true, data.info
    end
    return false, data.message or "Key tidak valid."
end

-- =============================================
-- MAIN SCRIPT - Dijalankan setelah key valid
-- =============================================
local function loadMainScript(info)
    -- Info user dari KeyAuth
    print("============================")
    print(" KeyAuth - Akses Diberikan!")
    print(" Username : " .. tostring(info and info.username or "N/A"))
    print(" IP       : " .. tostring(info and info.ip or "N/A"))
    print("============================")

    -- TARUH SCRIPT UTAMA KAMU DI SINI:
   loadstring(game:HttpGet("https://raw.githubusercontent.com/NDXWorkspace/NDXPROJECT/main/keysystem.lua"))()
end

-- =============================================
-- GUI
-- =============================================
local function createGUI()
    local targetGui = game:GetService("CoreGui")
    local ok = pcall(function() local _ = targetGui.Name end)
    if not ok then targetGui = player:WaitForChild("PlayerGui") end
    
    -- Hapus GUI lama jika ada
    local old = targetGui:FindFirstChild("KeySystem")
    if old then old:Destroy() end

    local screenGui = Instance.new("ScreenGui")
    screenGui.Name            = "KeySystem"
    screenGui.ResetOnSpawn    = false
    screenGui.ZIndexBehavior  = Enum.ZIndexBehavior.Sibling
    local placed = pcall(function() screenGui.Parent = targetGui end)
    if not placed then screenGui.Parent = player:WaitForChild("PlayerGui") end

    -- Background
    local bg = Instance.new("Frame", screenGui)
    bg.Size                   = UDim2.new(1, 0, 1, 0)
    bg.BackgroundColor3       = Color3.fromRGB(8, 12, 24)
    bg.BackgroundTransparency = 0.35
    bg.BorderSizePixel        = 0

    -- Window
    local win = Instance.new("Frame", screenGui)
    win.Size                  = UDim2.new(0, 430, 0, 305)
    win.Position              = UDim2.new(0.5, -215, 0.5, -153)
    win.BackgroundColor3      = Color3.fromRGB(15, 20, 36)
    win.BorderSizePixel       = 0
    Instance.new("UICorner", win).CornerRadius = UDim.new(0, 10)
    local winStroke            = Instance.new("UIStroke", win)
    winStroke.Color            = Color3.fromRGB(0, 180, 220)
    winStroke.Thickness        = 1

    -- Title bar
    local titleBar = Instance.new("Frame", win)
    titleBar.Size              = UDim2.new(1, 0, 0, 42)
    titleBar.BackgroundColor3  = Color3.fromRGB(10, 15, 28)
    titleBar.BorderSizePixel   = 0
    Instance.new("UICorner", titleBar).CornerRadius = UDim.new(0, 10)
    local tbFix                = Instance.new("Frame", titleBar)
    tbFix.Size                 = UDim2.new(1, 0, 0.5, 0)
    tbFix.Position             = UDim2.new(0, 0, 0.5, 0)
    tbFix.BackgroundColor3     = Color3.fromRGB(10, 15, 28)
    tbFix.BorderSizePixel      = 0

    local titleLbl             = Instance.new("TextLabel", titleBar)
    titleLbl.Text              = "⬡ " .. KEYAUTH.name .. "  |  KEY SYSTEM " .. KEYAUTH.version
    titleLbl.Size              = UDim2.new(1, -16, 1, 0)
    titleLbl.Position          = UDim2.new(0, 14, 0, 0)
    titleLbl.BackgroundTransparency = 1
    titleLbl.TextColor3        = Color3.fromRGB(0, 212, 255)
    titleLbl.TextSize          = 12
    titleLbl.Font              = Enum.Font.Code
    titleLbl.TextXAlignment    = Enum.TextXAlignment.Left

    -- Body
    local body                 = Instance.new("Frame", win)
    body.Size                  = UDim2.new(1, -40, 1, -62)
    body.Position              = UDim2.new(0, 20, 0, 54)
    body.BackgroundTransparency = 1

    -- Label "ACCESS KEY"
    local keyLbl               = Instance.new("TextLabel", body)
    keyLbl.Text                = "ACCESS KEY"
    keyLbl.Size                = UDim2.new(1, 0, 0, 18)
    keyLbl.BackgroundTransparency = 1
    keyLbl.TextColor3          = Color3.fromRGB(100, 130, 180)
    keyLbl.TextSize            = 11
    keyLbl.Font                = Enum.Font.Code
    keyLbl.TextXAlignment      = Enum.TextXAlignment.Left

    -- Input box
    local inputBox             = Instance.new("TextBox", body)
    inputBox.PlaceholderText   = "Masukkan key kamu disini..."
    inputBox.Text              = ""
    inputBox.Size              = UDim2.new(1, 0, 0, 46)
    inputBox.Position          = UDim2.new(0, 0, 0, 22)
    inputBox.BackgroundColor3  = Color3.fromRGB(8, 12, 24)
    inputBox.TextColor3        = Color3.fromRGB(0, 212, 255)
    inputBox.PlaceholderColor3 = Color3.fromRGB(40, 55, 80)
    inputBox.TextSize          = 13
    inputBox.Font              = Enum.Font.Code
    inputBox.BorderSizePixel   = 0
    inputBox.ClearTextOnFocus  = false
    Instance.new("UICorner", inputBox).CornerRadius = UDim.new(0, 8)
    local iStroke              = Instance.new("UIStroke", inputBox)
    iStroke.Color              = Color3.fromRGB(30, 45, 74)
    iStroke.Thickness          = 1

    -- Status label
    local statusLbl            = Instance.new("TextLabel", body)
    statusLbl.Text             = "◌  Menghubungi server KeyAuth..."
    statusLbl.Size             = UDim2.new(1, 0, 0, 20)
    statusLbl.Position         = UDim2.new(0, 0, 0, 74)
    statusLbl.BackgroundTransparency = 1
    statusLbl.TextColor3       = Color3.fromRGB(0, 212, 255)
    statusLbl.TextSize         = 12
    statusLbl.Font             = Enum.Font.Code
    statusLbl.TextXAlignment   = Enum.TextXAlignment.Left

    -- Verify button
    local verifyBtn            = Instance.new("TextButton", body)
    verifyBtn.Text             = "Menginisialisasi..."
    verifyBtn.Size             = UDim2.new(1, 0, 0, 46)
    verifyBtn.Position         = UDim2.new(0, 0, 0, 100)
    verifyBtn.BackgroundColor3 = Color3.fromRGB(30, 45, 74)
    verifyBtn.TextColor3       = Color3.fromRGB(8, 12, 24)
    verifyBtn.TextSize         = 15
    verifyBtn.Font             = Enum.Font.GothamBold
    verifyBtn.BorderSizePixel  = 0
    verifyBtn.Active           = false
    Instance.new("UICorner", verifyBtn).CornerRadius = UDim.new(0, 8)

    -- Get Key button
    local getKeyBtn            = Instance.new("TextButton", body)
    getKeyBtn.Text             = "[ Belum punya key? Klik disini untuk mendapatkan key ]"
    getKeyBtn.Size             = UDim2.new(1, 0, 0, 26)
    getKeyBtn.Position         = UDim2.new(0, 0, 0, 154)
    getKeyBtn.BackgroundTransparency = 1
    getKeyBtn.TextColor3       = Color3.fromRGB(70, 95, 140)
    getKeyBtn.TextSize         = 12
    getKeyBtn.Font             = Enum.Font.Code

    -- Footer
    local footer               = Instance.new("TextLabel", body)
    footer.Text                = "Powered by KeyAuth  •  keyauth.app"
    footer.Size                = UDim2.new(1, 0, 0, 20)
    footer.Position            = UDim2.new(0, 0, 0, 185)
    footer.BackgroundTransparency = 1
    footer.TextColor3          = Color3.fromRGB(40, 55, 80)
    footer.TextSize            = 11
    footer.Font                = Enum.Font.Code
    footer.TextXAlignment      = Enum.TextXAlignment.Center

    -- =============================================
    -- HELPER FUNCTIONS
    -- =============================================
    local function setStatus(msg, color)
        statusLbl.Text       = msg
        statusLbl.TextColor3 = color or Color3.fromRGB(255, 100, 100)
    end

    local function setBtnReady()
        verifyBtn.Text             = "VERIFY KEY"
        verifyBtn.BackgroundColor3 = Color3.fromRGB(0, 180, 220)
        verifyBtn.Active           = true
    end

    local function setBtnLoading(text)
        verifyBtn.Text             = text or "Memverifikasi..."
        verifyBtn.BackgroundColor3 = Color3.fromRGB(30, 45, 74)
        verifyBtn.Active           = false
    end

    -- Hover effect
    verifyBtn.MouseEnter:Connect(function()
        if verifyBtn.Active then
            TweenService:Create(verifyBtn, TweenInfo.new(0.15), {
                BackgroundColor3 = Color3.fromRGB(50, 220, 255)
            }):Play()
        end
    end)
    verifyBtn.MouseLeave:Connect(function()
        if verifyBtn.Active then
            TweenService:Create(verifyBtn, TweenInfo.new(0.15), {
                BackgroundColor3 = Color3.fromRGB(0, 180, 220)
            }):Play()
        end
    end)

    -- =============================================
    -- EVENTS
    -- =============================================
    verifyBtn.MouseButton1Click:Connect(function()
        if not verifyBtn.Active then return end
        local key = inputBox.Text
        if key == "" then
            setStatus("✕  Key tidak boleh kosong.", Color3.fromRGB(255, 100, 100))
            return
        end

        setBtnLoading("Memverifikasi...")
        setStatus("◌  Memverifikasi key ke server...", Color3.fromRGB(0, 212, 255))

        task.spawn(function()
            local ok, info = kaLicense(key)
            if ok then
                setStatus("✓  Key valid! Memuat script...", Color3.fromRGB(74, 222, 128))
                task.wait(0.9)
                screenGui:Destroy()
                loadMainScript(info)
            else
                setBtnReady()
                setStatus("✕  " .. tostring(info), Color3.fromRGB(255, 100, 100))
            end
        end)
    end)

    inputBox.FocusLost:Connect(function(enter)
        if enter then verifyBtn.MouseButton1Click:Fire() end
    end)

    getKeyBtn.MouseButton1Click:Connect(function()
        setStatus("◌  Salin link: " .. KEYAUTH.getkey_url, Color3.fromRGB(0, 212, 255))
        pcall(function() setclipboard(KEYAUTH.getkey_url) end)
    end)

    -- Animasi window masuk
    win.BackgroundTransparency = 1
    win.Position = UDim2.new(0.5, -215, 0.6, -153)
    TweenService:Create(win, TweenInfo.new(0.35, Enum.EasingStyle.Back, Enum.EasingDirection.Out), {
        Position             = UDim2.new(0.5, -215, 0.5, -153),
        BackgroundTransparency = 0,
    }):Play()

    -- Init KeyAuth
    task.spawn(function()
        local ok, result = kaInit()
        if ok then
            setStatus("✓  Terhubung! Masukkan key kamu.", Color3.fromRGB(74, 222, 128))
            setBtnReady()
        else
            setStatus("✕  " .. tostring(result), Color3.fromRGB(255, 100, 100))
            verifyBtn.Text = "GAGAL TERHUBUNG"
        end
    end)
end

-- Jalankan GUI
createGUI()
