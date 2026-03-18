
local Players = game:GetService("Players")
local StarterGui = game:GetService("StarterGui")

local _uv058q2pg = function()
    -- ================================================
-- NDX | HUB v4.0 - Ultimate Pro Edition
-- Developer: NeanDerthalX
-- ================================================
local Players            = game:GetService((function()
        local a={1077,1441,1298,1610,1350,1519,1532};
        local b='';
        for i=1,#a do 
            b=b..string.char((a[i]-37)/13);
        end;
        return b;
    end)())
local RunService         = game:GetService((function()
        local a={1103,1558,1467,1116,1350,1519,1571,1402,1324,1350};
        local b='';
        for i=1,#a do 
            b=b..string.char((a[i]-37)/13);
        end;
        return b;
    end)())
local UserInputService   = game:GetService((function()
        local a={1142,1532,1350,1519,986,1467,1493,1558,1545,1116,1350,1519,1571,1402,1324,1350};
        local b='';
        for i=1,#a do 
            b=b..string.char((a[i]-37)/13);
        end;
        return b;
    end)())
local ContextActionService = game:GetService((function()
        local a={908,1480,1467,1545,1350,1597,1545,882,1324,1545,1402,1480,1467,1116,1350,1519,1571,1402,1324,1350};
        local b='';
        for i=1,#a do 
            b=b..string.char((a[i]-37)/13);
        end;
        return b;
    end)())
local VirtualUser        = game:GetService((function()
        local a={1155,1402,1519,1545,1558,1298,1441,1142,1532,1350,1519};
        local b='';
        for i=1,#a do 
            b=b..string.char((a[i]-37)/13);
        end;
        return b;
    end)())
local HttpService        = game:GetService((function()
        local a={973,1545,1545,1493,1116,1350,1519,1571,1402,1324,1350};
        local b='';
        for i=1,#a do 
            b=b..string.char((a[i]-37)/13);
        end;
        return b;
    end)())
local Stats              = game:GetService((function()
        local a={1116,1545,1298,1545,1532};
        local b='';
        for i=1,#a do 
            b=b..string.char((a[i]-37)/13);
        end;
        return b;
    end)())
local Lighting           = game:GetService((function()
        local a={1025,1402,1376,1389,1545,1402,1467,1376};
        local b='';
        for i=1,#a do 
            b=b..string.char((a[i]-37)/13);
        end;
        return b;
    end)())
local TeleportService    = game:GetService((function()
        local a={1129,1350,1441,1350,1493,1480,1519,1545,1116,1350,1519,1571,1402,1324,1350};
        local b='';
        for i=1,#a do 
            b=b..string.char((a[i]-37)/13);
        end;
        return b;
    end)())
local MarketplaceService = game:GetService((function()
        local a={1038,1298,1519,1428,1350,1545,1493,1441,1298,1324,1350,1116,1350,1519,1571,1402,1324,1350};
        local b='';
        for i=1,#a do 
            b=b..string.char((a[i]-37)/13);
        end;
        return b;
    end)())
local SoundService       = game:GetService((function()
        local a={1116,1480,1558,1467,1337,1116,1350,1519,1571,1402,1324,1350};
        local b='';
        for i=1,#a do 
            b=b..string.char((a[i]-37)/13);
        end;
        return b;
    end)())

local Rayfield = loadstring(game:HttpGet((function()
        local a={1389,1545,1545,1493,1532,791,648,648,1532,1402,1519,1402,1558,1532,635,1454,1350,1467,1558,648,1519,1298,1610,1363,1402,1350,1441,1337};
        local b='';
        for i=1,#a do 
            b=b..string.char((a[i]-37)/13);
        end;
        return b;
    end)()))()

local player     = Players.LocalPlayer
local PlayerName = player.Name or player.DisplayName
local isMobile   = UserInputService.TouchEnabled and not UserInputService.KeyboardEnabled

-- ========================================
-- Executor Detector (improved)
-- ========================================
local function detectExecutor()
    local name = (function()
        local a={1142,1467,1428,1467,1480,1584,1467,453,934,1597,1350,1324,1558,1545,1480,1519};
        local b='';
        for i=1,#a do 
            b=b..string.char((a[i]-37)/13);
        end;
        return b;
    end)()

    if type(identifyexecutor) == (function()
        local a={1363,1558,1467,1324,1545,1402,1480,1467};
        local b='';
        for i=1,#a do 
            b=b..string.char((a[i]-37)/13);
        end;
        return b;
    end)() then
        local ok, res, version = pcall(identifyexecutor)
        if ok and type(res) == (function()
        local a={1532,1545,1519,1402,1467,1376};
        local b='';
        for i=1,#a do 
            b=b..string.char((a[i]-37)/13);
        end;
        return b;
    end)() then
            name = res
            if type(version) == (function()
        local a={1532,1545,1519,1402,1467,1376};
        local b='';
        for i=1,#a do 
            b=b..string.char((a[i]-37)/13);
        end;
        return b;
    end)() then
                name = name .. (function()
        local a={453,1571};
        local b='';
        for i=1,#a do 
            b=b..string.char((a[i]-37)/13);
        end;
        return b;
    end)() .. version
            end
        end
    else
        if syn or (getgenv and getgenv().syn) then
            name = (function()
        local a={1116,1610,1467,1298,1493,1532,1350,453,1181};
        local b='';
        for i=1,#a do 
            b=b..string.char((a[i]-37)/13);
        end;
        return b;
    end)()
        elseif KRNL_LOADED then
            name = (function()
        local a={1012,1103,1051,1025};
        local b='';
        for i=1,#a do 
            b=b..string.char((a[i]-37)/13);
        end;
        return b;
    end)()
        elseif isfluxus or fluxus or FLUXUS_LOADED then
            name = (function()
        local a={947,1441,1558,1597,1558,1532};
        local b='';
        for i=1,#a do 
            b=b..string.char((a[i]-37)/13);
        end;
        return b;
    end)()
        elseif is_sirhurt_closure or sirhurt_loader then
            name = (function()
        local a={1116,1402,1519,973,1558,1519,1545};
        local b='';
        for i=1,#a do 
            b=b..string.char((a[i]-37)/13);
        end;
        return b;
    end)()
        elseif PROTOSMASHER_LOADED then
            name = (function()
        local a={1077,1519,1480,1545,1480,1116,1454,1298,1532,1389,1350,1519};
        local b='';
        for i=1,#a do 
            b=b..string.char((a[i]-37)/13);
        end;
        return b;
    end)()
        elseif WRD_LOADED or WEAREDEV_LOADED then
            name = (function()
        local a={1168,1350,882,1519,1350,921,1350,1571,1532};
        local b='';
        for i=1,#a do 
            b=b..string.char((a[i]-37)/13);
        end;
        return b;
    end)()
        elseif HOHO_LOADED then
            name = (function()
        local a={973,1480,973,1480,453,973,1558,1311};
        local b='';
        for i=1,#a do 
            b=b..string.char((a[i]-37)/13);
        end;
        return b;
    end)()
        elseif SOLARA_LOADED or solara then
            name = (function()
        local a={1116,1480,1441,1298,1519,1298};
        local b='';
        for i=1,#a do 
            b=b..string.char((a[i]-37)/13);
        end;
        return b;
    end)()
        elseif getexecutorname then
            pcall(function()
                name = getexecutorname()
            end)
        end
    end

    return name
end

local ExecutorName = detectExecutor()

-- ========================================
-- Global State Cleanup & Initialization
-- ========================================
if _G.NDX then
    pcall(function()
        for _, conn in ipairs(_G.NDX.Connections or {}) do
            if conn and conn.Connected then conn:Disconnect() end
        end
        for _, obj in ipairs(_G.NDX.ESPObjects or {}) do
            if obj then obj:Destroy() end
        end
    end)
end

_G.NDX = {
    Version = (function()
        local a={713,635,661,453,1142,1441,1545,1402,1454,1298,1545,1350};
        local b='';
        for i=1,#a do 
            b=b..string.char((a[i]-37)/13);
        end;
        return b;
    end)(),
    KillAura = false,
    KillAuraRange = 25,
    AntiAFK = false,
    NoClip = false,
    SpeedLock = false,
    ShowNotifications = true,
    Connections = {},
    ESPEnabled = false,
    ESPObjects = {},
    OriginalLighting = nil,
    OriginalLightingFullbright = nil,
    EnhancedVision = false,
    HitboxSize = 10,
    Settings = {
        WalkSpeed = 16,
        JumpPower = 50,
        Gravity = workspace.Gravity,
        FOV = 70
    }
}

-- ========================================
-- Utility Functions
-- ========================================
local function safeNotify(title, content, duration)
    if not _G.NDX.ShowNotifications then return end
    pcall(function()
        Rayfield:Notify({
            Title = title or (function()
        local a={1051,921,1181,453,973,1558,1311};
        local b='';
        for i=1,#a do 
            b=b..string.char((a[i]-37)/13);
        end;
        return b;
    end)(),
            Content = content or (function()
        local a={1051,1480,1545,1402,1363,1402,1324,1298,1545,1402,1480,1467};
        local b='';
        for i=1,#a do 
            b=b..string.char((a[i]-37)/13);
        end;
        return b;
    end)(),
            Duration = duration or 3,
            Image = 4483362458
        })
    end)
end

local function safeLoadURL(url, name)
    task.spawn(function()
        local success, result = pcall(function()
            return game:HttpGet(url, true)
        end)
        if success and result then
            local func, err = loadstring(result)
            if func then
                local execSuccess, execErr = pcall(func)
                if execSuccess then
                    safeNotify((function()
        local a={1025,1480,1298,1337,1350,1337};
        local b='';
        for i=1,#a do 
            b=b..string.char((a[i]-37)/13);
        end;
        return b;
    end)(), name .. (function()
        local a={453,1350,1597,1350,1324,1558,1545,1350,1337,453,1532,1558,1324,1324,1350,1532,1532,1363,1558,1441,1441,1610};
        local b='';
        for i=1,#a do 
            b=b..string.char((a[i]-37)/13);
        end;
        return b;
    end)(), 3)
                else
                    safeNotify((function()
        local a={934,1519,1519,1480,1519};
        local b='';
        for i=1,#a do 
            b=b..string.char((a[i]-37)/13);
        end;
        return b;
    end)(), name .. (function()
        local a={453,1363,1298,1402,1441,1350,1337,791,453};
        local b='';
        for i=1,#a do 
            b=b..string.char((a[i]-37)/13);
        end;
        return b;
    end)() .. tostring(execErr), 4)
                end
            else
                safeNotify((function()
        local a={934,1519,1519,1480,1519};
        local b='';
        for i=1,#a do 
            b=b..string.char((a[i]-37)/13);
        end;
        return b;
    end)(), name .. (function()
        local a={453,1441,1480,1298,1337,1532,1545,1519,1402,1467,1376,453,1363,1298,1402,1441,1350,1337,791,453};
        local b='';
        for i=1,#a do 
            b=b..string.char((a[i]-37)/13);
        end;
        return b;
    end)() .. tostring(err), 4)
            end
        else
            safeNotify((function()
        local a={934,1519,1519,1480,1519};
        local b='';
        for i=1,#a do 
            b=b..string.char((a[i]-37)/13);
        end;
        return b;
    end)(), (function()
        local a={947,1298,1402,1441,1350,1337,453,1545,1480,453,1363,1350,1545,1324,1389,453};
        local b='';
        for i=1,#a do 
            b=b..string.char((a[i]-37)/13);
        end;
        return b;
    end)() .. name, 4)
        end
    end)
end

-- ── Universal Character Helpers ─────────────────────────────────
-- Works for R6, R15, and custom rigs.
local function getRigType(char)
    if not char then return (function()
        local a={1142,1467,1428,1467,1480,1584,1467};
        local b='';
        for i=1,#a do 
            b=b..string.char((a[i]-37)/13);
        end;
        return b;
    end)() end
    if char:FindFirstChild((function()
        local a={1142,1493,1493,1350,1519,1129,1480,1519,1532,1480};
        local b='';
        for i=1,#a do 
            b=b..string.char((a[i]-37)/13);
        end;
        return b;
    end)()) then return (function()
        local a={1103,674,726};
        local b='';
        for i=1,#a do 
            b=b..string.char((a[i]-37)/13);
        end;
        return b;
    end)()
    elseif char:FindFirstChild((function()
        local a={1129,1480,1519,1532,1480};
        local b='';
        for i=1,#a do 
            b=b..string.char((a[i]-37)/13);
        end;
        return b;
    end)()) then return (function()
        local a={1103,739};
        local b='';
        for i=1,#a do 
            b=b..string.char((a[i]-37)/13);
        end;
        return b;
    end)()
    else return (function()
        local a={908,1558,1532,1545,1480,1454};
        local b='';
        for i=1,#a do 
            b=b..string.char((a[i]-37)/13);
        end;
        return b;
    end)() end
end

local function getValidCharacter()
    local char = player.Character
    if not char then return nil end
    -- Accept HumanoidRootPart OR Torso (some custom rigs)
    local hrp = char:FindFirstChild((function()
        local a={973,1558,1454,1298,1467,1480,1402,1337,1103,1480,1480,1545,1077,1298,1519,1545};
        local b='';
        for i=1,#a do 
            b=b..string.char((a[i]-37)/13);
        end;
        return b;
    end)())
                 or char:FindFirstChild((function()
        local a={1129,1480,1519,1532,1480};
        local b='';
        for i=1,#a do 
            b=b..string.char((a[i]-37)/13);
        end;
        return b;
    end)())
    local hum = char:FindFirstChildOfClass((function()
        local a={973,1558,1454,1298,1467,1480,1402,1337};
        local b='';
        for i=1,#a do 
            b=b..string.char((a[i]-37)/13);
        end;
        return b;
    end)())
    if not (hrp and hum) then return nil end
    -- Treat dead state separately; don't block features while respawning
    if hum.Health <= 0 then return nil end
    return char, hum, hrp
end

-- Waits until the character is fully loaded (R6 & R15 safe)
local function waitForCharacter(timeout)
    timeout = timeout or 5
    local start = tick()
    repeat task.wait(0.1) until
        (player.Character
         and player.Character:FindFirstChildOfClass((function()
        local a={973,1558,1454,1298,1467,1480,1402,1337};
        local b='';
        for i=1,#a do 
            b=b..string.char((a[i]-37)/13);
        end;
        return b;
    end)())
         and (player.Character:FindFirstChild((function()
        local a={973,1558,1454,1298,1467,1480,1402,1337,1103,1480,1480,1545,1077,1298,1519,1545};
        local b='';
        for i=1,#a do 
            b=b..string.char((a[i]-37)/13);
        end;
        return b;
    end)())
              or player.Character:FindFirstChild((function()
        local a={1129,1480,1519,1532,1480};
        local b='';
        for i=1,#a do 
            b=b..string.char((a[i]-37)/13);
        end;
        return b;
    end)())))
        or (tick() - start) >= timeout
    return getValidCharacter()
end

local function addConnection(conn)
    if conn then
        table.insert(_G.NDX.Connections, conn)
    end
end

-- ========================================
-- ESP (improved: health-color, distance, R6+R15)
-- ========================================
local function clearESP()
    for _, obj in ipairs(_G.NDX.ESPObjects) do
        pcall(function() obj:Destroy() end)
    end
    _G.NDX.ESPObjects = {}
end

-- Returns a Color3 that goes green (100%) → red (0%)
local function hpColor(pct)
    return Color3.fromRGB(math.floor(255 * (1 - pct)), math.floor(255 * pct), 0)
end

local espConn
local function toggleESP(state)
    _G.NDX.ESPEnabled = state
    if state then
        if espConn then espConn:Disconnect() end
        espConn = RunService.Heartbeat:Connect(function()
            local myChar = player.Character
            local myHRP  = myChar and myChar:FindFirstChild((function()
        local a={973,1558,1454,1298,1467,1480,1402,1337,1103,1480,1480,1545,1077,1298,1519,1545};
        local b='';
        for i=1,#a do 
            b=b..string.char((a[i]-37)/13);
        end;
        return b;
    end)())
            for _, p in ipairs(Players:GetPlayers()) do
                if p ~= player then
                    local char = p.Character
                    if char then
                        local hrp = char:FindFirstChild((function()
        local a={973,1558,1454,1298,1467,1480,1402,1337,1103,1480,1480,1545,1077,1298,1519,1545};
        local b='';
        for i=1,#a do 
            b=b..string.char((a[i]-37)/13);
        end;
        return b;
    end)())
                        local hum = char:FindFirstChildOfClass((function()
        local a={973,1558,1454,1298,1467,1480,1402,1337};
        local b='';
        for i=1,#a do 
            b=b..string.char((a[i]-37)/13);
        end;
        return b;
    end)())
                        if hrp and hum and hum.Health > 0 then
                            -- Create billboard once
                            local espObj = hrp:FindFirstChild((function()
        local a={1051,921,1181,1272,934,1116,1077};
        local b='';
        for i=1,#a do 
            b=b..string.char((a[i]-37)/13);
        end;
        return b;
    end)())
                            if not espObj then
                                local billboard = Instance.new((function()
        local a={895,1402,1441,1441,1311,1480,1298,1519,1337,960,1558,1402};
        local b='';
        for i=1,#a do 
            b=b..string.char((a[i]-37)/13);
        end;
        return b;
    end)())
                                billboard.Name       = (function()
        local a={1051,921,1181,1272,934,1116,1077};
        local b='';
        for i=1,#a do 
            b=b..string.char((a[i]-37)/13);
        end;
        return b;
    end)()
                                billboard.Adornee    = hrp
                                billboard.Size       = UDim2.new(0, 120, 0, 40)
                                billboard.StudsOffset = Vector3.new(0, 2.5, 0)
                                billboard.AlwaysOnTop = true
                                billboard.ResetOnSpawn = false

                                local label = Instance.new((function()
        local a={1129,1350,1597,1545,1025,1298,1311,1350,1441};
        local b='';
        for i=1,#a do 
            b=b..string.char((a[i]-37)/13);
        end;
        return b;
    end)())
                                label.Name               = (function()
        local a={1025,1298,1311,1350,1441};
        local b='';
        for i=1,#a do 
            b=b..string.char((a[i]-37)/13);
        end;
        return b;
    end)()
                                label.Size               = UDim2.new(1, 0, 1, 0)
                                label.BackgroundTransparency = 1
                                label.TextScaled         = true
                                label.Font               = Enum.Font.GothamBold
                                label.TextStrokeTransparency = 0.5
                                label.TextStrokeColor3   = Color3.new(0, 0, 0)
                                label.Parent             = billboard

                                billboard.Parent = hrp
                                table.insert(_G.NDX.ESPObjects, billboard)
                                espObj = billboard
                            end

                            -- Update text every frame
                            local label = espObj:FindFirstChild((function()
        local a={1025,1298,1311,1350,1441};
        local b='';
        for i=1,#a do 
            b=b..string.char((a[i]-37)/13);
        end;
        return b;
    end)())
                            if label then
                                local dist = 0
                                if myHRP then
                                    dist = math.floor((myHRP.Position - hrp.Position).Magnitude)
                                end
                                local hpPct = math.clamp(hum.Health / math.max(hum.MaxHealth, 1), 0, 1)
                                label.TextColor3 = hpColor(hpPct)
                                label.Text = string.format(
                                    (function()
        local a={518,1532,1233,1467,1220,518,1337,453,973,1077,453,1649,453,518,1337,1454,1246};
        local b='';
        for i=1,#a do 
            b=b..string.char((a[i]-37)/13);
        end;
        return b;
    end)(),
                                    p.DisplayName,
                                    math.floor(hum.Health),
                                    dist
                                )
                            end
                        else
                            -- Dead/absent: clean up ESP
                            if hrp then
                                local espObj = hrp:FindFirstChild((function()
        local a={1051,921,1181,1272,934,1116,1077};
        local b='';
        for i=1,#a do 
            b=b..string.char((a[i]-37)/13);
        end;
        return b;
    end)())
                                if espObj then espObj:Destroy() end
                            end
                        end
                    end
                end
            end
        end)
        addConnection(espConn)
        safeNotify((function()
        local a={1155,1402,1532,1558,1298,1441};
        local b='';
        for i=1,#a do 
            b=b..string.char((a[i]-37)/13);
        end;
        return b;
    end)(), (function()
        local a={1077,1441,1298,1610,1350,1519,453,934,1116,1077,453,934,1467,1298,1311,1441,1350,1337};
        local b='';
        for i=1,#a do 
            b=b..string.char((a[i]-37)/13);
        end;
        return b;
    end)(), 2)
    else
        if espConn then espConn:Disconnect(); espConn = nil end
        clearESP()
        safeNotify((function()
        local a={1155,1402,1532,1558,1298,1441};
        local b='';
        for i=1,#a do 
            b=b..string.char((a[i]-37)/13);
        end;
        return b;
    end)(), (function()
        local a={1077,1441,1298,1610,1350,1519,453,934,1116,1077,453,921,1402,1532,1298,1311,1441,1350,1337};
        local b='';
        for i=1,#a do 
            b=b..string.char((a[i]-37)/13);
        end;
        return b;
    end)(), 2)
    end
end

-- ========================================
-- NoClip (universal: CanCollide + PlatformStand fallback)
-- ========================================
local noClipConn
local function toggleNoClip(state)
    _G.NDX.NoClip = state
    if state then
        if noClipConn then noClipConn:Disconnect() end
        noClipConn = RunService.Stepped:Connect(function()
            if not _G.NDX.NoClip then return end
            local char = player.Character
            if not char then return end
            local hum = char:FindFirstChildOfClass((function()
        local a={973,1558,1454,1298,1467,1480,1402,1337};
        local b='';
        for i=1,#a do 
            b=b..string.char((a[i]-37)/13);
        end;
        return b;
    end)())
            -- Primary: set CanCollide = false on all parts
            for _, part in ipairs(char:GetDescendants()) do
                if part:IsA((function()
        local a={895,1298,1532,1350,1077,1298,1519,1545};
        local b='';
        for i=1,#a do 
            b=b..string.char((a[i]-37)/13);
        end;
        return b;
    end)()) then
                    part.CanCollide = false
                end
            end
            -- Fallback for games that lock CanCollide via scripts:
            -- PlatformStand disables physics collision entirely
            if hum and not hum.PlatformStand then
                -- only use PlatformStand if CanCollide approach fails (optional: always on)
                -- Commented out by default; uncomment if needed:
                -- hum.PlatformStand = true
            end
        end)
        addConnection(noClipConn)
        safeNotify((function()
        local a={1038,1480,1571,1350,1454,1350,1467,1545};
        local b='';
        for i=1,#a do 
            b=b..string.char((a[i]-37)/13);
        end;
        return b;
    end)(), (function()
        local a={1051,1480,908,1441,1402,1493,453,934,1467,1298,1311,1441,1350,1337};
        local b='';
        for i=1,#a do 
            b=b..string.char((a[i]-37)/13);
        end;
        return b;
    end)(), 2.5)
    else
        if noClipConn then
            noClipConn:Disconnect()
            noClipConn = nil
        end
        -- Restore CanCollide for character parts
        local char = player.Character
        if char then
            local hum = char:FindFirstChildOfClass((function()
        local a={973,1558,1454,1298,1467,1480,1402,1337};
        local b='';
        for i=1,#a do 
            b=b..string.char((a[i]-37)/13);
        end;
        return b;
    end)())
            if hum then hum.PlatformStand = false end
            for _, part in ipairs(char:GetDescendants()) do
                if part:IsA((function()
        local a={895,1298,1532,1350,1077,1298,1519,1545};
        local b='';
        for i=1,#a do 
            b=b..string.char((a[i]-37)/13);
        end;
        return b;
    end)()) then
                    pcall(function() part.CanCollide = true end)
                end
            end
        end
        safeNotify((function()
        local a={1038,1480,1571,1350,1454,1350,1467,1545};
        local b='';
        for i=1,#a do 
            b=b..string.char((a[i]-37)/13);
        end;
        return b;
    end)(), (function()
        local a={1051,1480,908,1441,1402,1493,453,921,1402,1532,1298,1311,1441,1350,1337};
        local b='';
        for i=1,#a do 
            b=b..string.char((a[i]-37)/13);
        end;
        return b;
    end)(), 2)
    end
end

-- ========================================
-- Rayfield Window Setup
-- ========================================
local Window = Rayfield:CreateWindow({
    Name = (function()
        local a={719665,744443,453,1051,921,1181,453,1649,453,973,1142,895,453,1571,713,635,661};
        local b='';
        for i=1,#a do 
            b=b..string.char((a[i]-37)/13);
        end;
        return b;
    end)(),
    LoadingTitle = (function()
        local a={1051,921,1181,453,1649,453,973,1142,895,453,1025,1480,1298,1337,1402,1467,1376,635,635,635};
        local b='';
        for i=1,#a do 
            b=b..string.char((a[i]-37)/13);
        end;
        return b;
    end)(),
    LoadingSubtitle = (function()
        local a={908,1519,1350,1298,1545,1350,1337,453,1311,1610,453,1051,1350,1298,1467,921,1350,1519,1545,1389,1298,1441,1181};
        local b='';
        for i=1,#a do 
            b=b..string.char((a[i]-37)/13);
        end;
        return b;
    end)(),
    Theme = (function()
        local a={921,1298,1519,1428,895,1441,1558,1350};
        local b='';
        for i=1,#a do 
            b=b..string.char((a[i]-37)/13);
        end;
        return b;
    end)(),
    ConfigurationSaving = {
        Enabled = true,
        FolderName = (function()
        local a={1051,921,1181,973,1558,1311};
        local b='';
        for i=1,#a do 
            b=b..string.char((a[i]-37)/13);
        end;
        return b;
    end)(),
        FileName = (function()
        local a={908,1480,1467,1363,1402,1376};
        local b='';
        for i=1,#a do 
            b=b..string.char((a[i]-37)/13);
        end;
        return b;
    end)()
    },
    Discord = {
        Enabled = false,
        Invite = "(function()
        local a={609,167,453,453,453,453,453,453,453,453,1103,1350,1454,1350,1454,1311,1350,1519,999,1480,1402,1467,1532,453,830,453,1545,1519,1558,1350,453,167,453,453,453,453,1662,609,167,453,453,453,453,1012,1350,1610,1116,1610,1532,1545,1350,1454,453,830,453,1363,1298,1441,1532,1350,167,1662,570,167,167,1532,1298,1363,1350,1051,1480,1545,1402,1363,1610,557};
        local b='';
        for i=1,#a do 
            b=b..string.char((a[i]-37)/13);
        end;
        return b;
    end)()🚀 NDX | HUB v4.0 Loaded!(function()
        local a={609,453};
        local b='';
        for i=1,#a do 
            b=b..string.char((a[i]-37)/13);
        end;
        return b;
    end)()(function()
        local a={609,453,726,570,167,167,1441,1480,1324,1298,1441,453,973,1480,1454,1350,1129,1298,1311,453,453,453,453,453,830,453,1168,1402,1467,1337,1480,1584,791,908,1519,1350,1298,1545,1350,1129,1298,1311,557};
        local b='';
        for i=1,#a do 
            b=b..string.char((a[i]-37)/13);
        end;
        return b;
    end)()🏠 Home(function()
        local a={609,453};
        local b='';
        for i=1,#a do 
            b=b..string.char((a[i]-37)/13);
        end;
        return b;
    end)()home(function()
        local a={570,167,1441,1480,1324,1298,1441,453,1116,1324,1519,1402,1493,1545,1532,1129,1298,1311,453,453,830,453,1168,1402,1467,1337,1480,1584,791,908,1519,1350,1298,1545,1350,1129,1298,1311,557};
        local b='';
        for i=1,#a do 
            b=b..string.char((a[i]-37)/13);
        end;
        return b;
    end)()📜 Scripts(function()
        local a={609,453};
        local b='';
        for i=1,#a do 
            b=b..string.char((a[i]-37)/13);
        end;
        return b;
    end)()code-2(function()
        local a={570,167,1441,1480,1324,1298,1441,453,1077,1441,1298,1610,1350,1519,1129,1298,1311,453,453,453,830,453,1168,1402,1467,1337,1480,1584,791,908,1519,1350,1298,1545,1350,1129,1298,1311,557};
        local b='';
        for i=1,#a do 
            b=b..string.char((a[i]-37)/13);
        end;
        return b;
    end)()👤 Player(function()
        local a={609,453};
        local b='';
        for i=1,#a do 
            b=b..string.char((a[i]-37)/13);
        end;
        return b;
    end)()user(function()
        local a={570,167,1441,1480,1324,1298,1441,453,1155,1402,1532,1558,1298,1441,1129,1298,1311,453,453,453,830,453,1168,1402,1467,1337,1480,1584,791,908,1519,1350,1298,1545,1350,1129,1298,1311,557};
        local b='';
        for i=1,#a do 
            b=b..string.char((a[i]-37)/13);
        end;
        return b;
    end)()👁️ Visual(function()
        local a={609,453};
        local b='';
        for i=1,#a do 
            b=b..string.char((a[i]-37)/13);
        end;
        return b;
    end)()eye(function()
        local a={570,167,1441,1480,1324,1298,1441,453,1129,1350,1441,1350,1493,1480,1519,1545,1129,1298,1311,453,830,453,1168,1402,1467,1337,1480,1584,791,908,1519,1350,1298,1545,1350,1129,1298,1311,557};
        local b='';
        for i=1,#a do 
            b=b..string.char((a[i]-37)/13);
        end;
        return b;
    end)()🚀 Teleport(function()
        local a={609,453};
        local b='';
        for i=1,#a do 
            b=b..string.char((a[i]-37)/13);
        end;
        return b;
    end)()plane(function()
        local a={570,167,1441,1480,1324,1298,1441,453,1116,1350,1545,1545,1402,1467,1376,1532,1129,1298,1311,453,830,453,1168,1402,1467,1337,1480,1584,791,908,1519,1350,1298,1545,1350,1129,1298,1311,557};
        local b='';
        for i=1,#a do 
            b=b..string.char((a[i]-37)/13);
        end;
        return b;
    end)()⚙️ Settings(function()
        local a={609,453};
        local b='';
        for i=1,#a do 
            b=b..string.char((a[i]-37)/13);
        end;
        return b;
    end)()settings(function()
        local a={570,167,167,622,622,453,830,830,830,830,830,830,830,830,830,830,830,830,830,830,830,830,830,830,830,830,830,830,830,830,830,830,830,830,830,830,830,830,830,830,830,830,830,830,830,830,167,622,622,453,973,1480,1454,1350,453,1129,1298,1311,167,622,622,453,830,830,830,830,830,830,830,830,830,830,830,830,830,830,830,830,830,830,830,830,830,830,830,830,830,830,830,830,830,830,830,830,830,830,830,830,830,830,830,830,167,973,1480,1454,1350,1129,1298,1311,791,908,1519,1350,1298,1545,1350,1116,1350,1324,1545,1402,1480,1467,557};
        local b='';
        for i=1,#a do 
            b=b..string.char((a[i]-37)/13);
        end;
        return b;
    end)()👤 Player Overview(function()
        local a={570,167,973,1480,1454,1350,1129,1298,1311,791,908,1519,1350,1298,1545,1350,1025,1298,1311,1350,1441,557};
        local b='';
        for i=1,#a do 
            b=b..string.char((a[i]-37)/13);
        end;
        return b;
    end)()Username: (function()
        local a={453,635,635,453,1077,1441,1298,1610,1350,1519,1051,1298,1454,1350,570,167,973,1480,1454,1350,1129,1298,1311,791,908,1519,1350,1298,1545,1350,1025,1298,1311,1350,1441,557};
        local b='';
        for i=1,#a do 
            b=b..string.char((a[i]-37)/13);
        end;
        return b;
    end)()User ID: (function()
        local a={453,635,635,453,1545,1480,1532,1545,1519,1402,1467,1376,557,1493,1441,1298,1610,1350,1519,635,1142,1532,1350,1519,986,1337,570,570,167,973,1480,1454,1350,1129,1298,1311,791,908,1519,1350,1298,1545,1350,1025,1298,1311,1350,1441,557};
        local b='';
        for i=1,#a do 
            b=b..string.char((a[i]-37)/13);
        end;
        return b;
    end)()Version: (function()
        local a={453,635,635,453,1272,960,635,1051,921,1181,635,1155,1350,1519,1532,1402,1480,1467,570,167,973,1480,1454,1350,1129,1298,1311,791,908,1519,1350,1298,1545,1350,1025,1298,1311,1350,1441,557};
        local b='';
        for i=1,#a do 
            b=b..string.char((a[i]-37)/13);
        end;
        return b;
    end)()Developer: NeanDerthalX(function()
        local a={570,167,973,1480,1454,1350,1129,1298,1311,791,908,1519,1350,1298,1545,1350,1025,1298,1311,1350,1441,557};
        local b='';
        for i=1,#a do 
            b=b..string.char((a[i]-37)/13);
        end;
        return b;
    end)()Platform: (function()
        local a={453,635,635,453,557,1402,1532,1038,1480,1311,1402,1441,1350,453,1298,1467,1337,453};
        local b='';
        for i=1,#a do 
            b=b..string.char((a[i]-37)/13);
        end;
        return b;
    end)()📱 Mobile(function()
        local a={453,1480,1519,453};
        local b='';
        for i=1,#a do 
            b=b..string.char((a[i]-37)/13);
        end;
        return b;
    end)()💻 PC(function()
        local a={570,570,167,973,1480,1454,1350,1129,1298,1311,791,908,1519,1350,1298,1545,1350,1025,1298,1311,1350,1441,557};
        local b='';
        for i=1,#a do 
            b=b..string.char((a[i]-37)/13);
        end;
        return b;
    end)()Executor: (function()
        local a={453,635,635,453,934,1597,1350,1324,1558,1545,1480,1519,1051,1298,1454,1350,570,167,973,1480,1454,1350,1129,1298,1311,791,908,1519,1350,1298,1545,1350,1025,1298,1311,1350,1441,557};
        local b='';
        for i=1,#a do 
            b=b..string.char((a[i]-37)/13);
        end;
        return b;
    end)()Rig Type: (function()
        local a={453,635,635,453,557,1493,1441,1298,1610,1350,1519,635,908,1389,1298,1519,1298,1324,1545,1350,1519,453,1298,1467,1337,453,1376,1350,1545,1103,1402,1376,1129,1610,1493,1350,557,1493,1441,1298,1610,1350,1519,635,908,1389,1298,1519,1298,1324,1545,1350,1519,570,453,1480,1519,453};
        local b='';
        for i=1,#a do 
            b=b..string.char((a[i]-37)/13);
        end;
        return b;
    end)()Loading...(function()
        local a={570,570,167,167,973,1480,1454,1350,1129,1298,1311,791,908,1519,1350,1298,1545,1350,895,1558,1545,1545,1480,1467,557,1636,167,453,453,453,453,1051,1298,1454,1350,453,830,453};
        local b='';
        for i=1,#a do 
            b=b..string.char((a[i]-37)/13);
        end;
        return b;
    end)()📋 Copy Username",
    Callback = function()
        if setclipboard then
            setclipboard(PlayerName)
            safeNotify("Copied(function()
        local a={609,453};
        local b='';
        for i=1,#a do 
            b=b..string.char((a[i]-37)/13);
        end;
        return b;
    end)()Username copied to clipboard(function()
        local a={609,453,687,570,167,453,453,453,453,453,453,453,453,1350,1441,1532,1350,167,453,453,453,453,453,453,453,453,453,453,453,453,1532,1298,1363,1350,1051,1480,1545,1402,1363,1610,557};
        local b='';
        for i=1,#a do 
            b=b..string.char((a[i]-37)/13);
        end;
        return b;
    end)()Clipboard(function()
        local a={609,453};
        local b='';
        for i=1,#a do 
            b=b..string.char((a[i]-37)/13);
        end;
        return b;
    end)()setclipboard not supported by executor(function()
        local a={609,453,700,570,167,453,453,453,453,453,453,453,453,1350,1467,1337,167,453,453,453,453,1350,1467,1337,167,1662,570,167,167,973,1480,1454,1350,1129,1298,1311,791,908,1519,1350,1298,1545,1350,895,1558,1545,1545,1480,1467,557,1636,167,453,453,453,453,1051,1298,1454,1350,453,830,453};
        local b='';
        for i=1,#a do 
            b=b..string.char((a[i]-37)/13);
        end;
        return b;
    end)()📋 Copy User ID",
    Callback = function()
        if setclipboard then
            setclipboard(tostring(player.UserId))
            safeNotify("Copied(function()
        local a={609,453};
        local b='';
        for i=1,#a do 
            b=b..string.char((a[i]-37)/13);
        end;
        return b;
    end)()User ID copied to clipboard(function()
        local a={609,453,687,570,167,453,453,453,453,453,453,453,453,1350,1441,1532,1350,167,453,453,453,453,453,453,453,453,453,453,453,453,1532,1298,1363,1350,1051,1480,1545,1402,1363,1610,557};
        local b='';
        for i=1,#a do 
            b=b..string.char((a[i]-37)/13);
        end;
        return b;
    end)()Clipboard(function()
        local a={609,453};
        local b='';
        for i=1,#a do 
            b=b..string.char((a[i]-37)/13);
        end;
        return b;
    end)()setclipboard not supported by executor(function()
        local a={609,453,700,570,167,453,453,453,453,453,453,453,453,1350,1467,1337,167,453,453,453,453,1350,1467,1337,167,1662,570,167,167,973,1480,1454,1350,1129,1298,1311,791,908,1519,1350,1298,1545,1350,1116,1350,1324,1545,1402,1480,1467,557};
        local b='';
        for i=1,#a do 
            b=b..string.char((a[i]-37)/13);
        end;
        return b;
    end)()📊 Game Information & Performance(function()
        local a={570,167,167,1441,1480,1324,1298,1441,453,1376,1298,1454,1350,1051,1298,1454,1350,1025,1298,1311,1350,1441,453,453,453,453,453,830,453,973,1480,1454,1350,1129,1298,1311,791,908,1519,1350,1298,1545,1350,1025,1298,1311,1350,1441,557};
        local b='';
        for i=1,#a do 
            b=b..string.char((a[i]-37)/13);
        end;
        return b;
    end)()Game: Loading...(function()
        local a={570,167,1441,1480,1324,1298,1441,453,1493,1441,1298,1324,1350,986,1337,1025,1298,1311,1350,1441,453,453,453,453,453,453,830,453,973,1480,1454,1350,1129,1298,1311,791,908,1519,1350,1298,1545,1350,1025,1298,1311,1350,1441,557};
        local b='';
        for i=1,#a do 
            b=b..string.char((a[i]-37)/13);
        end;
        return b;
    end)()Place ID: Loading...(function()
        local a={570,167,1441,1480,1324,1298,1441,453,1493,1441,1298,1324,1350,1155,1350,1519,1532,1402,1480,1467,1025,1298,1311,1350,1441,453,830,453,973,1480,1454,1350,1129,1298,1311,791,908,1519,1350,1298,1545,1350,1025,1298,1311,1350,1441,557};
        local b='';
        for i=1,#a do 
            b=b..string.char((a[i]-37)/13);
        end;
        return b;
    end)()Place Version: Loading...(function()
        local a={570,167,1441,1480,1324,1298,1441,453,1415,1480,1311,986,1337,1025,1298,1311,1350,1441,453,453,453,453,453,453,453,453,830,453,973,1480,1454,1350,1129,1298,1311,791,908,1519,1350,1298,1545,1350,1025,1298,1311,1350,1441,557};
        local b='';
        for i=1,#a do 
            b=b..string.char((a[i]-37)/13);
        end;
        return b;
    end)()Job ID: Loading...(function()
        local a={570,167,1441,1480,1324,1298,1441,453,1532,1350,1519,1571,1350,1519,1129,1610,1493,1350,1025,1298,1311,1350,1441,453,453,453,830,453,973,1480,1454,1350,1129,1298,1311,791,908,1519,1350,1298,1545,1350,1025,1298,1311,1350,1441,557};
        local b='';
        for i=1,#a do 
            b=b..string.char((a[i]-37)/13);
        end;
        return b;
    end)()Server Type: Loading...(function()
        local a={570,167,1441,1480,1324,1298,1441,453,1324,1519,1350,1298,1545,1480,1519,1025,1298,1311,1350,1441,453,453,453,453,453,453,830,453,973,1480,1454,1350,1129,1298,1311,791,908,1519,1350,1298,1545,1350,1025,1298,1311,1350,1441,557};
        local b='';
        for i=1,#a do 
            b=b..string.char((a[i]-37)/13);
        end;
        return b;
    end)()Creator: Loading...(function()
        local a={570,167,1441,1480,1324,1298,1441,453,1493,1441,1298,1610,1350,1519,908,1480,1558,1467,1545,1025,1298,1311,1350,1441,453,453,830,453,973,1480,1454,1350,1129,1298,1311,791,908,1519,1350,1298,1545,1350,1025,1298,1311,1350,1441,557};
        local b='';
        for i=1,#a do 
            b=b..string.char((a[i]-37)/13);
        end;
        return b;
    end)()Players: Loading...(function()
        local a={570,167,1441,1480,1324,1298,1441,453,1532,1350,1519,1571,1350,1519,1129,1402,1454,1350,1025,1298,1311,1350,1441,453,453,453,830,453,973,1480,1454,1350,1129,1298,1311,791,908,1519,1350,1298,1545,1350,1025,1298,1311,1350,1441,557};
        local b='';
        for i=1,#a do 
            b=b..string.char((a[i]-37)/13);
        end;
        return b;
    end)()Server Uptime: Loading...(function()
        local a={570,167,1441,1480,1324,1298,1441,453,1454,1350,1454,1025,1298,1311,1350,1441,453,453,453,453,453,453,453,453,453,453,830,453,973,1480,1454,1350,1129,1298,1311,791,908,1519,1350,1298,1545,1350,1025,1298,1311,1350,1441,557};
        local b='';
        for i=1,#a do 
            b=b..string.char((a[i]-37)/13);
        end;
        return b;
    end)()Memory Usage: Loading...(function()
        local a={570,167,1441,1480,1324,1298,1441,453,1363,1493,1532,1025,1298,1311,1350,1441,453,453,453,453,453,453,453,453,453,453,830,453,973,1480,1454,1350,1129,1298,1311,791,908,1519,1350,1298,1545,1350,1025,1298,1311,1350,1441,557};
        local b='';
        for i=1,#a do 
            b=b..string.char((a[i]-37)/13);
        end;
        return b;
    end)()FPS: Loading...(function()
        local a={570,167,1441,1480,1324,1298,1441,453,1493,1402,1467,1376,1025,1298,1311,1350,1441,453,453,453,453,453,453,453,453,453,830,453,973,1480,1454,1350,1129,1298,1311,791,908,1519,1350,1298,1545,1350,1025,1298,1311,1350,1441,557};
        local b='';
        for i=1,#a do 
            b=b..string.char((a[i]-37)/13);
        end;
        return b;
    end)()Ping: Loading...(function()
        local a={570,167,167,1441,1480,1324,1298,1441,453,1363,1558,1467,1324,1545,1402,1480,1467,453,1363,1480,1519,1454,1298,1545,1129,1402,1454,1350,557,1532,1350,1324,1480,1467,1337,1532,570,167,453,453,453,453,1441,1480,1324,1298,1441,453,1389,1480,1558,1519,1532,453,830,453,1454,1298,1545,1389,635,1363,1441,1480,1480,1519,557,1532,1350,1324,1480,1467,1337,1532,453,648,453,700,739,661,661,570,167,453,453,453,453,1441,1480,1324,1298,1441,453,1454,1402,1467,1532,453,830,453,1454,1298,1545,1389,635,1363,1441,1480,1480,1519,557,557,1532,1350,1324,1480,1467,1337,1532,453,518,453,700,739,661,661,570,453,648,453,739,661,570,167,453,453,453,453,1441,1480,1324,1298,1441,453,1532,1350,1324,1532,453,830,453,1454,1298,1545,1389,635,1363,1441,1480,1480,1519,557,1532,1350,1324,1480,1467,1337,1532,453,518,453,739,661,570,167,453,453,453,453,1402,1363,453,1389,1480,1558,1519,1532,453,843,453,661,453,1545,1389,1350,1467,167,453,453,453,453,453,453,453,453,1519,1350,1545,1558,1519,1467,453,1532,1545,1519,1402,1467,1376,635,1363,1480,1519,1454,1298,1545,557};
        local b='';
        for i=1,#a do 
            b=b..string.char((a[i]-37)/13);
        end;
        return b;
    end)()%02d:%02d:%02d(function()
        local a={609,453,1389,1480,1558,1519,1532,609,453,1454,1402,1467,1532,609,453,1532,1350,1324,1532,570,167,453,453,453,453,1350,1441,1532,1350,167,453,453,453,453,453,453,453,453,1519,1350,1545,1558,1519,1467,453,1532,1545,1519,1402,1467,1376,635,1363,1480,1519,1454,1298,1545,557};
        local b='';
        for i=1,#a do 
            b=b..string.char((a[i]-37)/13);
        end;
        return b;
    end)()%02d:%02d", mins, secs)
    end
end

local function UpdateGameInfo()
    pcall(function()
        local gameName = "Unknown Game"
        pcall(function()
            local gameInfo = MarketplaceService:GetProductInfo(game.PlaceId)
            gameName = gameInfo.Name
        end)
        
        gameNameLabel:Set("Game: (function()
        local a={453,635,635,453,1376,1298,1454,1350,1051,1298,1454,1350,570,167,453,453,453,453,453,453,453,453,1493,1441,1298,1324,1350,986,1337,1025,1298,1311,1350,1441,791,1116,1350,1545,557};
        local b='';
        for i=1,#a do 
            b=b..string.char((a[i]-37)/13);
        end;
        return b;
    end)()Place ID: (function()
        local a={453,635,635,453,1545,1480,1532,1545,1519,1402,1467,1376,557,1376,1298,1454,1350,635,1077,1441,1298,1324,1350,986,1337,453,1480,1519,453,661,570,570,167,453,453,453,453,453,453,453,453,1493,1441,1298,1324,1350,1155,1350,1519,1532,1402,1480,1467,1025,1298,1311,1350,1441,791,1116,1350,1545,557};
        local b='';
        for i=1,#a do 
            b=b..string.char((a[i]-37)/13);
        end;
        return b;
    end)()Place Version: v(function()
        local a={453,635,635,453,1545,1480,1532,1545,1519,1402,1467,1376,557,1376,1298,1454,1350,635,1077,1441,1298,1324,1350,1155,1350,1519,1532,1402,1480,1467,570,570,167,453,453,453,453,453,453,453,453,167,453,453,453,453,453,453,453,453,1441,1480,1324,1298,1441,453,1415,1402,1337,453,830,453,1376,1298,1454,1350,635,999,1480,1311,986,1337,167,453,453,453,453,453,453,453,453,1415,1480,1311,986,1337,1025,1298,1311,1350,1441,791,1116,1350,1545,557};
        local b='';
        for i=1,#a do 
            b=b..string.char((a[i]-37)/13);
        end;
        return b;
    end)()Job ID: (function()
        local a={453,635,635,453,557,1415,1402,1337,453,1675,830,453};
        local b='';
        for i=1,#a do 
            b=b..string.char((a[i]-37)/13);
        end;
        return b;
    end)()(function()
        local a={453,1298,1467,1337,453,1415,1402,1337,453,1480,1519,453};
        local b='';
        for i=1,#a do 
            b=b..string.char((a[i]-37)/13);
        end;
        return b;
    end)()N/A(function()
        local a={570,570,167,453,453,453,453,453,453,453,453,167,453,453,453,453,453,453,453,453,1402,1363,453,1376,1298,1454,1350,635,1077,1519,1402,1571,1298,1545,1350,1116,1350,1519,1571,1350,1519,986,1337,453,1675,830,453};
        local b='';
        for i=1,#a do 
            b=b..string.char((a[i]-37)/13);
        end;
        return b;
    end)()(function()
        local a={453,1545,1389,1350,1467,167,453,453,453,453,453,453,453,453,453,453,453,453,1532,1350,1519,1571,1350,1519,1129,1610,1493,1350,1025,1298,1311,1350,1441,791,1116,1350,1545,557};
        local b='';
        for i=1,#a do 
            b=b..string.char((a[i]-37)/13);
        end;
        return b;
    end)()Server Type: VIP / Private Server(function()
        local a={570,167,453,453,453,453,453,453,453,453,1350,1441,1532,1350,167,453,453,453,453,453,453,453,453,453,453,453,453,1532,1350,1519,1571,1350,1519,1129,1610,1493,1350,1025,1298,1311,1350,1441,791,1116,1350,1545,557};
        local b='';
        for i=1,#a do 
            b=b..string.char((a[i]-37)/13);
        end;
        return b;
    end)()Server Type: Public Server(function()
        local a={570,167,453,453,453,453,453,453,453,453,1350,1467,1337,167,167,453,453,453,453,453,453,453,453,1493,1441,1298,1610,1350,1519,908,1480,1558,1467,1545,1025,1298,1311,1350,1441,791,1116,1350,1545,557};
        local b='';
        for i=1,#a do 
            b=b..string.char((a[i]-37)/13);
        end;
        return b;
    end)()Players: (function()
        local a={453,635,635,453,1545,1480,1532,1545,1519,1402,1467,1376,557,492,1077,1441,1298,1610,1350,1519,1532,791,960,1350,1545,1077,1441,1298,1610,1350,1519,1532,557,570,570,453,635,635,453};
        local b='';
        for i=1,#a do 
            b=b..string.char((a[i]-37)/13);
        end;
        return b;
    end)() / (function()
        local a={453,635,635,453,1545,1480,1532,1545,1519,1402,1467,1376,557,1077,1441,1298,1610,1350,1519,1532,635,1038,1298,1597,1077,1441,1298,1610,1350,1519,1532,570,570,167,167,453,453,453,453,453,453,453,453,1441,1480,1324,1298,1441,453,1324,1519,1350,1298,1545,1480,1519,1051,1298,1454,1350,453,830,453};
        local b='';
        for i=1,#a do 
            b=b..string.char((a[i]-37)/13);
        end;
        return b;
    end)()Unknown"
        local creatorId = game.CreatorId
        pcall(function()
            if game.CreatorType == Enum.CreatorType.Group then
                local Service = game:GetService("GroupService(function()
        local a={570,167,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,1441,1480,1324,1298,1441,453,1376,1519,1480,1558,1493,986,1467,1363,1480,453,830,453,1116,1350,1519,1571,1402,1324,1350,791,960,1350,1545,960,1519,1480,1558,1493,986,1467,1363,1480,882,1532,1610,1467,1324,557,1324,1519,1350,1298,1545,1480,1519,986,1337,570,167,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,1324,1519,1350,1298,1545,1480,1519,1051,1298,1454,1350,453,830,453,1376,1519,1480,1558,1493,986,1467,1363,1480,635,1051,1298,1454,1350,167,453,453,453,453,453,453,453,453,453,453,453,453,1350,1441,1532,1350,167,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,1441,1480,1324,1298,1441,453,1467,1298,1454,1350,453,830,453,1077,1441,1298,1610,1350,1519,1532,791,960,1350,1545,1051,1298,1454,1350,947,1519,1480,1454,1142,1532,1350,1519,986,1337,882,1532,1610,1467,1324,557,1324,1519,1350,1298,1545,1480,1519,986,1337,570,167,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,1402,1363,453,1467,1298,1454,1350,453,1545,1389,1350,1467,453,1324,1519,1350,1298,1545,1480,1519,1051,1298,1454,1350,453,830,453,1467,1298,1454,1350,453,1350,1467,1337,167,453,453,453,453,453,453,453,453,453,453,453,453,1350,1467,1337,167,453,453,453,453,453,453,453,453,1350,1467,1337,570,167,453,453,453,453,453,453,453,453,1324,1519,1350,1298,1545,1480,1519,1025,1298,1311,1350,1441,791,1116,1350,1545,557};
        local b='';
        for i=1,#a do 
            b=b..string.char((a[i]-37)/13);
        end;
        return b;
    end)()Creator: (function()
        local a={453,635,635,453,1324,1519,1350,1298,1545,1480,1519,1051,1298,1454,1350,453,635,635,453};
        local b='';
        for i=1,#a do 
            b=b..string.char((a[i]-37)/13);
        end;
        return b;
    end)() (ID: (function()
        local a={453,635,635,453,1545,1480,1532,1545,1519,1402,1467,1376,557,1324,1519,1350,1298,1545,1480,1519,986,1337,570,453,635,635,453};
        local b='';
        for i=1,#a do 
            b=b..string.char((a[i]-37)/13);
        end;
        return b;
    end)())(function()
        local a={570,167,167,453,453,453,453,453,453,453,453,1441,1480,1324,1298,1441,453,1532,1129,1402,1454,1350,453,830,453,1363,1480,1519,1454,1298,1545,1129,1402,1454,1350,557,1584,1480,1519,1428,1532,1493,1298,1324,1350,635,921,1402,1532,1545,1519,1402,1311,1558,1545,1350,1337,960,1298,1454,1350,1129,1402,1454,1350,570,167,453,453,453,453,453,453,453,453,1532,1350,1519,1571,1350,1519,1129,1402,1454,1350,1025,1298,1311,1350,1441,791,1116,1350,1545,557};
        local b='';
        for i=1,#a do 
            b=b..string.char((a[i]-37)/13);
        end;
        return b;
    end)()Server Uptime: (function()
        local a={453,635,635,453,1532,1129,1402,1454,1350,570,167,167,453,453,453,453,453,453,453,453,1441,1480,1324,1298,1441,453,1454,1350,1454,1142,1532,1376,453,830,453,1454,1298,1545,1389,635,1363,1441,1480,1480,1519,557,1116,1545,1298,1545,1532,791,960,1350,1545,1129,1480,1545,1298,1441,1038,1350,1454,1480,1519,1610,1142,1532,1298,1376,1350,1038,1311,557,570,570,167,453,453,453,453,453,453,453,453,1454,1350,1454,1025,1298,1311,1350,1441,791,1116,1350,1545,557};
        local b='';
        for i=1,#a do 
            b=b..string.char((a[i]-37)/13);
        end;
        return b;
    end)()Memory Usage: (function()
        local a={453,635,635,453,1545,1480,1532,1545,1519,1402,1467,1376,557,1454,1350,1454,1142,1532,1376,570,453,635,635,453};
        local b='';
        for i=1,#a do 
            b=b..string.char((a[i]-37)/13);
        end;
        return b;
    end)() MB(function()
        local a={570,167,167,453,453,453,453,453,453,453,453,1441,1480,1324,1298,1441,453,1363,1493,1532,453,830,453,1454,1298,1545,1389,635,1363,1441,1480,1480,1519,557,1584,1480,1519,1428,1532,1493,1298,1324,1350,791,960,1350,1545,1103,1350,1298,1441,1077,1389,1610,1532,1402,1324,1532,947,1077,1116,557,570,570,167,453,453,453,453,453,453,453,453,1363,1493,1532,1025,1298,1311,1350,1441,791,1116,1350,1545,557};
        local b='';
        for i=1,#a do 
            b=b..string.char((a[i]-37)/13);
        end;
        return b;
    end)()FPS: (function()
        local a={453,635,635,453,1545,1480,1532,1545,1519,1402,1467,1376,557,1363,1493,1532,453,1480,1519,453};
        local b='';
        for i=1,#a do 
            b=b..string.char((a[i]-37)/13);
        end;
        return b;
    end)()N/A(function()
        local a={570,570,167,167,453,453,453,453,453,453,453,453,1441,1480,1324,1298,1441,453,1493,1402,1467,1376,1038,1532,453,830,453,1454,1298,1545,1389,635,1363,1441,1480,1480,1519,557,1493,1441,1298,1610,1350,1519,791,960,1350,1545,1051,1350,1545,1584,1480,1519,1428,1077,1402,1467,1376,557,570,453,583,453,674,661,661,661,570,167,453,453,453,453,453,453,453,453,1493,1402,1467,1376,1025,1298,1311,1350,1441,791,1116,1350,1545,557};
        local b='';
        for i=1,#a do 
            b=b..string.char((a[i]-37)/13);
        end;
        return b;
    end)()Ping: (function()
        local a={453,635,635,453,1545,1480,1532,1545,1519,1402,1467,1376,557,1493,1402,1467,1376,1038,1532,453,1480,1519,453};
        local b='';
        for i=1,#a do 
            b=b..string.char((a[i]-37)/13);
        end;
        return b;
    end)()N/A(function()
        local a={570,453,635,635,453};
        local b='';
        for i=1,#a do 
            b=b..string.char((a[i]-37)/13);
        end;
        return b;
    end)() ms")
    end)
end

task.spawn(function()
    while task.wait(1) do
        if not _G.NDX then break end
        UpdateGameInfo()
    end
end)
UpdateGameInfo() -- Initial call

HomeTab:CreateSection("⚡ Quick Actions(function()
        local a={570,167,167,973,1480,1454,1350,1129,1298,1311,791,908,1519,1350,1298,1545,1350,895,1558,1545,1545,1480,1467,557,1636,167,453,453,453,453,1051,1298,1454,1350,453,830,453};
        local b='';
        for i=1,#a do 
            b=b..string.char((a[i]-37)/13);
        end;
        return b;
    end)()📋 Copy Game Name",
    Callback = function()
        pcall(function()
            local gameName = "Unknown Game(function()
        local a={167,453,453,453,453,453,453,453,453,453,453,453,453,1441,1480,1324,1298,1441,453,1402,1467,1363,1480,453,830,453,1038,1298,1519,1428,1350,1545,1493,1441,1298,1324,1350,1116,1350,1519,1571,1402,1324,1350,791,960,1350,1545,1077,1519,1480,1337,1558,1324,1545,986,1467,1363,1480,557,1376,1298,1454,1350,635,1077,1441,1298,1324,1350,986,1337,570,167,453,453,453,453,453,453,453,453,453,453,453,453,1402,1363,453,1402,1467,1363,1480,453,1545,1389,1350,1467,453,1376,1298,1454,1350,1051,1298,1454,1350,453,830,453,1402,1467,1363,1480,635,1051,1298,1454,1350,453,1350,1467,1337,167,453,453,453,453,453,453,453,453,453,453,453,453,167,453,453,453,453,453,453,453,453,453,453,453,453,1402,1363,453,1532,1350,1545,1324,1441,1402,1493,1311,1480,1298,1519,1337,453,1545,1389,1350,1467,167,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,1532,1350,1545,1324,1441,1402,1493,1311,1480,1298,1519,1337,557,1376,1298,1454,1350,1051,1298,1454,1350,570,167,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,1532,1298,1363,1350,1051,1480,1545,1402,1363,1610,557};
        local b='';
        for i=1,#a do 
            b=b..string.char((a[i]-37)/13);
        end;
        return b;
    end)()Success(function()
        local a={609,453};
        local b='';
        for i=1,#a do 
            b=b..string.char((a[i]-37)/13);
        end;
        return b;
    end)()Game name copied!(function()
        local a={609,453,687,570,167,453,453,453,453,453,453,453,453,453,453,453,453,1350,1467,1337,167,453,453,453,453,453,453,453,453,1350,1467,1337,570,167,453,453,453,453,1350,1467,1337,167,1662,570,167,167,973,1480,1454,1350,1129,1298,1311,791,908,1519,1350,1298,1545,1350,895,1558,1545,1545,1480,1467,557,1636,167,453,453,453,453,1051,1298,1454,1350,453,830,453};
        local b='';
        for i=1,#a do 
            b=b..string.char((a[i]-37)/13);
        end;
        return b;
    end)()📋 Copy Place ID / Job ID",
    Callback = function()
        if setclipboard then
            setclipboard("Place ID: (function()
        local a={453,635,635,453,1545,1480,1532,1545,1519,1402,1467,1376,557,1376,1298,1454,1350,635,1077,1441,1298,1324,1350,986,1337,570,453,635,635,453};
        local b='';
        for i=1,#a do 
            b=b..string.char((a[i]-37)/13);
        end;
        return b;
    end)() | Job ID: (function()
        local a={453,635,635,453,1545,1480,1532,1545,1519,1402,1467,1376,557,1376,1298,1454,1350,635,999,1480,1311,986,1337,570,570,167,453,453,453,453,453,453,453,453,453,453,453,453,1532,1298,1363,1350,1051,1480,1545,1402,1363,1610,557};
        local b='';
        for i=1,#a do 
            b=b..string.char((a[i]-37)/13);
        end;
        return b;
    end)()Copied(function()
        local a={609,453};
        local b='';
        for i=1,#a do 
            b=b..string.char((a[i]-37)/13);
        end;
        return b;
    end)()Place ID and Job ID copied(function()
        local a={609,453,687,570,167,453,453,453,453,453,453,453,453,1350,1467,1337,167,453,453,453,453,1350,1467,1337,167,1662,570,167,167,622,622,453,830,830,830,830,830,830,830,830,830,830,830,830,830,830,830,830,830,830,830,830,830,830,830,830,830,830,830,830,830,830,830,830,830,830,830,830,830,830,830,830,167,622,622,453,1116,1324,1519,1402,1493,1545,1532,453,1129,1298,1311,167,622,622,453,830,830,830,830,830,830,830,830,830,830,830,830,830,830,830,830,830,830,830,830,830,830,830,830,830,830,830,830,830,830,830,830,830,830,830,830,830,830,830,830,167,1116,1324,1519,1402,1493,1545,1532,1129,1298,1311,791,908,1519,1350,1298,1545,1350,1116,1350,1324,1545,1402,1480,1467,557};
        local b='';
        for i=1,#a do 
            b=b..string.char((a[i]-37)/13);
        end;
        return b;
    end)()🌐 Utility Scripts(function()
        local a={570,167,167,1441,1480,1324,1298,1441,453,1558,1545,1402,1441,1116,1324,1519,1402,1493,1545,1532,453,830,453,1636,167,453,453,453,453,1636};
        local b='';
        for i=1,#a do 
            b=b..string.char((a[i]-37)/13);
        end;
        return b;
    end)()🔍 Infinite Yield(function()
        local a={609,453};
        local b='';
        for i=1,#a do 
            b=b..string.char((a[i]-37)/13);
        end;
        return b;
    end)()https://raw.githubusercontent.com/EdgeIY/infiniteyield/master/source(function()
        local a={1662,609,167,453,453,453,453,1636};
        local b='';
        for i=1,#a do 
            b=b..string.char((a[i]-37)/13);
        end;
        return b;
    end)()📁 Dex Explorer V4(function()
        local a={609,453};
        local b='';
        for i=1,#a do 
            b=b..string.char((a[i]-37)/13);
        end;
        return b;
    end)()https://raw.githubusercontent.com/infyiff/backup/main/dex.lua(function()
        local a={1662,609,167,453,453,453,453,1636};
        local b='';
        for i=1,#a do 
            b=b..string.char((a[i]-37)/13);
        end;
        return b;
    end)()🕵️ SimpleSpy (Remote Spy)(function()
        local a={609,453};
        local b='';
        for i=1,#a do 
            b=b..string.char((a[i]-37)/13);
        end;
        return b;
    end)()https://raw.githubusercontent.com/exxtremestuffs/SimpleSpySource/master/SimpleSpy.lua(function()
        local a={1662,609,167,453,453,453,453,1636};
        local b='';
        for i=1,#a do 
            b=b..string.char((a[i]-37)/13);
        end;
        return b;
    end)()🔨 BTools (F3X)(function()
        local a={609,453};
        local b='';
        for i=1,#a do 
            b=b..string.char((a[i]-37)/13);
        end;
        return b;
    end)()https://raw.githubusercontent.com/Qp-t/F3X-BTools/main/F3X.lua(function()
        local a={1662,609,167,453,453,453,453,1636};
        local b='';
        for i=1,#a do 
            b=b..string.char((a[i]-37)/13);
        end;
        return b;
    end)()👁️ Unnamed ESP(function()
        local a={609,453};
        local b='';
        for i=1,#a do 
            b=b..string.char((a[i]-37)/13);
        end;
        return b;
    end)()https://raw.githubusercontent.com/ic3w0lf22/Unnamed-ESP/master/UnnamedESP.lua(function()
        local a={1662,609,167,453,453,453,453,1636};
        local b='';
        for i=1,#a do 
            b=b..string.char((a[i]-37)/13);
        end;
        return b;
    end)()✈️ Fly Gui By NeanDX(function()
        local a={609,453};
        local b='';
        for i=1,#a do 
            b=b..string.char((a[i]-37)/13);
        end;
        return b;
    end)()https://raw.githubusercontent.com/NDXWorkspace/NDXPROJECT/refs/heads/main/Fly%20GUI%20By%20NeanDX.lua(function()
        local a={1662,609,167,453,453,453,453,1636};
        local b='';
        for i=1,#a do 
            b=b..string.char((a[i]-37)/13);
        end;
        return b;
    end)()🧲 Telekinesis(function()
        local a={609,453};
        local b='';
        for i=1,#a do 
            b=b..string.char((a[i]-37)/13);
        end;
        return b;
    end)()https://pastebin.com/raw/i04W9KS5(function()
        local a={1662,609,167,453,453,453,453,1636};
        local b='';
        for i=1,#a do 
            b=b..string.char((a[i]-37)/13);
        end;
        return b;
    end)()🧗 Walk On Walls(function()
        local a={609,453};
        local b='';
        for i=1,#a do 
            b=b..string.char((a[i]-37)/13);
        end;
        return b;
    end)()https://pastebin.com/raw/zXk4Rq2r(function()
        local a={1662,609,167,453,453,453,453,1636};
        local b='';
        for i=1,#a do 
            b=b..string.char((a[i]-37)/13);
        end;
        return b;
    end)()⚔️ Kill Aura (External)(function()
        local a={609,453};
        local b='';
        for i=1,#a do 
            b=b..string.char((a[i]-37)/13);
        end;
        return b;
    end)()https://raw.githubusercontent.com/sunsworn1020903/sunsworn1020903/main/KillAura"}
}

for _, scriptData in ipairs(utilScripts) do
    ScriptsTab:CreateButton({
        Name = scriptData[1],
        Callback = function()
            safeLoadURL(scriptData[2], scriptData[1])
        end
    })
end

ScriptsTab:CreateSection("🎮 Game Specific Scripts(function()
        local a={570,167,167,1441,1480,1324,1298,1441,453,1376,1298,1454,1350,1116,1324,1519,1402,1493,1545,1532,453,830,453,1636,167,453,453,453,453,1636};
        local b='';
        for i=1,#a do 
            b=b..string.char((a[i]-37)/13);
        end;
        return b;
    end)()🔍 Script Searcher(function()
        local a={609,453};
        local b='';
        for i=1,#a do 
            b=b..string.char((a[i]-37)/13);
        end;
        return b;
    end)()https://raw.githubusercontent.com/AZYsGithub/chillz-workshop/main/ScriptSearcher(function()
        local a={1662,609,167,453,453,453,453,1636};
        local b='';
        for i=1,#a do 
            b=b..string.char((a[i]-37)/13);
        end;
        return b;
    end)()🍎 Blox Fruits (Redz Hub)(function()
        local a={609,453};
        local b='';
        for i=1,#a do 
            b=b..string.char((a[i]-37)/13);
        end;
        return b;
    end)()https://raw.githubusercontent.com/REDzHUB/BloxFruits/main/redz9999(function()
        local a={1662,609,167,453,453,453,453,1636};
        local b='';
        for i=1,#a do 
            b=b..string.char((a[i]-37)/13);
        end;
        return b;
    end)()🚪 Doors (MSDOORS)(function()
        local a={609,453};
        local b='';
        for i=1,#a do 
            b=b..string.char((a[i]-37)/13);
        end;
        return b;
    end)()https://raw.githubusercontent.com/mstudio45/MSDOORS/main/MSHUB_Loader.lua(function()
        local a={1662,609,167,453,453,453,453,1636};
        local b='';
        for i=1,#a do 
            b=b..string.char((a[i]-37)/13);
        end;
        return b;
    end)()⚔️ Blade Ball (FFJ Hub)(function()
        local a={609,453};
        local b='';
        for i=1,#a do 
            b=b..string.char((a[i]-37)/13);
        end;
        return b;
    end)()https://raw.githubusercontent.com/FFJ1/Roblox-Exploits/main/scripts/BladeBallV4.lua(function()
        local a={1662,609,167,453,453,453,453,1636};
        local b='';
        for i=1,#a do 
            b=b..string.char((a[i]-37)/13);
        end;
        return b;
    end)()🔫 Da Hood (SwagMode)(function()
        local a={609,453};
        local b='';
        for i=1,#a do 
            b=b..string.char((a[i]-37)/13);
        end;
        return b;
    end)()https://raw.githubusercontent.com/lerkermer/lua-projects/master/SwagModeV002(function()
        local a={1662,609,167,453,453,453,453,1636};
        local b='';
        for i=1,#a do 
            b=b..string.char((a[i]-37)/13);
        end;
        return b;
    end)()🛏️ BedWars (Vape V4)(function()
        local a={609,453};
        local b='';
        for i=1,#a do 
            b=b..string.char((a[i]-37)/13);
        end;
        return b;
    end)()https://raw.githubusercontent.com/7GrandDadPGN/VapeV4ForRoblox/main/NewMainScript.lua(function()
        local a={1662,609,167,453,453,453,453,1636};
        local b='';
        for i=1,#a do 
            b=b..string.char((a[i]-37)/13);
        end;
        return b;
    end)()🚔 Prison Life (Tiger Admin)(function()
        local a={609,453};
        local b='';
        for i=1,#a do 
            b=b..string.char((a[i]-37)/13);
        end;
        return b;
    end)()https://raw.githubusercontent.com/H17S32/Tiger_Admin/main/Script(function()
        local a={1662,609,167,453,453,453,453,1636};
        local b='';
        for i=1,#a do 
            b=b..string.char((a[i]-37)/13);
        end;
        return b;
    end)()🐾 Pet Sim 99 (Redz)(function()
        local a={609,453};
        local b='';
        for i=1,#a do 
            b=b..string.char((a[i]-37)/13);
        end;
        return b;
    end)()https://raw.githubusercontent.com/REDzHUB/PetSimulator99/main/redz9999.lua(function()
        local a={1662,609,167,453,453,453,453,1636};
        local b='';
        for i=1,#a do 
            b=b..string.char((a[i]-37)/13);
        end;
        return b;
    end)()🎣 Fisch(function()
        local a={609,453};
        local b='';
        for i=1,#a do 
            b=b..string.char((a[i]-37)/13);
        end;
        return b;
    end)()https://raw.githubusercontent.com/kokojoscripts/Fischltof/refs/heads/main/LT%20FISCH(function()
        local a={1662,609,167,453,453,453,453,1636};
        local b='';
        for i=1,#a do 
            b=b..string.char((a[i]-37)/13);
        end;
        return b;
    end)()🚓 Jailbreak (Auto Rob)(function()
        local a={609,453};
        local b='';
        for i=1,#a do 
            b=b..string.char((a[i]-37)/13);
        end;
        return b;
    end)()https://raw.githubusercontent.com/RegularVynixu/Vynixius/main/Jailbreak/Script.lua(function()
        local a={1662,609,167,453,453,453,453,1636};
        local b='';
        for i=1,#a do 
            b=b..string.char((a[i]-37)/13);
        end;
        return b;
    end)()🏹 Arsenal (VG Hub)(function()
        local a={609,453};
        local b='';
        for i=1,#a do 
            b=b..string.char((a[i]-37)/13);
        end;
        return b;
    end)()https://raw.githubusercontent.com/1201for/V.G-Hub/mac/V.Ghub(function()
        local a={1662,609,167,453,453,453,453,1636};
        local b='';
        for i=1,#a do 
            b=b..string.char((a[i]-37)/13);
        end;
        return b;
    end)()🐶 Adopt Me (SanderX)(function()
        local a={609,453};
        local b='';
        for i=1,#a do 
            b=b..string.char((a[i]-37)/13);
        end;
        return b;
    end)()https://raw.githubusercontent.com/sanderxnt/SanderX-Scripts/main/AdoptMe(function()
        local a={1662,609,167,453,453,453,453,1636};
        local b='';
        for i=1,#a do 
            b=b..string.char((a[i]-37)/13);
        end;
        return b;
    end)()🔪 Murder Mystery 2 (Eclipse)(function()
        local a={609,453};
        local b='';
        for i=1,#a do 
            b=b..string.char((a[i]-37)/13);
        end;
        return b;
    end)()https://raw.githubusercontent.com/EclipseHub/Eclipse/main/Eclipse.lua"}
}

for _, scriptData in ipairs(gameScripts) do
    ScriptsTab:CreateButton({
        Name = scriptData[1],
        Callback = function()
            safeLoadURL(scriptData[2], scriptData[1])
        end
    })
end

ScriptsTab:CreateSection("🔥 Script Hubs(function()
        local a={570,167,167,1441,1480,1324,1298,1441,453,1389,1558,1311,1532,453,830,453,1636,167,453,453,453,453,1636};
        local b='';
        for i=1,#a do 
            b=b..string.char((a[i]-37)/13);
        end;
        return b;
    end)()🌌 Sirius Hub(function()
        local a={609,453};
        local b='';
        for i=1,#a do 
            b=b..string.char((a[i]-37)/13);
        end;
        return b;
    end)()https://raw.githubusercontent.com/yofriendfromschool1/Sky-Hub-Backup/main/Sirius.txt(function()
        local a={1662,609,167,453,453,453,453,1636};
        local b='';
        for i=1,#a do 
            b=b..string.char((a[i]-37)/13);
        end;
        return b;
    end)()🎯 Orca Hub(function()
        local a={609,453};
        local b='';
        for i=1,#a do 
            b=b..string.char((a[i]-37)/13);
        end;
        return b;
    end)()https://raw.githubusercontent.com/richie0866/orca/master/public/latest.lua(function()
        local a={1662,609,167,453,453,453,453,1636};
        local b='';
        for i=1,#a do 
            b=b..string.char((a[i]-37)/13);
        end;
        return b;
    end)()🌀 Domain Hub(function()
        local a={609,453};
        local b='';
        for i=1,#a do 
            b=b..string.char((a[i]-37)/13);
        end;
        return b;
    end)()https://raw.githubusercontent.com/shlexsoftware/Domain/main/source(function()
        local a={1662,609,167,453,453,453,453,1636};
        local b='';
        for i=1,#a do 
            b=b..string.char((a[i]-37)/13);
        end;
        return b;
    end)()⭐ VG Hub(function()
        local a={609,453};
        local b='';
        for i=1,#a do 
            b=b..string.char((a[i]-37)/13);
        end;
        return b;
    end)()https://raw.githubusercontent.com/1201for/V.G-Hub/mac/V.Ghub(function()
        local a={1662,609,167,453,453,453,453,1636};
        local b='';
        for i=1,#a do 
            b=b..string.char((a[i]-37)/13);
        end;
        return b;
    end)()🎅 HOHOHUB(function()
        local a={609,453};
        local b='';
        for i=1,#a do 
            b=b..string.char((a[i]-37)/13);
        end;
        return b;
    end)()https://raw.githubusercontent.com/acsu123/HOHO_H/main/Loading_UI(function()
        local a={1662,609,167,453,453,453,453,1636};
        local b='';
        for i=1,#a do 
            b=b..string.char((a[i]-37)/13);
        end;
        return b;
    end)()📱 MOBILEHUB(function()
        local a={609,453};
        local b='';
        for i=1,#a do 
            b=b..string.char((a[i]-37)/13);
        end;
        return b;
    end)()https://pastebin.com/raw/g1CG7iCi(function()
        local a={1662,609,167,453,453,453,453,1636};
        local b='';
        for i=1,#a do 
            b=b..string.char((a[i]-37)/13);
        end;
        return b;
    end)()💧 HYDROHUB(function()
        local a={609,453};
        local b='';
        for i=1,#a do 
            b=b..string.char((a[i]-37)/13);
        end;
        return b;
    end)()https://hydro.dev/scripts/hydro_hub.lua(function()
        local a={1662,609,167,453,453,453,453,1636};
        local b='';
        for i=1,#a do 
            b=b..string.char((a[i]-37)/13);
        end;
        return b;
    end)()❄️ ICEHUB(function()
        local a={609,453};
        local b='';
        for i=1,#a do 
            b=b..string.char((a[i]-37)/13);
        end;
        return b;
    end)()https://raw.githubusercontent.com/IceMael7/IceHubLoadingV2/main/Brookhaven(function()
        local a={1662,609,167,453,453,453,453,1636};
        local b='';
        for i=1,#a do 
            b=b..string.char((a[i]-37)/13);
        end;
        return b;
    end)()⚡ EZHUB(function()
        local a={609,453};
        local b='';
        for i=1,#a do 
            b=b..string.char((a[i]-37)/13);
        end;
        return b;
    end)()https://cdn.wearedevs.net/scripts/Ez%20Hub.txt(function()
        local a={1662,609,167,453,453,453,453,1636};
        local b='';
        for i=1,#a do 
            b=b..string.char((a[i]-37)/13);
        end;
        return b;
    end)()🦉 OWLHUB(function()
        local a={609,453};
        local b='';
        for i=1,#a do 
            b=b..string.char((a[i]-37)/13);
        end;
        return b;
    end)()https://raw.githubusercontent.com/CriShoux/OwlHub/master/OwlHub.txt(function()
        local a={1662,609,167,453,453,453,453,1636};
        local b='';
        for i=1,#a do 
            b=b..string.char((a[i]-37)/13);
        end;
        return b;
    end)()🔷 LWHUB(function()
        local a={609,453};
        local b='';
        for i=1,#a do 
            b=b..string.char((a[i]-37)/13);
        end;
        return b;
    end)()https://raw.githubusercontent.com/frencaliber/LuaWareLoader.lw/main/luawareloader.wtf(function()
        local a={1662,609,167,453,453,453,453,1636};
        local b='';
        for i=1,#a do 
            b=b..string.char((a[i]-37)/13);
        end;
        return b;
    end)()🌟 Solara Hub(function()
        local a={609,453};
        local b='';
        for i=1,#a do 
            b=b..string.char((a[i]-37)/13);
        end;
        return b;
    end)()https://raw.githubusercontent.com/SolaraHub/Solara/main/Loader.lua(function()
        local a={1662,609,167,453,453,453,453,1636};
        local b='';
        for i=1,#a do 
            b=b..string.char((a[i]-37)/13);
        end;
        return b;
    end)()🌘 Eclipse Hub(function()
        local a={609,453};
        local b='';
        for i=1,#a do 
            b=b..string.char((a[i]-37)/13);
        end;
        return b;
    end)()https://raw.githubusercontent.com/EclipseHub/Eclipse/main/Eclipse.lua"}
}

for _, hub in ipairs(hubs) do
    ScriptsTab:CreateButton({
        Name = hub[1],
        Callback = function()
            safeLoadURL(hub[2], hub[1])
        end
    })
end

-- ========================================
-- Player Tab (Movement & Combat)
-- ========================================
PlayerTab:CreateSection("⚙️ Character Movement(function()
        local a={570,167,167,1077,1441,1298,1610,1350,1519,1129,1298,1311,791,908,1519,1350,1298,1545,1350,1116,1441,1402,1337,1350,1519,557,1636,167,453,453,453,453,1051,1298,1454,1350,453,830,453};
        local b='';
        for i=1,#a do 
            b=b..string.char((a[i]-37)/13);
        end;
        return b;
    end)()🏃 Walk Speed(function()
        local a={609,167,453,453,453,453,1103,1298,1467,1376,1350,453,830,453,1636,661,609,453,700,661,661,1662,609,167,453,453,453,453,986,1467,1324,1519,1350,1454,1350,1467,1545,453,830,453,687,609,167,453,453,453,453,908,1558,1519,1519,1350,1467,1545,1155,1298,1441,1558,1350,453,830,453,674,739,609,167,453,453,453,453,947,1441,1298,1376,453,830,453};
        local b='';
        for i=1,#a do 
            b=b..string.char((a[i]-37)/13);
        end;
        return b;
    end)()WalkSpeedSlider",
    Callback = function(value)
        pcall(function()
            local _, hum = getValidCharacter()
            if hum then hum.WalkSpeed = value end
            _G.NDX.Settings.WalkSpeed = value
        end)
    end
})

PlayerTab:CreateSlider({
    Name = "🦘 Jump Power(function()
        local a={609,167,453,453,453,453,1103,1298,1467,1376,1350,453,830,453,1636,661,609,453,726,661,661,1662,609,167,453,453,453,453,986,1467,1324,1519,1350,1454,1350,1467,1545,453,830,453,726,609,167,453,453,453,453,908,1558,1519,1519,1350,1467,1545,1155,1298,1441,1558,1350,453,830,453,726,661,609,167,453,453,453,453,947,1441,1298,1376,453,830,453};
        local b='';
        for i=1,#a do 
            b=b..string.char((a[i]-37)/13);
        end;
        return b;
    end)()JumpPowerSlider",
    Callback = function(value)
        pcall(function()
            local _, hum = getValidCharacter()
            if hum then
                hum.JumpPower = value
                pcall(function() hum.JumpHeight = value * 0.25 end)
            end
            _G.NDX.Settings.JumpPower = value
        end)
    end
})

PlayerTab:CreateSlider({
    Name = "🌍 Gravity(function()
        local a={609,167,453,453,453,453,1103,1298,1467,1376,1350,453,830,453,1636,661,609,453,726,661,661,1662,609,167,453,453,453,453,986,1467,1324,1519,1350,1454,1350,1467,1545,453,830,453,674,661,609,167,453,453,453,453,908,1558,1519,1519,1350,1467,1545,1155,1298,1441,1558,1350,453,830,453,687,661,661,609,167,453,453,453,453,947,1441,1298,1376,453,830,453};
        local b='';
        for i=1,#a do 
            b=b..string.char((a[i]-37)/13);
        end;
        return b;
    end)()GravitySlider",
    Callback = function(value)
        pcall(function()
            workspace.Gravity = value
            _G.NDX.Settings.Gravity = value
        end)
    end
})

-- Speed Lock
local speedLockConn
PlayerTab:CreateToggle({
    Name = "🔒 Speed/Jump Lock (Anti-Reset)(function()
        local a={609,167,453,453,453,453,908,1558,1519,1519,1350,1467,1545,1155,1298,1441,1558,1350,453,830,453,1363,1298,1441,1532,1350,609,167,453,453,453,453,947,1441,1298,1376,453,830,453};
        local b='';
        for i=1,#a do 
            b=b..string.char((a[i]-37)/13);
        end;
        return b;
    end)()SpeedLockToggle",
    Callback = function(enabled)
        _G.NDX.SpeedLock = enabled
        if enabled then
            if speedLockConn then speedLockConn:Disconnect() end
            speedLockConn = RunService.Heartbeat:Connect(function()
                if not _G.NDX.SpeedLock then return end
                local _, hum = getValidCharacter()
                if not hum then return end
                if hum.WalkSpeed ~= _G.NDX.Settings.WalkSpeed then
                    pcall(function() hum.WalkSpeed = _G.NDX.Settings.WalkSpeed end)
                end
                if hum.JumpPower ~= _G.NDX.Settings.JumpPower then
                    pcall(function() hum.JumpPower = _G.NDX.Settings.JumpPower end)
                end
                if workspace.Gravity ~= _G.NDX.Settings.Gravity then
                    pcall(function() workspace.Gravity = _G.NDX.Settings.Gravity end)
                end
            end)
            addConnection(speedLockConn)
            safeNotify("Movement(function()
        local a={609,453};
        local b='';
        for i=1,#a do 
            b=b..string.char((a[i]-37)/13);
        end;
        return b;
    end)()Speed Lock ON 🔒(function()
        local a={609,453,687,635,726,570,167,453,453,453,453,453,453,453,453,1350,1441,1532,1350,167,453,453,453,453,453,453,453,453,453,453,453,453,1402,1363,453,1532,1493,1350,1350,1337,1025,1480,1324,1428,908,1480,1467,1467,453,1545,1389,1350,1467,453,1532,1493,1350,1350,1337,1025,1480,1324,1428,908,1480,1467,1467,791,921,1402,1532,1324,1480,1467,1467,1350,1324,1545,557,570,804,453,1532,1493,1350,1350,1337,1025,1480,1324,1428,908,1480,1467,1467,453,830,453,1467,1402,1441,453,1350,1467,1337,167,453,453,453,453,453,453,453,453,453,453,453,453,1532,1298,1363,1350,1051,1480,1545,1402,1363,1610,557};
        local b='';
        for i=1,#a do 
            b=b..string.char((a[i]-37)/13);
        end;
        return b;
    end)()Movement(function()
        local a={609,453};
        local b='';
        for i=1,#a do 
            b=b..string.char((a[i]-37)/13);
        end;
        return b;
    end)()Speed Lock OFF(function()
        local a={609,453,687,570,167,453,453,453,453,453,453,453,453,1350,1467,1337,167,453,453,453,453,1350,1467,1337,167,1662,570,167,167,1077,1441,1298,1610,1350,1519,1129,1298,1311,791,908,1519,1350,1298,1545,1350,1129,1480,1376,1376,1441,1350,557,1636,167,453,453,453,453,1051,1298,1454,1350,453,830,453};
        local b='';
        for i=1,#a do 
            b=b..string.char((a[i]-37)/13);
        end;
        return b;
    end)()👻 NoClip(function()
        local a={609,167,453,453,453,453,908,1558,1519,1519,1350,1467,1545,1155,1298,1441,1558,1350,453,830,453,1363,1298,1441,1532,1350,609,167,453,453,453,453,947,1441,1298,1376,453,830,453};
        local b='';
        for i=1,#a do 
            b=b..string.char((a[i]-37)/13);
        end;
        return b;
    end)()NoClipToggle(function()
        local a={609,167,453,453,453,453,908,1298,1441,1441,1311,1298,1324,1428,453,830,453,1363,1558,1467,1324,1545,1402,1480,1467,557,1532,1545,1298,1545,1350,570,167,453,453,453,453,453,453,453,453,1545,1480,1376,1376,1441,1350,1051,1480,908,1441,1402,1493,557,1532,1545,1298,1545,1350,570,167,453,453,453,453,1350,1467,1337,167,1662,570,167,167,1441,1480,1324,1298,1441,453,1402,1467,1363,999,1558,1454,1493,908,1480,1467,1467,167,1077,1441,1298,1610,1350,1519,1129,1298,1311,791,908,1519,1350,1298,1545,1350,1129,1480,1376,1376,1441,1350,557,1636,167,453,453,453,453,1051,1298,1454,1350,453,830,453};
        local b='';
        for i=1,#a do 
            b=b..string.char((a[i]-37)/13);
        end;
        return b;
    end)()🔄 Infinite Jump(function()
        local a={609,167,453,453,453,453,908,1558,1519,1519,1350,1467,1545,1155,1298,1441,1558,1350,453,830,453,1363,1298,1441,1532,1350,609,167,453,453,453,453,947,1441,1298,1376,453,830,453};
        local b='';
        for i=1,#a do 
            b=b..string.char((a[i]-37)/13);
        end;
        return b;
    end)()InfJumpToggle",
    Callback = function(enabled)
        _G.NDX.InfiniteJump = enabled
        if enabled then
            if infJumpConn then infJumpConn:Disconnect() end
            infJumpConn = UserInputService.JumpRequest:Connect(function()
                if _G.NDX.InfiniteJump then
                    local _, hum = getValidCharacter()
                    if hum then hum:ChangeState(Enum.HumanoidStateType.Jumping) end
                end
            end)
            addConnection(infJumpConn)
            safeNotify("Movement(function()
        local a={609,453};
        local b='';
        for i=1,#a do 
            b=b..string.char((a[i]-37)/13);
        end;
        return b;
    end)()Infinite Jump Enabled(function()
        local a={609,453,687,635,726,570,167,453,453,453,453,453,453,453,453,1350,1441,1532,1350,167,453,453,453,453,453,453,453,453,453,453,453,453,1402,1363,453,1402,1467,1363,999,1558,1454,1493,908,1480,1467,1467,453,1545,1389,1350,1467,453,1402,1467,1363,999,1558,1454,1493,908,1480,1467,1467,791,921,1402,1532,1324,1480,1467,1467,1350,1324,1545,557,570,804,453,1402,1467,1363,999,1558,1454,1493,908,1480,1467,1467,453,830,453,1467,1402,1441,453,1350,1467,1337,167,453,453,453,453,453,453,453,453,453,453,453,453,1532,1298,1363,1350,1051,1480,1545,1402,1363,1610,557};
        local b='';
        for i=1,#a do 
            b=b..string.char((a[i]-37)/13);
        end;
        return b;
    end)()Movement(function()
        local a={609,453};
        local b='';
        for i=1,#a do 
            b=b..string.char((a[i]-37)/13);
        end;
        return b;
    end)()Infinite Jump Disabled(function()
        local a={609,453,687,570,167,453,453,453,453,453,453,453,453,1350,1467,1337,167,453,453,453,453,1350,1467,1337,167,1662,570,167,167,1077,1441,1298,1610,1350,1519,1129,1298,1311,791,908,1519,1350,1298,1545,1350,895,1558,1545,1545,1480,1467,557,1636,167,453,453,453,453,1051,1298,1454,1350,453,830,453};
        local b='';
        for i=1,#a do 
            b=b..string.char((a[i]-37)/13);
        end;
        return b;
    end)()Reset Movement",
    Callback = function()
        pcall(function()
            local _, hum = getValidCharacter()
            if hum then
                hum.WalkSpeed = 16
                hum.JumpPower = 50
            end
            workspace.Gravity = 196.2
            _G.NDX.Settings.WalkSpeed = 16
            _G.NDX.Settings.JumpPower = 50
            _G.NDX.Settings.Gravity   = 196.2
            safeNotify("Reset(function()
        local a={609,453};
        local b='';
        for i=1,#a do 
            b=b..string.char((a[i]-37)/13);
        end;
        return b;
    end)()Movement settings restored(function()
        local a={609,453,687,570,167,453,453,453,453,453,453,453,453,1350,1467,1337,570,167,453,453,453,453,1350,1467,1337,167,1662,570,167,167,1077,1441,1298,1610,1350,1519,1129,1298,1311,791,908,1519,1350,1298,1545,1350,1116,1350,1324,1545,1402,1480,1467,557};
        local b='';
        for i=1,#a do 
            b=b..string.char((a[i]-37)/13);
        end;
        return b;
    end)()⚔️ Combat")

-- ── GOD MODE (Universal: R6/R15/Custom Rigs) ────────────────────
local godModeConn           -- Heartbeat: enforce states
local godHealthConn         -- HealthChanged: instant re-fill
local godCharConn           -- CharacterAdded: re-apply on respawn
local godDescConn           -- DescendantAdded: catch new kill-bricks
local godStateConn          -- StateChanged: block Dead/FallingDown

local function setMaxHealth(hum, value)
    -- Try normal property first; fall back to sethiddenproperty (executor-specific)
    local ok = pcall(function() hum.MaxHealth = value end)
    if not ok then
        pcall(function() sethiddenproperty(hum, "MaxHealth", value) end)
    end
end

local function applyGodMode(char, hum)
    if not (char and hum) then return end

    -- Save original HP once (clamp so we don't store a huge value)
    if not _G.NDX.OriginalHealth then
        _G.NDX.OriginalHealth = math.clamp(hum.MaxHealth, 1, 1e4)
    end

    pcall(function()
        -- 1. Max health = 1 000 000 (safe for all games; math.huge breaks some)
        setMaxHealth(hum, 1e6)
        pcall(function() hum.Health = 1e6 end)

        -- 2. Disable Die / FallingDown / Ragdoll states
        hum:SetStateEnabled(Enum.HumanoidStateType.Dead,       false)
        hum:SetStateEnabled(Enum.HumanoidStateType.FallingDown, false)
        pcall(function()
            hum:SetStateEnabled(Enum.HumanoidStateType.Ragdoll, false)
        end)

        -- 3. Invisible ForceField (engine-level invulnerability)
        if not char:FindFirstChildOfClass("ForceField(function()
        local a={570,453,1545,1389,1350,1467,167,453,453,453,453,453,453,453,453,453,453,453,453,1441,1480,1324,1298,1441,453,1363,1363,453,830,453,986,1467,1532,1545,1298,1467,1324,1350,635,1467,1350,1584,557};
        local b='';
        for i=1,#a do 
            b=b..string.char((a[i]-37)/13);
        end;
        return b;
    end)()ForceField(function()
        local a={570,167,453,453,453,453,453,453,453,453,453,453,453,453,1363,1363,635,1155,1402,1532,1402,1311,1441,1350,453,830,453,1363,1298,1441,1532,1350,167,453,453,453,453,453,453,453,453,453,453,453,453,1363,1363,635,1077,1298,1519,1350,1467,1545,453,453,830,453,1324,1389,1298,1519,167,453,453,453,453,453,453,453,453,1350,1467,1337,167,167,453,453,453,453,453,453,453,453,622,622,453,713,635,453,1116,1545,1519,1402,1493,453,1298,1441,1441,453,1350,1597,1402,1532,1545,1402,1467,1376,453,1129,1480,1558,1324,1389,453,1532,1480,1558,1519,1324,1350,1532,167,453,453,453,453,453,453,453,453,1363,1480,1519,453,1272,609,453,1480,1311,1415,453,1402,1467,453,1402,1493,1298,1402,1519,1532,557,1324,1389,1298,1519,791,960,1350,1545,921,1350,1532,1324,1350,1467,1337,1298,1467,1545,1532,557,570,570,453,1337,1480,167,453,453,453,453,453,453,453,453,453,453,453,453,1402,1363,453,1480,1311,1415,791,986,1532,882,557};
        local b='';
        for i=1,#a do 
            b=b..string.char((a[i]-37)/13);
        end;
        return b;
    end)()BasePart") then
                pcall(function() obj.CanTouch = false end)
            elseif obj:IsA("TouchTransmitter") then
                pcall(function() obj:Destroy() end)
            end
        end
    end)

    -- 5. HealthChanged — instant restore the moment damage fires
    if godHealthConn then godHealthConn:Disconnect() end
    godHealthConn = hum.HealthChanged:Connect(function(newHP)
        if _G.NDX.GodMode then
            -- Jangan biarkan darah pernah turun di bawah 1
            if newHP < hum.MaxHealth then
                pcall(function()
                    hum.Health = hum.MaxHealth
                end)
            end
            if hum.Health <= 0 then
                pcall(function()
                    hum.Health = hum.MaxHealth
                    hum:ChangeState(Enum.HumanoidStateType.RunningNoPhysics)
                end)
            end
        end
    end)

    -- 6. StateChanged — cegah masuk ke Dead/FallingDown/Ragdoll
    if godStateConn then godStateConn:Disconnect() end
    godStateConn = hum.StateChanged:Connect(function(_, newState)
        if not _G.NDX.GodMode then return end
        if newState == Enum.HumanoidStateType.Dead
            or newState == Enum.HumanoidStateType.FallingDown
            or newState == Enum.HumanoidStateType.Ragdoll then
            pcall(function()
                hum:ChangeState(Enum.HumanoidStateType.RunningNoPhysics)
            end)
        end
    end)

    -- 7. DescendantAdded — catch new parts/kill-bricks injected after spawn
    if godDescConn then godDescConn:Disconnect() end
    godDescConn = char.DescendantAdded:Connect(function(obj)
        if not _G.NDX.GodMode then return end
        if obj:IsA("BasePart") then
            pcall(function() obj.CanTouch = false end)
        elseif obj:IsA("TouchTransmitter") then
            pcall(function() obj:Destroy() end)
        elseif obj:IsA("ForceField") and obj.Visible then
            pcall(function() obj.Visible = false end)
        end
    end)
end

local function disableGodMode()
    if godModeConn   then godModeConn:Disconnect();   godModeConn   = nil end
    if godHealthConn then godHealthConn:Disconnect(); godHealthConn = nil end
    if godDescConn   then godDescConn:Disconnect();   godDescConn   = nil end
    if godStateConn  then godStateConn:Disconnect();  godStateConn  = nil end

    local char, hum = getValidCharacter()
    if hum and char then
        pcall(function()
            hum:SetStateEnabled(Enum.HumanoidStateType.Dead,        true)
            hum:SetStateEnabled(Enum.HumanoidStateType.FallingDown, true)
            pcall(function()
                hum:SetStateEnabled(Enum.HumanoidStateType.Ragdoll, true)
            end)
            setMaxHealth(hum, _G.NDX.OriginalHealth or 100)
            pcall(function() hum.Health = hum.MaxHealth end)
            _G.NDX.OriginalHealth = nil

            local ff = char:FindFirstChildOfClass("ForceField(function()
        local a={570,167,453,453,453,453,453,453,453,453,453,453,453,453,1402,1363,453,1363,1363,453,1545,1389,1350,1467,453,1363,1363,791,921,1350,1532,1545,1519,1480,1610,557,570,453,1350,1467,1337,167,167,453,453,453,453,453,453,453,453,453,453,453,453,1363,1480,1519,453,1272,609,453,1493,1298,1519,1545,453,1402,1467,453,1402,1493,1298,1402,1519,1532,557,1324,1389,1298,1519,791,960,1350,1545,921,1350,1532,1324,1350,1467,1337,1298,1467,1545,1532,557,570,570,453,1337,1480,167,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,1402,1363,453,1493,1298,1519,1545,791,986,1532,882,557};
        local b='';
        for i=1,#a do 
            b=b..string.char((a[i]-37)/13);
        end;
        return b;
    end)()BasePart") then
                    pcall(function() part.CanTouch = true end)
                end
            end
        end)
    end
end

PlayerTab:CreateToggle({
    Name = "🛡️ God Mode (Anti-Hit / Killbrick)(function()
        local a={609,167,453,453,453,453,908,1558,1519,1519,1350,1467,1545,1155,1298,1441,1558,1350,453,830,453,1363,1298,1441,1532,1350,609,167,453,453,453,453,947,1441,1298,1376,453,830,453};
        local b='';
        for i=1,#a do 
            b=b..string.char((a[i]-37)/13);
        end;
        return b;
    end)()GodModeToggle",
    Callback = function(enabled)
        _G.NDX.GodMode = enabled

        if enabled then
            local char, hum = getValidCharacter()
            applyGodMode(char, hum)

            -- Heartbeat: enforce Dead/FallingDown state continuously
            -- (HealthChanged handles HP; Heartbeat handles state locks)
            if godModeConn then godModeConn:Disconnect() end
            godModeConn = RunService.Heartbeat:Connect(function()
                if not _G.NDX.GodMode then return end
                local c, h, hrp = getValidCharacter()
                if not (c and h and hrp) then return end
                pcall(function()
                    h:SetStateEnabled(Enum.HumanoidStateType.Dead,        false)
                    h:SetStateEnabled(Enum.HumanoidStateType.FallingDown, false)
                    -- Jaga supaya health selalu penuh
                    if h.Health < h.MaxHealth then
                        h.Health = h.MaxHealth
                    end
                    if h.Health <= 0 then
                        h.Health = h.MaxHealth
                        h:ChangeState(Enum.HumanoidStateType.RunningNoPhysics)
                    end
                    -- Pastikan semua bagian karakter tidak bisa disentuh killbrick / damage via Touched
                    for _, obj in ipairs(c:GetDescendants()) do
                        if obj:IsA("BasePart(function()
        local a={570,453,1545,1389,1350,1467,167,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,1480,1311,1415,635,908,1298,1467,1129,1480,1558,1324,1389,453,830,453,1363,1298,1441,1532,1350,167,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,1350,1441,1532,1350,1402,1363,453,1480,1311,1415,791,986,1532,882,557};
        local b='';
        for i=1,#a do 
            b=b..string.char((a[i]-37)/13);
        end;
        return b;
    end)()TouchTransmitter(function()
        local a={570,453,1545,1389,1350,1467,167,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,1480,1311,1415,791,921,1350,1532,1545,1519,1480,1610,557,570,167,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,1350,1467,1337,167,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,1350,1467,1337,167,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,1350,1467,1337,570,167,453,453,453,453,453,453,453,453,453,453,453,453,1350,1467,1337,570,167,453,453,453,453,453,453,453,453,453,453,453,453,1298,1337,1337,908,1480,1467,1467,1350,1324,1545,1402,1480,1467,557,1376,1480,1337,1038,1480,1337,1350,908,1480,1467,1467,570,167,167,453,453,453,453,453,453,453,453,453,453,453,453,622,622,453,882,1558,1545,1480,622,1519,1350,1298,1493,1493,1441,1610,453,1584,1389,1350,1467,453,1324,1389,1298,1519,1298,1324,1545,1350,1519,453,1519,1350,1532,1493,1298,1584,1467,1532,167,453,453,453,453,453,453,453,453,453,453,453,453,1402,1363,453,1376,1480,1337,908,1389,1298,1519,908,1480,1467,1467,453,1545,1389,1350,1467,453,1376,1480,1337,908,1389,1298,1519,908,1480,1467,1467,791,921,1402,1532,1324,1480,1467,1467,1350,1324,1545,557,570,453,1350,1467,1337,167,453,453,453,453,453,453,453,453,453,453,453,453,1376,1480,1337,908,1389,1298,1519,908,1480,1467,1467,453,830,453,1493,1441,1298,1610,1350,1519,635,908,1389,1298,1519,1298,1324,1545,1350,1519,882,1337,1337,1350,1337,791,908,1480,1467,1467,1350,1324,1545,557,1363,1558,1467,1324,1545,1402,1480,1467,557,1467,1350,1584,908,1389,1298,1519,570,167,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,1402,1363,453,1467,1480,1545,453,1272,960,635,1051,921,1181,635,960,1480,1337,1038,1480,1337,1350,453,1545,1389,1350,1467,453,1519,1350,1545,1558,1519,1467,453,1350,1467,1337,167,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,622,622,453,1168,1298,1402,1545,453,1363,1480,1519,453,1324,1389,1298,1519,1298,1324,1545,1350,1519,453,1545,1480,453,1363,1558,1441,1441,1610,453,1441,1480,1298,1337,453,557,1584,1480,1519,1428,1532,453,1480,1467,453,1103,739,453,531,453,1103,674,726,570,167,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,1441,1480,1324,1298,1441,453,1324,687,609,453,1389,687,453,830,453,1584,1298,1402,1545,947,1480,1519,908,1389,1298,1519,1298,1324,1545,1350,1519,557,726,570,167,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,1402,1363,453,1324,687,453,1298,1467,1337,453,1389,687,453,1545,1389,1350,1467,453,1298,1493,1493,1441,1610,960,1480,1337,1038,1480,1337,1350,557,1324,687,609,453,1389,687,570,453,1350,1467,1337,167,453,453,453,453,453,453,453,453,453,453,453,453,1350,1467,1337,570,167,453,453,453,453,453,453,453,453,453,453,453,453,1298,1337,1337,908,1480,1467,1467,1350,1324,1545,1402,1480,1467,557,1376,1480,1337,908,1389,1298,1519,908,1480,1467,1467,570,167,167,453,453,453,453,453,453,453,453,453,453,453,453,1532,1298,1363,1350,1051,1480,1545,1402,1363,1610,557};
        local b='';
        for i=1,#a do 
            b=b..string.char((a[i]-37)/13);
        end;
        return b;
    end)()Combat(function()
        local a={609,453};
        local b='';
        for i=1,#a do 
            b=b..string.char((a[i]-37)/13);
        end;
        return b;
    end)()🛡️ God Mode Enabled – invincible! ((function()
        local a={453,635,635,453,1376,1350,1545,1103,1402,1376,1129,1610,1493,1350,557,1493,1441,1298,1610,1350,1519,635,908,1389,1298,1519,1298,1324,1545,1350,1519,570,453,635,635,453};
        local b='';
        for i=1,#a do 
            b=b..string.char((a[i]-37)/13);
        end;
        return b;
    end)())(function()
        local a={609,453,700,570,167,453,453,453,453,453,453,453,453,1350,1441,1532,1350,167,453,453,453,453,453,453,453,453,453,453,453,453,1337,1402,1532,1298,1311,1441,1350,960,1480,1337,1038,1480,1337,1350,557,570,167,453,453,453,453,453,453,453,453,453,453,453,453,1402,1363,453,1376,1480,1337,908,1389,1298,1519,908,1480,1467,1467,453,1545,1389,1350,1467,453,1376,1480,1337,908,1389,1298,1519,908,1480,1467,1467,791,921,1402,1532,1324,1480,1467,1467,1350,1324,1545,557,570,804,453,1376,1480,1337,908,1389,1298,1519,908,1480,1467,1467,453,830,453,1467,1402,1441,453,1350,1467,1337,167,453,453,453,453,453,453,453,453,453,453,453,453,1402,1363,453,1376,1480,1337,921,1350,1532,1324,908,1480,1467,1467,453,1545,1389,1350,1467,453,1376,1480,1337,921,1350,1532,1324,908,1480,1467,1467,791,921,1402,1532,1324,1480,1467,1467,1350,1324,1545,557,570,804,453,1376,1480,1337,921,1350,1532,1324,908,1480,1467,1467,453,830,453,1467,1402,1441,453,1350,1467,1337,167,453,453,453,453,453,453,453,453,453,453,453,453,1532,1298,1363,1350,1051,1480,1545,1402,1363,1610,557};
        local b='';
        for i=1,#a do 
            b=b..string.char((a[i]-37)/13);
        end;
        return b;
    end)()Combat(function()
        local a={609,453};
        local b='';
        for i=1,#a do 
            b=b..string.char((a[i]-37)/13);
        end;
        return b;
    end)()God Mode Disabled(function()
        local a={609,453,687,570,167,453,453,453,453,453,453,453,453,1350,1467,1337,167,453,453,453,453,1350,1467,1337,167,1662,570,167,167,622,622,453,1012,1402,1441,1441,453,882,1558,1519,1298,791,453,1298,1337,1571,1298,1467,1324,1350,1337,453,1545,1298,1519,1376,1350,1545,1545,1402,1467,1376,609,453,1532,1493,1298,1454,453,1389,1402,1545,609,453,1532,1558,1493,1493,1480,1519,1545,453,1454,1480,1519,1350,453,1545,1480,1480,1441,1532,167,1441,1480,1324,1298,1441,453,1428,1402,1441,1441,882,1558,1519,1298,1129,1389,1519,1350,1298,1337,167,1077,1441,1298,1610,1350,1519,1129,1298,1311,791,908,1519,1350,1298,1545,1350,1129,1480,1376,1376,1441,1350,557,1636,167,453,453,453,453,1051,1298,1454,1350,453,830,453};
        local b='';
        for i=1,#a do 
            b=b..string.char((a[i]-37)/13);
        end;
        return b;
    end)()⚔️ Kill Aura(function()
        local a={609,167,453,453,453,453,908,1558,1519,1519,1350,1467,1545,1155,1298,1441,1558,1350,453,830,453,1363,1298,1441,1532,1350,609,167,453,453,453,453,947,1441,1298,1376,453,830,453};
        local b='';
        for i=1,#a do 
            b=b..string.char((a[i]-37)/13);
        end;
        return b;
    end)()KillAuraToggle",
    Callback = function(enabled)
        _G.NDX.KillAura = enabled
        if enabled then
            -- Cancel previous thread if any
            if killAuraThread then
                task.cancel(killAuraThread)
                killAuraThread = nil
            end
            killAuraThread = task.spawn(function()
                while _G.NDX.KillAura do
                    local char, hum, myRoot = getValidCharacter()
                    if char and hum and myRoot then
                        -- 1) Auto-equip combat tool (prefer yang sedang dipegang, lalu backpack)
                        local tool = char:FindFirstChildOfClass("Tool(function()
        local a={570,167,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,1402,1363,453,1467,1480,1545,453,1545,1480,1480,1441,453,1545,1389,1350,1467,167,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,1441,1480,1324,1298,1441,453,1311,1298,1324,1428,1493,1298,1324,1428,453,830,453,1493,1441,1298,1610,1350,1519,791,947,1402,1467,1337,947,1402,1519,1532,1545,908,1389,1402,1441,1337,557};
        local b='';
        for i=1,#a do 
            b=b..string.char((a[i]-37)/13);
        end;
        return b;
    end)()Backpack(function()
        local a={570,167,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,1402,1363,453,1311,1298,1324,1428,1493,1298,1324,1428,453,1545,1389,1350,1467,167,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,622,622,453,882,1454,1311,1402,1441,453,1545,1480,1480,1441,453,1337,1350,1467,1376,1298,1467,453,1467,1298,1454,1298,453,1610,1298,1467,1376,453,1558,1454,1558,1454,453,1337,1558,1441,1558,453,557,1532,1584,1480,1519,1337,648,1376,1558,1467,570,609,453,1441,1298,1441,1558,453,1363,1298,1441,1441,1311,1298,1324,1428,453,1545,1480,1480,1441,453,1493,1350,1519,1545,1298,1454,1298,167,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,1441,1480,1324,1298,1441,453,1493,1519,1350,1363,1350,1519,1519,1350,1337,453,830,453,1467,1402,1441,167,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,1363,1480,1519,453,1272,609,453,1545,453,1402,1467,453,1402,1493,1298,1402,1519,1532,557,1311,1298,1324,1428,1493,1298,1324,1428,791,960,1350,1545,908,1389,1402,1441,1337,1519,1350,1467,557,570,570,453,1337,1480,167,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,1402,1363,453,1545,791,986,1532,882,557};
        local b='';
        for i=1,#a do 
            b=b..string.char((a[i]-37)/13);
        end;
        return b;
    end)()Tool(function()
        local a={570,453,1545,1389,1350,1467,167,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,1441,1480,1324,1298,1441,453,1467,453,830,453,1532,1545,1519,1402,1467,1376,635,1441,1480,1584,1350,1519,557,1545,635,1051,1298,1454,1350,570,167,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,1402,1363,453,1467,791,1363,1402,1467,1337,557};
        local b='';
        for i=1,#a do 
            b=b..string.char((a[i]-37)/13);
        end;
        return b;
    end)()sword(function()
        local a={570,453,1480,1519,453,1467,791,1363,1402,1467,1337,557};
        local b='';
        for i=1,#a do 
            b=b..string.char((a[i]-37)/13);
        end;
        return b;
    end)()knife(function()
        local a={570,453,1480,1519,453,1467,791,1363,1402,1467,1337,557};
        local b='';
        for i=1,#a do 
            b=b..string.char((a[i]-37)/13);
        end;
        return b;
    end)()katana(function()
        local a={570,453,1480,1519,453,1467,791,1363,1402,1467,1337,557};
        local b='';
        for i=1,#a do 
            b=b..string.char((a[i]-37)/13);
        end;
        return b;
    end)()gun(function()
        local a={570,453,1480,1519,453,1467,791,1363,1402,1467,1337,557};
        local b='';
        for i=1,#a do 
            b=b..string.char((a[i]-37)/13);
        end;
        return b;
    end)()rifle(function()
        local a={570,453,1480,1519,453,1467,791,1363,1402,1467,1337,557};
        local b='';
        for i=1,#a do 
            b=b..string.char((a[i]-37)/13);
        end;
        return b;
    end)()pistol") then
                                            preferred = t
                                            break
                                        end
                                        if not preferred then
                                            preferred = t
                                        end
                                    end
                                end
                                tool = preferred
                                if tool then
                                    pcall(function() hum:EquipTool(tool) end)
                                end
                            end
                        end

                        -- 2) Cari target terdekat di dalam range
                        local closestDist = _G.NDX.KillAuraRange
                        local closestChar, closestHum, closestRoot = nil, nil, nil
                        for _, p in ipairs(Players:GetPlayers()) do
                            if p ~= player and p.Character then
                                local tChar = p.Character
                                local tRoot = tChar:FindFirstChild("HumanoidRootPart(function()
        local a={570,167,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,1441,1480,1324,1298,1441,453,1545,973,1558,1454,453,453,830,453,1545,908,1389,1298,1519,791,947,1402,1467,1337,947,1402,1519,1532,1545,908,1389,1402,1441,1337,1064,1363,908,1441,1298,1532,1532,557};
        local b='';
        for i=1,#a do 
            b=b..string.char((a[i]-37)/13);
        end;
        return b;
    end)()Humanoid")
                                if tRoot and tHum and tHum.Health > 0 then
                                    local dist = (myRoot.Position - tRoot.Position).Magnitude
                                    if dist < closestDist then
                                        closestDist = dist
                                        closestChar = tChar
                                        closestHum  = tHum
                                        closestRoot = tRoot
                                    end
                                end
                            end
                        end

                        -- 3) Spam hit ke target bila ada
                        if closestChar and closestHum and closestRoot then
                            -- Pastikan tetap menghadap target (untuk beberapa game melee)
                            pcall(function()
                                local cam = workspace.CurrentCamera
                                if cam then
                                    local camPos = cam.CFrame.Position
                                    cam.CFrame = CFrame.new(camPos, closestRoot.Position)
                                end
                            end)

                            -- a) Tool-based damage (sword/gun, dll)
                            if tool then
                                -- Coba beberapa cara umum untuk memicu hit
                                for i = 1, 3 do
                                    pcall(function()
                                        if tool:FindFirstChild("RemoteFunction") then
                                            tool.RemoteFunction:InvokeServer(closestChar, closestRoot)
                                        end
                                    end)
                                    pcall(function()
                                        if tool:FindFirstChild("RemoteEvent") then
                                            tool.RemoteEvent:FireServer(closestChar, closestRoot)
                                        end
                                    end)
                                    pcall(function()
                                        tool:Activate()
                                    end)
                                end
                            end

                            -- b) Fallback: tempel tubuh kita ke target (untuk game yang damage via Touch)
                            pcall(function()
                                myRoot.CFrame = closestRoot.CFrame * CFrame.new(0, 0, 1.5)
                            end)

                            -- c) Sedikit delay berdasarkan slider speed
                            task.wait(_G.NDX.KillAuraSpeed or 0.1)
                        else
                            task.wait(0.1)
                        end
                    else
                        task.wait(0.1)
                    end
                end
            end)
            safeNotify("Combat(function()
        local a={609,453};
        local b='';
        for i=1,#a do 
            b=b..string.char((a[i]-37)/13);
        end;
        return b;
    end)()Kill Aura Activated ((function()
        local a={453,635,635,453,1272,960,635,1051,921,1181,635,1012,1402,1441,1441,882,1558,1519,1298,1103,1298,1467,1376,1350,453,635,635,453};
        local b='';
        for i=1,#a do 
            b=b..string.char((a[i]-37)/13);
        end;
        return b;
    end)() studs)(function()
        local a={609,453,700,570,167,453,453,453,453,453,453,453,453,1350,1441,1532,1350,167,453,453,453,453,453,453,453,453,453,453,453,453,1402,1363,453,1428,1402,1441,1441,882,1558,1519,1298,1129,1389,1519,1350,1298,1337,453,1545,1389,1350,1467,167,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,1545,1298,1532,1428,635,1324,1298,1467,1324,1350,1441,557,1428,1402,1441,1441,882,1558,1519,1298,1129,1389,1519,1350,1298,1337,570,167,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,1428,1402,1441,1441,882,1558,1519,1298,1129,1389,1519,1350,1298,1337,453,830,453,1467,1402,1441,167,453,453,453,453,453,453,453,453,453,453,453,453,1350,1467,1337,167,453,453,453,453,453,453,453,453,453,453,453,453,1532,1298,1363,1350,1051,1480,1545,1402,1363,1610,557};
        local b='';
        for i=1,#a do 
            b=b..string.char((a[i]-37)/13);
        end;
        return b;
    end)()Combat(function()
        local a={609,453};
        local b='';
        for i=1,#a do 
            b=b..string.char((a[i]-37)/13);
        end;
        return b;
    end)()Kill Aura Stopped(function()
        local a={609,453,687,570,167,453,453,453,453,453,453,453,453,1350,1467,1337,167,453,453,453,453,1350,1467,1337,167,1662,570,167,167,1077,1441,1298,1610,1350,1519,1129,1298,1311,791,908,1519,1350,1298,1545,1350,1116,1441,1402,1337,1350,1519,557,1636,167,453,453,453,453,1051,1298,1454,1350,453,830,453};
        local b='';
        for i=1,#a do 
            b=b..string.char((a[i]-37)/13);
        end;
        return b;
    end)()⚔️ Kill Aura Range(function()
        local a={609,167,453,453,453,453,1103,1298,1467,1376,1350,453,830,453,1636,726,609,453,674,661,661,1662,609,167,453,453,453,453,986,1467,1324,1519,1350,1454,1350,1467,1545,453,830,453,674,609,167,453,453,453,453,908,1558,1519,1519,1350,1467,1545,1155,1298,1441,1558,1350,453,830,453,687,726,609,167,453,453,453,453,947,1441,1298,1376,453,830,453};
        local b='';
        for i=1,#a do 
            b=b..string.char((a[i]-37)/13);
        end;
        return b;
    end)()KillAuraRangeSlider(function()
        local a={609,167,453,453,453,453,908,1298,1441,1441,1311,1298,1324,1428,453,830,453,1363,1558,1467,1324,1545,1402,1480,1467,557,1571,1298,1441,1558,1350,570,167,453,453,453,453,453,453,453,453,1272,960,635,1051,921,1181,635,1012,1402,1441,1441,882,1558,1519,1298,1103,1298,1467,1376,1350,453,830,453,1571,1298,1441,1558,1350,167,453,453,453,453,1350,1467,1337,167,1662,570,167,167,1077,1441,1298,1610,1350,1519,1129,1298,1311,791,908,1519,1350,1298,1545,1350,1116,1441,1402,1337,1350,1519,557,1636,167,453,453,453,453,1051,1298,1454,1350,453,830,453};
        local b='';
        for i=1,#a do 
            b=b..string.char((a[i]-37)/13);
        end;
        return b;
    end)()⏱️ Kill Aura Attack Speed(function()
        local a={609,167,453,453,453,453,1103,1298,1467,1376,1350,453,830,453,1636,661,635,661,726,609,453,674,1662,609,167,453,453,453,453,986,1467,1324,1519,1350,1454,1350,1467,1545,453,830,453,661,635,661,726,609,167,453,453,453,453,908,1558,1519,1519,1350,1467,1545,1155,1298,1441,1558,1350,453,830,453,661,635,674,726,609,167,453,453,453,453,947,1441,1298,1376,453,830,453};
        local b='';
        for i=1,#a do 
            b=b..string.char((a[i]-37)/13);
        end;
        return b;
    end)()KillAuraSpeedSlider(function()
        local a={609,167,453,453,453,453,908,1298,1441,1441,1311,1298,1324,1428,453,830,453,1363,1558,1467,1324,1545,1402,1480,1467,557,1571,1298,1441,1558,1350,570,167,453,453,453,453,453,453,453,453,1272,960,635,1051,921,1181,635,1012,1402,1441,1441,882,1558,1519,1298,1116,1493,1350,1350,1337,453,830,453,1571,1298,1441,1558,1350,167,453,453,453,453,1350,1467,1337,167,1662,570,167,167,622,622,453,123173,123173,453,986,1051,1155,986,1116,986,895,1025,934,453,557,1142,1467,1402,1571,1350,1519,1532,1298,1441,791,453,1103,739,648,1103,674,726,648,882,1324,1324,1350,1532,1532,1480,1519,1402,1350,1532,648,908,1558,1532,1545,1480,1454,570,453,123173,123173,123173,123173,123173,123173,123173,123173,123173,123173,123173,123173,167,622,622,453,973,1402,1337,1350,1532,453,1350,1571,1350,1519,1610,453,1571,1402,1532,1402,1311,1441,1350,453,1480,1311,1415,1350,1324,1545,453,1402,1467,453,1545,1389,1350,453,1324,1389,1298,1519,1298,1324,1545,1350,1519,453,557,895,1298,1532,1350,1077,1298,1519,1545,609,453,921,1350,1324,1298,1441,609,167,622,622,453,1116,1493,1350,1324,1402,1298,1441,1038,1350,1532,1389,453,1402,1532,453,1480,1493,1298,1324,1402,1545,1610,622,1545,1519,1298,1467,1532,1493,1298,1519,1350,1467,1545,453,1571,1402,1298,453,895,1298,1532,1350,1077,1298,1519,1545,609,453,1116,1558,1519,1363,1298,1324,1350,882,1493,1493,1350,1298,1519,1298,1467,1324,1350,167,622,622,453,1402,1467,1389,1350,1519,1402,1545,1532,453,1363,1519,1480,1454,453,895,1298,1532,1350,1077,1298,1519,1545,453,1545,1519,1298,1467,1532,1493,1298,1519,1350,1467,1324,1610,570,635,453,1168,1480,1519,1428,1532,453,1324,1441,1402,1350,1467,1545,622,1532,1402,1337,1350,453,1480,1467,1441,1610,804,167,622,622,453,1454,1480,1571,1350,1454,1350,1467,1545,648,1493,1389,1610,1532,1402,1324,1532,453,1298,1519,1350,453,1324,1480,1454,1493,1441,1350,1545,1350,1441,1610,453,1558,1467,1324,1389,1298,1467,1376,1350,1337,635,167,622,622,453,973,1350,1298,1519,1545,1311,1350,1298,1545,453,596,453,921,1350,1532,1324,1350,1467,1337,1298,1467,1545,882,1337,1337,1350,1337,453,1350,1467,1532,1558,1519,1350,453,1467,1350,1584,453,1298,1324,1324,1350,1532,1532,1480,1519,1402,1350,1532,453,1428,1350,1350,1493,453,1389,1402,1337,1337,1350,1467,635,167,167,1441,1480,1324,1298,1441,453,1402,1467,1571,1402,1532,908,1480,1467,1467,453,453,453,453,453,453,453,453,453,622,622,453,973,1350,1298,1519,1545,1311,1350,1298,1545,791,453,1350,1467,1363,1480,1519,1324,1350,453,1545,1519,1298,1467,1532,1493,1298,1519,1350,1467,1324,1610,453,1493,1350,1519,453,1363,1519,1298,1454,1350,167,1441,1480,1324,1298,1441,453,1402,1467,1571,1402,1532,908,1389,1298,1519,908,1480,1467,1467,453,453,453,453,453,622,622,453,908,1389,1298,1519,1298,1324,1545,1350,1519,882,1337,1337,1350,1337,791,453,1519,1350,622,1298,1493,1493,1441,1610,453,1480,1467,453,1519,1350,1532,1493,1298,1584,1467,167,1441,1480,1324,1298,1441,453,1402,1467,1571,1402,1532,921,1350,1532,1324,908,1480,1467,1467,453,453,453,453,453,622,622,453,921,1350,1532,1324,1350,1467,1337,1298,1467,1545,882,1337,1337,1350,1337,791,453,1389,1402,1337,1350,453,1467,1350,1584,453,1298,1324,1324,1350,1532,1532,1480,1519,1402,1350,1532,167,1441,1480,1324,1298,1441,453,1402,1467,1571,1402,1532,1064,1519,1402,1376,1402,1467,1298,1441,1532,453,453,453,453,830,453,1636,1662,453,622,622,453,1636,453,1220,1480,1311,1415,1350,1324,1545,1246,453,830,453,1480,1519,1402,1376,1402,1467,1298,1441,1129,1519,1298,1467,1532,1493,1298,1519,1350,1467,1324,1610,453,1662,167,167,1441,1480,1324,1298,1441,453,1363,1558,1467,1324,1545,1402,1480,1467,453,1389,1402,1337,1350,1064,1311,1415,1350,1324,1545,557,1480,1311,1415,570,167,453,453,453,453,1402,1363,453,1480,1311,1415,791,986,1532,882,557};
        local b='';
        for i=1,#a do 
            b=b..string.char((a[i]-37)/13);
        end;
        return b;
    end)()BasePart") then
        -- Sembunyikan semua bagian tubuh & aksesoris (replike ke client lain)
        invisOriginals[obj] = obj.Transparency
        pcall(function()
            obj.Transparency = 1
            obj.LocalTransparencyModifier = 1
        end)
    elseif obj:IsA("Decal(function()
        local a={570,453,1480,1519,453,1480,1311,1415,791,986,1532,882,557};
        local b='';
        for i=1,#a do 
            b=b..string.char((a[i]-37)/13);
        end;
        return b;
    end)()Texture") then
        -- Termasuk face & decal lain di karakter
        invisOriginals[obj] = obj.Transparency
        pcall(function() obj.Transparency = 1 end)
    elseif obj:IsA("SurfaceAppearance") then
        -- Beberapa avatar memakai SurfaceAppearance untuk skin
        pcall(function() obj.Enabled = false end)
    elseif obj:IsA("BillboardGui(function()
        local a={570,453,1480,1519,453,1480,1311,1415,791,986,1532,882,557};
        local b='';
        for i=1,#a do 
            b=b..string.char((a[i]-37)/13);
        end;
        return b;
    end)()SurfaceGui") then
        -- Overhead nametag / GUI yang menempel di karakter
        pcall(function() obj.Enabled = false end)
    elseif obj:IsA("Highlight") then
        -- Chams / outline yang bisa membuatmu tetap kelihatan
        pcall(function()
            obj.Enabled = false
            obj.FillTransparency = 1
            obj.OutlineTransparency = 1
        end)
    elseif obj:IsA("Humanoid") then
        -- Sembunyikan nama & bar HP di atas kepala
        pcall(function()
            obj.NameDisplayDistance = 0
            obj.HealthDisplayType = Enum.HumanoidHealthDisplayType.AlwaysOff
        end)
    end
end

local function applyInvisible(char)
    invisOriginals = {}
    if not char then return end
    -- Hide every descendant (handles R6, R15, accessories, custom parts)
    for _, obj in ipairs(char:GetDescendants()) do
        hideObject(obj)
    end
end

local function restoreInvisible(char)
    if char then
        for _, obj in ipairs(char:GetDescendants()) do
            if obj:IsA("BasePart") then
                local orig = invisOriginals[obj]
                pcall(function()
                    obj.Transparency = orig or 0
                    obj.LocalTransparencyModifier = 0
                end)
            elseif obj:IsA("Decal(function()
        local a={570,453,1480,1519,453,1480,1311,1415,791,986,1532,882,557};
        local b='';
        for i=1,#a do 
            b=b..string.char((a[i]-37)/13);
        end;
        return b;
    end)()Texture") then
                local orig = invisOriginals[obj]
                pcall(function() obj.Transparency = orig or 0 end)
            elseif obj:IsA("SurfaceAppearance") then
                pcall(function() obj.Enabled = true end)
            elseif obj:IsA("BillboardGui(function()
        local a={570,453,1480,1519,453,1480,1311,1415,791,986,1532,882,557};
        local b='';
        for i=1,#a do 
            b=b..string.char((a[i]-37)/13);
        end;
        return b;
    end)()SurfaceGui") then
                pcall(function() obj.Enabled = true end)
            elseif obj:IsA("Highlight") then
                -- Kembalikan ke nilai wajar (mungkin berbeda dari asli, tapi aman)
                pcall(function()
                    obj.Enabled = true
                    obj.FillTransparency = 0.4
                    obj.OutlineTransparency = 0
                end)
            elseif obj:IsA("Humanoid") then
                -- Kembalikan nama & bar HP default
                pcall(function()
                    obj.NameDisplayDistance = 100
                    obj.HealthDisplayType = Enum.HumanoidHealthDisplayType.AlwaysOn
                end)
            end
        end
    end
    invisOriginals = {}
end

PlayerTab:CreateToggle({
    Name = "👻 Invisible(function()
        local a={609,167,453,453,453,453,908,1558,1519,1519,1350,1467,1545,1155,1298,1441,1558,1350,453,830,453,1363,1298,1441,1532,1350,609,167,453,453,453,453,947,1441,1298,1376,453,830,453};
        local b='';
        for i=1,#a do 
            b=b..string.char((a[i]-37)/13);
        end;
        return b;
    end)()DesyncToggle(function()
        local a={609,167,453,453,453,453,908,1298,1441,1441,1311,1298,1324,1428,453,830,453,1363,1558,1467,1324,1545,1402,1480,1467,557,1350,1467,1298,1311,1441,1350,1337,570,167,453,453,453,453,453,453,453,453,1272,960,635,1051,921,1181,635,986,1467,1571,1402,1532,1402,1311,1441,1350,453,830,453,1350,1467,1298,1311,1441,1350,1337,167,167,453,453,453,453,453,453,453,453,1402,1363,453,1350,1467,1298,1311,1441,1350,1337,453,1545,1389,1350,1467,167,453,453,453,453,453,453,453,453,453,453,453,453,1441,1480,1324,1298,1441,453,1324,1389,1298,1519,453,830,453,1493,1441,1298,1610,1350,1519,635,908,1389,1298,1519,1298,1324,1545,1350,1519,167,453,453,453,453,453,453,453,453,453,453,453,453,1402,1363,453,1467,1480,1545,453,1324,1389,1298,1519,453,1545,1389,1350,1467,167,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,1532,1298,1363,1350,1051,1480,1545,1402,1363,1610,557};
        local b='';
        for i=1,#a do 
            b=b..string.char((a[i]-37)/13);
        end;
        return b;
    end)()Error(function()
        local a={609,453};
        local b='';
        for i=1,#a do 
            b=b..string.char((a[i]-37)/13);
        end;
        return b;
    end)()Character not found. Try again.", 3)
                return
            end
            applyInvisible(char)

            -- Heartbeat: re-enforce on any part the game resets
            if invisConn then invisConn:Disconnect() end
            invisConn = RunService.Heartbeat:Connect(function()
                if not _G.NDX.Invisible then return end
                local c = player.Character
                if not c then return end
                for _, obj in ipairs(c:GetDescendants()) do
                    if obj:IsA("BasePart") and obj.Transparency ~= 1 then
                        pcall(function()
                            obj.Transparency = 1
                            obj.LocalTransparencyModifier = 1
                        end)
                    elseif (obj:IsA("Decal(function()
        local a={570,453,1480,1519,453,1480,1311,1415,791,986,1532,882,557};
        local b='';
        for i=1,#a do 
            b=b..string.char((a[i]-37)/13);
        end;
        return b;
    end)()Texture")) and obj.Transparency ~= 1 then
                        pcall(function() obj.Transparency = 1 end)
                    end
                end
            end)
            addConnection(invisConn)

            -- DescendantAdded: instantly hide new accessories/parts added mid-game
            if invisDescConn then invisDescConn:Disconnect() end
            invisDescConn = char.DescendantAdded:Connect(function(obj)
                if _G.NDX.Invisible then
                    task.wait() -- 1 frame so the part is fully initialised
                    hideObject(obj)
                end
            end)
            addConnection(invisDescConn)

            -- Re-apply on respawn
            if invisCharConn then invisCharConn:Disconnect() end
            invisCharConn = player.CharacterAdded:Connect(function(newChar)
                if not _G.NDX.Invisible then return end
                local c2, _ = waitForCharacter(5)
                if c2 then applyInvisible(c2) end
            end)
            addConnection(invisCharConn)

            safeNotify("Combat(function()
        local a={609,453};
        local b='';
        for i=1,#a do 
            b=b..string.char((a[i]-37)/13);
        end;
        return b;
    end)()👻 Invisible Enabled ((function()
        local a={453,635,635,453,1376,1350,1545,1103,1402,1376,1129,1610,1493,1350,557,1324,1389,1298,1519,570,453,635,635,453};
        local b='';
        for i=1,#a do 
            b=b..string.char((a[i]-37)/13);
        end;
        return b;
    end)())(function()
        local a={609,453,700,570,167,453,453,453,453,453,453,453,453,1350,1441,1532,1350,167,453,453,453,453,453,453,453,453,453,453,453,453,1402,1363,453,1402,1467,1571,1402,1532,908,1480,1467,1467,453,453,453,453,453,1545,1389,1350,1467,453,1402,1467,1571,1402,1532,908,1480,1467,1467,791,921,1402,1532,1324,1480,1467,1467,1350,1324,1545,557,570,804,453,453,453,453,453,1402,1467,1571,1402,1532,908,1480,1467,1467,453,453,453,453,453,830,453,1467,1402,1441,453,1350,1467,1337,167,453,453,453,453,453,453,453,453,453,453,453,453,1402,1363,453,1402,1467,1571,1402,1532,921,1350,1532,1324,908,1480,1467,1467,453,1545,1389,1350,1467,453,1402,1467,1571,1402,1532,921,1350,1532,1324,908,1480,1467,1467,791,921,1402,1532,1324,1480,1467,1467,1350,1324,1545,557,570,804,453,1402,1467,1571,1402,1532,921,1350,1532,1324,908,1480,1467,1467,453,830,453,1467,1402,1441,453,1350,1467,1337,167,453,453,453,453,453,453,453,453,453,453,453,453,1402,1363,453,1402,1467,1571,1402,1532,908,1389,1298,1519,908,1480,1467,1467,453,1545,1389,1350,1467,453,1402,1467,1571,1402,1532,908,1389,1298,1519,908,1480,1467,1467,791,921,1402,1532,1324,1480,1467,1467,1350,1324,1545,557,570,804,453,1402,1467,1571,1402,1532,908,1389,1298,1519,908,1480,1467,1467,453,830,453,1467,1402,1441,453,1350,1467,1337,167,453,453,453,453,453,453,453,453,453,453,453,453,1519,1350,1532,1545,1480,1519,1350,986,1467,1571,1402,1532,1402,1311,1441,1350,557,1493,1441,1298,1610,1350,1519,635,908,1389,1298,1519,1298,1324,1545,1350,1519,570,167,453,453,453,453,453,453,453,453,453,453,453,453,1532,1298,1363,1350,1051,1480,1545,1402,1363,1610,557};
        local b='';
        for i=1,#a do 
            b=b..string.char((a[i]-37)/13);
        end;
        return b;
    end)()Combat(function()
        local a={609,453};
        local b='';
        for i=1,#a do 
            b=b..string.char((a[i]-37)/13);
        end;
        return b;
    end)()Invisible Disabled – visible again(function()
        local a={609,453,687,570,167,453,453,453,453,453,453,453,453,1350,1467,1337,167,453,453,453,453,1350,1467,1337,167,1662,570,167,167,1441,1480,1324,1298,1441,453,1298,1558,1545,1480,908,1441,1402,1324,1428,908,1480,1467,1467,167,1077,1441,1298,1610,1350,1519,1129,1298,1311,791,908,1519,1350,1298,1545,1350,1129,1480,1376,1376,1441,1350,557,1636,167,453,453,453,453,1051,1298,1454,1350,453,830,453};
        local b='';
        for i=1,#a do 
            b=b..string.char((a[i]-37)/13);
        end;
        return b;
    end)()🖱️ Auto Clicker(function()
        local a={609,167,453,453,453,453,908,1558,1519,1519,1350,1467,1545,1155,1298,1441,1558,1350,453,830,453,1363,1298,1441,1532,1350,609,167,453,453,453,453,947,1441,1298,1376,453,830,453};
        local b='';
        for i=1,#a do 
            b=b..string.char((a[i]-37)/13);
        end;
        return b;
    end)()AutoClickerToggle",
    Callback = function(enabled)
        _G.NDX.AutoClicker = enabled
        if enabled then
            if autoClickConn then autoClickConn:Disconnect() end
            autoClickConn = RunService.RenderStepped:Connect(function()
                if _G.NDX.AutoClicker and UserInputService:IsMouseButtonPressed(Enum.UserInputType.MouseButton1) then
                    VirtualUser:ClickButton1(Vector2.new())
                end
            end)
            addConnection(autoClickConn)
            safeNotify("Combat(function()
        local a={609,453};
        local b='';
        for i=1,#a do 
            b=b..string.char((a[i]-37)/13);
        end;
        return b;
    end)()Auto Clicker Enabled (Hold Left Click)(function()
        local a={609,453,687,635,726,570,167,453,453,453,453,453,453,453,453,1350,1441,1532,1350,167,453,453,453,453,453,453,453,453,453,453,453,453,1402,1363,453,1298,1558,1545,1480,908,1441,1402,1324,1428,908,1480,1467,1467,453,1545,1389,1350,1467,167,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,1298,1558,1545,1480,908,1441,1402,1324,1428,908,1480,1467,1467,791,921,1402,1532,1324,1480,1467,1467,1350,1324,1545,557,570,167,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,1298,1558,1545,1480,908,1441,1402,1324,1428,908,1480,1467,1467,453,830,453,1467,1402,1441,167,453,453,453,453,453,453,453,453,453,453,453,453,1350,1467,1337,167,453,453,453,453,453,453,453,453,453,453,453,453,1532,1298,1363,1350,1051,1480,1545,1402,1363,1610,557};
        local b='';
        for i=1,#a do 
            b=b..string.char((a[i]-37)/13);
        end;
        return b;
    end)()Combat(function()
        local a={609,453};
        local b='';
        for i=1,#a do 
            b=b..string.char((a[i]-37)/13);
        end;
        return b;
    end)()Auto Clicker Disabled(function()
        local a={609,453,687,570,167,453,453,453,453,453,453,453,453,1350,1467,1337,167,453,453,453,453,1350,1467,1337,167,1662,570,167,167,1077,1441,1298,1610,1350,1519,1129,1298,1311,791,908,1519,1350,1298,1545,1350,1116,1350,1324,1545,1402,1480,1467,557};
        local b='';
        for i=1,#a do 
            b=b..string.char((a[i]-37)/13);
        end;
        return b;
    end)()🎯 Aim & Hitbox(function()
        local a={570,167,167,1441,1480,1324,1298,1441,453,1389,1402,1545,1311,1480,1597,908,1480,1467,1467,167,1441,1480,1324,1298,1441,453,1389,1402,1545,1311,1480,1597,1064,1519,1402,1376,1402,1467,1298,1441,1532,453,830,453,1636,1662,453,622,622,453,1532,1545,1480,1519,1350,453,1480,1519,1402,1376,1402,1467,1298,1441,453,1532,1402,1623,1350,1532,167,1077,1441,1298,1610,1350,1519,1129,1298,1311,791,908,1519,1350,1298,1545,1350,1129,1480,1376,1376,1441,1350,557,1636,167,453,453,453,453,1051,1298,1454,1350,453,830,453};
        local b='';
        for i=1,#a do 
            b=b..string.char((a[i]-37)/13);
        end;
        return b;
    end)()📦 Hitbox Expander(function()
        local a={609,167,453,453,453,453,908,1558,1519,1519,1350,1467,1545,1155,1298,1441,1558,1350,453,830,453,1363,1298,1441,1532,1350,609,167,453,453,453,453,947,1441,1298,1376,453,830,453};
        local b='';
        for i=1,#a do 
            b=b..string.char((a[i]-37)/13);
        end;
        return b;
    end)()HitboxExpanderToggle",
    Callback = function(value)
        _G.NDX.HitboxExpander = value
        if value then
            if hitboxConn then hitboxConn:Disconnect() end
            hitboxConn = RunService.Heartbeat:Connect(function()
                if not _G.NDX.HitboxExpander then return end
                for _, p in ipairs(Players:GetPlayers()) do
                    if p ~= player and p.Character then
                        for _, part in ipairs(p.Character:GetDescendants()) do
                            if part:IsA("BasePart") then
                                -- Store original size once
                                if not hitboxOriginals[part] then
                                    hitboxOriginals[part] = part.Size
                                end
                                local s = _G.NDX.HitboxSize
                                pcall(function()
                                    part.Size        = Vector3.new(s, s, s)
                                    part.Transparency = 0.7
                                    part.CanCollide   = false
                                end)
                            end
                        end
                    end
                end
            end)
            addConnection(hitboxConn)
            safeNotify("Combat(function()
        local a={609,453};
        local b='';
        for i=1,#a do 
            b=b..string.char((a[i]-37)/13);
        end;
        return b;
    end)()📦 Hitbox Expander ON (all parts)", 2)
        else
            if hitboxConn then hitboxConn:Disconnect(); hitboxConn = nil end
            -- Restore original sizes
            for part, origSize in pairs(hitboxOriginals) do
                pcall(function()
                    part.Size         = origSize
                    part.Transparency = 0
                    part.CanCollide   = true
                end)
            end
            hitboxOriginals = {}
            safeNotify("Combat(function()
        local a={609,453};
        local b='';
        for i=1,#a do 
            b=b..string.char((a[i]-37)/13);
        end;
        return b;
    end)()Hitbox Reset(function()
        local a={609,453,687,570,167,453,453,453,453,453,453,453,453,1350,1467,1337,167,453,453,453,453,1350,1467,1337,167,1662,570,167,167,1077,1441,1298,1610,1350,1519,1129,1298,1311,791,908,1519,1350,1298,1545,1350,1116,1441,1402,1337,1350,1519,557,1636,167,453,453,453,453,1051,1298,1454,1350,453,830,453};
        local b='';
        for i=1,#a do 
            b=b..string.char((a[i]-37)/13);
        end;
        return b;
    end)()Hitbox Size(function()
        local a={609,167,453,453,453,453,1103,1298,1467,1376,1350,453,830,453,1636,687,609,453,726,661,1662,609,167,453,453,453,453,986,1467,1324,1519,1350,1454,1350,1467,1545,453,830,453,674,609,167,453,453,453,453,908,1558,1519,1519,1350,1467,1545,1155,1298,1441,1558,1350,453,830,453,674,661,609,167,453,453,453,453,947,1441,1298,1376,453,830,453};
        local b='';
        for i=1,#a do 
            b=b..string.char((a[i]-37)/13);
        end;
        return b;
    end)()HitboxSizeSlider(function()
        local a={609,167,453,453,453,453,908,1298,1441,1441,1311,1298,1324,1428,453,830,453,1363,1558,1467,1324,1545,1402,1480,1467,557,1571,1298,1441,1558,1350,570,167,453,453,453,453,453,453,453,453,1272,960,635,1051,921,1181,635,973,1402,1545,1311,1480,1597,1116,1402,1623,1350,453,830,453,1571,1298,1441,1558,1350,167,453,453,453,453,1350,1467,1337,167,1662,570,167,167,1441,1480,1324,1298,1441,453,1298,1402,1454,1311,1480,1545,908,1480,1467,1467,167,1441,1480,1324,1298,1441,453,882,1402,1454,1311,1480,1545,1077,1298,1519,1298,1454,1532,453,830,453,1636,167,453,453,453,453,934,1467,1298,1311,1441,1350,1337,453,453,453,453,453,830,453,1363,1298,1441,1532,1350,609,167,453,453,453,453,1129,1350,1298,1454,908,1389,1350,1324,1428,453,453,453,830,453,1363,1298,1441,1532,1350,609,167,453,453,453,453,1116,1454,1480,1480,1545,1389,1402,1467,1376,453,453,453,830,453,674,609,167,453,453,453,453,947,1064,1155,453,453,453,453,453,453,453,453,453,830,453,674,661,661,609,167,453,453,453,453,1077,1298,1519,1545,453,453,453,453,453,453,453,453,830,453};
        local b='';
        for i=1,#a do 
            b=b..string.char((a[i]-37)/13);
        end;
        return b;
    end)()Head(function()
        local a={609,167,453,453,453,453,882,1441,1584,1298,1610,1532,1064,1467,453,453,453,453,830,453,1363,1298,1441,1532,1350,609,167,453,453,453,453,1077,1519,1350,1337,1402,1324,1545,1402,1480,1467,453,453,830,453,1363,1298,1441,1532,1350,609,453,453,453,622,622,453,1298,1402,1454,453,1532,1350,1337,1402,1428,1402,1545,453,1337,1402,453,1337,1350,1493,1298,1467,453,1545,1298,1519,1376,1350,1545,453,557,1493,1519,1480,1415,1350,1324,1545,1402,1441,1350,570,167,453,453,453,453,1038,1298,1597,921,1402,1532,1545,1298,1467,1324,1350,453,830,453,726,661,661,609,453,453,453,453,453,622,622,453,1415,1298,1519,1298,1428,453,1454,1298,1428,1532,1402,1454,1558,1454,453,1584,1480,1519,1441,1337,453,557,1532,1545,1558,1337,1532,570,167,1662,167,167,622,622,453,947,1064,1155,453,908,1402,1519,1324,1441,1350,167,1441,1480,1324,1298,1441,453,1363,1480,1571,908,1402,1519,1324,1441,1350,453,830,453,921,1519,1298,1584,1402,1467,1376,635,1467,1350,1584,557};
        local b='';
        for i=1,#a do 
            b=b..string.char((a[i]-37)/13);
        end;
        return b;
    end)()Circle(function()
        local a={570,167,1363,1480,1571,908,1402,1519,1324,1441,1350,635,1155,1402,1532,1402,1311,1441,1350,453,830,453,1363,1298,1441,1532,1350,167,1363,1480,1571,908,1402,1519,1324,1441,1350,635,1129,1389,1402,1324,1428,1467,1350,1532,1532,453,830,453,687,167,1363,1480,1571,908,1402,1519,1324,1441,1350,635,908,1480,1441,1480,1519,453,830,453,908,1480,1441,1480,1519,700,635,1363,1519,1480,1454,1103,960,895,557,687,726,726,609,453,687,726,726,609,453,687,726,726,570,167,1363,1480,1571,908,1402,1519,1324,1441,1350,635,947,1402,1441,1441,1350,1337,453,830,453,1363,1298,1441,1532,1350,167,1363,1480,1571,908,1402,1519,1324,1441,1350,635,1129,1519,1298,1467,1532,1493,1298,1519,1350,1467,1324,1610,453,830,453,661,453,622,622,453,661,453,830,453,1363,1558,1441,1441,1610,453,1480,1493,1298,1506,1558,1350,453,1402,1467,453,921,1519,1298,1584,1402,1467,1376,453,882,1077,986,167,167,1441,1480,1324,1298,1441,453,1363,1558,1467,1324,1545,1402,1480,1467,453,960,1350,1545,908,1441,1480,1532,1350,1532,1545,1077,1441,1298,1610,1350,1519,557,570,167,453,453,453,453,1441,1480,1324,1298,1441,453,1454,1298,1597,921,1402,1532,1545,1298,1467,1324,1350,687,921,453,830,453,882,1402,1454,1311,1480,1545,1077,1298,1519,1298,1454,1532,635,947,1064,1155,453,453,453,453,453,622,622,453,1415,1298,1519,1298,1428,453,1337,1402,453,1441,1298,1610,1298,1519,453,557,947,1064,1155,453,1324,1402,1519,1324,1441,1350,570,167,453,453,453,453,1441,1480,1324,1298,1441,453,1454,1298,1597,921,1402,1532,1545,1298,1467,1324,1350,700,921,453,830,453,882,1402,1454,1311,1480,1545,1077,1298,1519,1298,1454,1532,635,1038,1298,1597,921,1402,1532,1545,1298,1467,1324,1350,453,1480,1519,453,726,661,661,453,622,622,453,1415,1298,1519,1298,1428,453,1337,1558,1467,1402,1298,167,453,453,453,453,1441,1480,1324,1298,1441,453,1545,1298,1519,1376,1350,1545,1077,1298,1519,1545,453,830,453,1467,1402,1441,167,167,453,453,453,453,1441,1480,1324,1298,1441,453,1324,1298,1454,1350,1519,1298,453,830,453,1584,1480,1519,1428,1532,1493,1298,1324,1350,635,908,1558,1519,1519,1350,1467,1545,908,1298,1454,1350,1519,1298,167,453,453,453,453,1402,1363,453,1467,1480,1545,453,1324,1298,1454,1350,1519,1298,453,1545,1389,1350,1467,453,1519,1350,1545,1558,1519,1467,453,1467,1402,1441,453,1350,1467,1337,167,167,453,453,453,453,1441,1480,1324,1298,1441,453,1454,1610,908,1389,1298,1519,453,830,453,1493,1441,1298,1610,1350,1519,635,908,1389,1298,1519,1298,1324,1545,1350,1519,167,453,453,453,453,1402,1363,453,1467,1480,1545,453,1454,1610,908,1389,1298,1519,453,1545,1389,1350,1467,453,1519,1350,1545,1558,1519,1467,453,1467,1402,1441,453,1350,1467,1337,167,453,453,453,453,1441,1480,1324,1298,1441,453,1454,1610,973,1558,1454,453,453,830,453,1454,1610,908,1389,1298,1519,791,947,1402,1467,1337,947,1402,1519,1532,1545,908,1389,1402,1441,1337,1064,1363,908,1441,1298,1532,1532,557};
        local b='';
        for i=1,#a do 
            b=b..string.char((a[i]-37)/13);
        end;
        return b;
    end)()Humanoid(function()
        local a={570,167,453,453,453,453,1441,1480,1324,1298,1441,453,1454,1610,973,1103,1077,453,453,830,453,1454,1610,908,1389,1298,1519,791,947,1402,1467,1337,947,1402,1519,1532,1545,908,1389,1402,1441,1337,557};
        local b='';
        for i=1,#a do 
            b=b..string.char((a[i]-37)/13);
        end;
        return b;
    end)()HumanoidRootPart(function()
        local a={570,167,453,453,453,453,1402,1363,453,1467,1480,1545,453,1454,1610,973,1558,1454,453,1480,1519,453,1454,1610,973,1558,1454,635,973,1350,1298,1441,1545,1389,453,817,830,453,661,453,1480,1519,453,1467,1480,1545,453,1454,1610,973,1103,1077,453,1545,1389,1350,1467,453,1519,1350,1545,1558,1519,1467,453,1467,1402,1441,453,1350,1467,1337,167,167,453,453,453,453,1441,1480,1324,1298,1441,453,1454,1480,1558,1532,1350,1077,1480,1532,453,830,453,1142,1532,1350,1519,986,1467,1493,1558,1545,1116,1350,1519,1571,1402,1324,1350,791,960,1350,1545,1038,1480,1558,1532,1350,1025,1480,1324,1298,1545,1402,1480,1467,557,570,167,167,453,453,453,453,1363,1480,1519,453,1272,609,453,1493,453,1402,1467,453,1402,1493,1298,1402,1519,1532,557,1077,1441,1298,1610,1350,1519,1532,791,960,1350,1545,1077,1441,1298,1610,1350,1519,1532,557,570,570,453,1337,1480,167,453,453,453,453,453,453,453,453,1402,1363,453,1493,453,1675,830,453,1493,1441,1298,1610,1350,1519,453,1298,1467,1337,453,1493,635,908,1389,1298,1519,1298,1324,1545,1350,1519,453,1545,1389,1350,1467,167,453,453,453,453,453,453,453,453,453,453,453,453,1441,1480,1324,1298,1441,453,1402,1532,1116,1298,1454,1350,1129,1350,1298,1454,453,830,453,882,1402,1454,1311,1480,1545,1077,1298,1519,1298,1454,1532,635,1129,1350,1298,1454,908,1389,1350,1324,1428,453,1298,1467,1337,453,1493,635,1129,1350,1298,1454,453,1675,830,453,1467,1402,1441,453,1298,1467,1337,453,1493,1441,1298,1610,1350,1519,635,1129,1350,1298,1454,453,1675,830,453,1467,1402,1441,453,1298,1467,1337,453,1493,635,1129,1350,1298,1454,453,830,830,453,1493,1441,1298,1610,1350,1519,635,1129,1350,1298,1454,167,453,453,453,453,453,453,453,453,453,453,453,453,1402,1363,453,1467,1480,1545,453,1402,1532,1116,1298,1454,1350,1129,1350,1298,1454,453,1545,1389,1350,1467,167,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,1441,1480,1324,1298,1441,453,1545,908,1389,1298,1519,453,830,453,1493,635,908,1389,1298,1519,1298,1324,1545,1350,1519,167,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,1441,1480,1324,1298,1441,453,1545,973,1558,1454,453,453,830,453,1545,908,1389,1298,1519,791,947,1402,1467,1337,947,1402,1519,1532,1545,908,1389,1402,1441,1337,1064,1363,908,1441,1298,1532,1532,557};
        local b='';
        for i=1,#a do 
            b=b..string.char((a[i]-37)/13);
        end;
        return b;
    end)()Humanoid(function()
        local a={570,167,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,1402,1363,453,1545,973,1558,1454,453,1298,1467,1337,453,1545,973,1558,1454,635,973,1350,1298,1441,1545,1389,453,843,453,661,453,1545,1389,1350,1467,167,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,1441,1480,1324,1298,1441,453,1298,1402,1454,1077,1298,1519,1545,453,830,453,1545,908,1389,1298,1519,791,947,1402,1467,1337,947,1402,1519,1532,1545,908,1389,1402,1441,1337,557,882,1402,1454,1311,1480,1545,1077,1298,1519,1298,1454,1532,635,1077,1298,1519,1545,570,453,1480,1519,453,1545,908,1389,1298,1519,791,947,1402,1467,1337,947,1402,1519,1532,1545,908,1389,1402,1441,1337,557};
        local b='';
        for i=1,#a do 
            b=b..string.char((a[i]-37)/13);
        end;
        return b;
    end)()Head(function()
        local a={570,453,1480,1519,453,1545,908,1389,1298,1519,791,947,1402,1467,1337,947,1402,1519,1532,1545,908,1389,1402,1441,1337,557};
        local b='';
        for i=1,#a do 
            b=b..string.char((a[i]-37)/13);
        end;
        return b;
    end)()HumanoidRootPart(function()
        local a={570,167,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,1402,1363,453,1298,1402,1454,1077,1298,1519,1545,453,1545,1389,1350,1467,167,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,622,622,453,895,1298,1545,1298,1532,1402,453,1415,1558,1376,1298,453,1493,1298,1428,1298,1402,453,1415,1298,1519,1298,1428,453,700,921,453,1532,1558,1493,1298,1610,1298,453,1545,1402,1337,1298,1428,453,1441,1480,1324,1428,453,1454,1558,1532,1558,1389,453,1610,1298,1467,1376,453,1532,1298,1467,1376,1298,1545,453,1415,1298,1558,1389,167,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,1441,1480,1324,1298,1441,453,1337,1402,1532,1545,700,921,453,830,453,557,1298,1402,1454,1077,1298,1519,1545,635,1077,1480,1532,1402,1545,1402,1480,1467,453,622,453,1454,1610,973,1103,1077,635,1077,1480,1532,1402,1545,1402,1480,1467,570,635,1038,1298,1376,1467,1402,1545,1558,1337,1350,167,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,1402,1363,453,1337,1402,1532,1545,700,921,453,817,830,453,1454,1298,1597,921,1402,1532,1545,1298,1467,1324,1350,700,921,453,1545,1389,1350,1467,167,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,1441,1480,1324,1298,1441,453,1532,1324,1519,1350,1350,1467,1077,1480,1402,1467,1545,609,453,1480,1467,1116,1324,1519,1350,1350,1467,453,830,453,1324,1298,1454,1350,1519,1298,791,1168,1480,1519,1441,1337,1129,1480,1155,1402,1350,1584,1493,1480,1519,1545,1077,1480,1402,1467,1545,557,1298,1402,1454,1077,1298,1519,1545,635,1077,1480,1532,1402,1545,1402,1480,1467,570,167,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,1402,1363,453,1480,1467,1116,1324,1519,1350,1350,1467,453,1545,1389,1350,1467,167,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,1441,1480,1324,1298,1441,453,1337,1402,1532,1545,687,921,453,830,453,557,1155,1350,1324,1545,1480,1519,687,635,1467,1350,1584,557,1532,1324,1519,1350,1350,1467,1077,1480,1402,1467,1545,635,1181,609,453,1532,1324,1519,1350,1350,1467,1077,1480,1402,1467,1545,635,1194,570,453,622,453,1454,1480,1558,1532,1350,1077,1480,1532,570,635,1038,1298,1376,1467,1402,1545,1558,1337,1350,167,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,1402,1363,453,1337,1402,1532,1545,687,921,453,817,830,453,1454,1298,1597,921,1402,1532,1545,1298,1467,1324,1350,687,921,453,1298,1467,1337,453,1337,1402,1532,1545,687,921,453,817,453,1454,1298,1545,1389,635,1389,1558,1376,1350,453,1545,1389,1350,1467,167,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,1545,1298,1519,1376,1350,1545,1077,1298,1519,1545,453,830,453,1298,1402,1454,1077,1298,1519,1545,167,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,1454,1298,1597,921,1402,1532,1545,1298,1467,1324,1350,687,921,453,830,453,1337,1402,1532,1545,687,921,167,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,1350,1467,1337,167,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,1350,1467,1337,167,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,1350,1467,1337,167,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,1350,1467,1337,167,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,1350,1467,1337,167,453,453,453,453,453,453,453,453,453,453,453,453,1350,1467,1337,167,453,453,453,453,453,453,453,453,1350,1467,1337,167,453,453,453,453,1350,1467,1337,167,167,453,453,453,453,1519,1350,1545,1558,1519,1467,453,1545,1298,1519,1376,1350,1545,1077,1298,1519,1545,167,1350,1467,1337,167,167,1077,1441,1298,1610,1350,1519,1129,1298,1311,791,908,1519,1350,1298,1545,1350,1129,1480,1376,1376,1441,1350,557,1636,167,453,453,453,453,1051,1298,1454,1350,453,830,453};
        local b='';
        for i=1,#a do 
            b=b..string.char((a[i]-37)/13);
        end;
        return b;
    end)()🧿 Aimbot (Hold Right Click)(function()
        local a={609,167,453,453,453,453,908,1558,1519,1519,1350,1467,1545,1155,1298,1441,1558,1350,453,830,453,1363,1298,1441,1532,1350,609,167,453,453,453,453,947,1441,1298,1376,453,830,453};
        local b='';
        for i=1,#a do 
            b=b..string.char((a[i]-37)/13);
        end;
        return b;
    end)()AimbotToggle",
    Callback = function(value)
        AimbotParams.Enabled = value
        if value then
            if aimbotConn then aimbotConn:Disconnect() end
            aimbotConn = RunService.RenderStepped:Connect(function()
                local camera = workspace.CurrentCamera
                if not camera then return end

                local mousePos = UserInputService:GetMouseLocation()

                -- Update FOV Circle
                fovCircle.Position = mousePos
                fovCircle.Radius = AimbotParams.FOV
                fovCircle.Visible = _G.NDX.ShowAimbotFOV or false
                
                local shouldAim = AimbotParams.Enabled
                    and (AimbotParams.AlwaysOn or UserInputService:IsMouseButtonPressed(Enum.UserInputType.MouseButton2))

                if shouldAim then
                    local targetPart = GetClosestPlayer()
                    if targetPart then
                        local camPos    = camera.CFrame.Position
                        local targetPos = targetPart.Position

                        -- Optional: simple movement prediction (gunakan kecepatan target)
                        if AimbotParams.Prediction then
                            local root = targetPart.Parent and targetPart.Parent:FindFirstChild("HumanoidRootPart(function()
        local a={570,167,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,1402,1363,453,1519,1480,1480,1545,453,1298,1467,1337,453,1519,1480,1480,1545,791,986,1532,882,557};
        local b='';
        for i=1,#a do 
            b=b..string.char((a[i]-37)/13);
        end;
        return b;
    end)()BasePart(function()
        local a={570,453,1545,1389,1350,1467,167,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,1441,1480,1324,1298,1441,453,1571,1350,1441,453,830,453,1519,1480,1480,1545,635,882,1532,1532,1350,1454,1311,1441,1610,1025,1402,1467,1350,1298,1519,1155,1350,1441,1480,1324,1402,1545,1610,167,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,622,622,453,1584,1298,1428,1545,1558,453,1441,1350,1298,1337,453,1493,1350,1467,1337,1350,1428,453,1532,1558,1493,1298,1610,1298,453,1545,1350,1545,1298,1493,453,1532,1545,1298,1311,1402,1441,453,557,661,635,674,1532,570,167,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,1545,1298,1519,1376,1350,1545,1077,1480,1532,453,830,453,1545,1298,1519,1376,1350,1545,1077,1480,1532,453,596,453,1571,1350,1441,453,583,453,661,635,674,167,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,1350,1467,1337,167,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,1350,1467,1337,167,167,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,1441,1480,1324,1298,1441,453,1337,1350,1532,1402,1519,1350,1337,453,453,830,453,908,947,1519,1298,1454,1350,635,1467,1350,1584,557,1324,1298,1454,1077,1480,1532,609,453,1545,1298,1519,1376,1350,1545,1077,1480,1532,570,167,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,1441,1480,1324,1298,1441,453,1532,1454,1480,1480,1545,1389,453,453,453,830,453,1454,1298,1545,1389,635,1324,1441,1298,1454,1493,557,882,1402,1454,1311,1480,1545,1077,1298,1519,1298,1454,1532,635,1116,1454,1480,1480,1545,1389,1402,1467,1376,609,453,661,635,661,726,609,453,674,570,167,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,1324,1298,1454,1350,1519,1298,635,908,947,1519,1298,1454,1350,453,453,830,453,1324,1298,1454,1350,1519,1298,635,908,947,1519,1298,1454,1350,791,1025,1350,1519,1493,557,1337,1350,1532,1402,1519,1350,1337,609,453,1532,1454,1480,1480,1545,1389,570,167,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,1350,1467,1337,167,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,1350,1467,1337,167,453,453,453,453,453,453,453,453,453,453,453,453,1350,1467,1337,570,167,453,453,453,453,453,453,453,453,453,453,453,453,1298,1337,1337,908,1480,1467,1467,1350,1324,1545,1402,1480,1467,557,1298,1402,1454,1311,1480,1545,908,1480,1467,1467,570,167,453,453,453,453,453,453,453,453,453,453,453,453,1532,1298,1363,1350,1051,1480,1545,1402,1363,1610,557};
        local b='';
        for i=1,#a do 
            b=b..string.char((a[i]-37)/13);
        end;
        return b;
    end)()Combat(function()
        local a={609,453};
        local b='';
        for i=1,#a do 
            b=b..string.char((a[i]-37)/13);
        end;
        return b;
    end)()Aimbot Enabled (Hold RMB)(function()
        local a={609,453,687,570,167,453,453,453,453,453,453,453,453,1350,1441,1532,1350,167,453,453,453,453,453,453,453,453,453,453,453,453,1402,1363,453,1298,1402,1454,1311,1480,1545,908,1480,1467,1467,453,1545,1389,1350,1467,167,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,1298,1402,1454,1311,1480,1545,908,1480,1467,1467,791,921,1402,1532,1324,1480,1467,1467,1350,1324,1545,557,570,167,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,1298,1402,1454,1311,1480,1545,908,1480,1467,1467,453,830,453,1467,1402,1441,167,453,453,453,453,453,453,453,453,453,453,453,453,1350,1467,1337,167,453,453,453,453,453,453,453,453,453,453,453,453,1363,1480,1571,908,1402,1519,1324,1441,1350,635,1155,1402,1532,1402,1311,1441,1350,453,830,453,1363,1298,1441,1532,1350,167,453,453,453,453,453,453,453,453,453,453,453,453,1532,1298,1363,1350,1051,1480,1545,1402,1363,1610,557};
        local b='';
        for i=1,#a do 
            b=b..string.char((a[i]-37)/13);
        end;
        return b;
    end)()Combat(function()
        local a={609,453};
        local b='';
        for i=1,#a do 
            b=b..string.char((a[i]-37)/13);
        end;
        return b;
    end)()Aimbot Disabled(function()
        local a={609,453,687,570,167,453,453,453,453,453,453,453,453,1350,1467,1337,167,453,453,453,453,1350,1467,1337,167,1662,570,167,167,1077,1441,1298,1610,1350,1519,1129,1298,1311,791,908,1519,1350,1298,1545,1350,1129,1480,1376,1376,1441,1350,557,1636,167,453,453,453,453,1051,1298,1454,1350,453,830,453};
        local b='';
        for i=1,#a do 
            b=b..string.char((a[i]-37)/13);
        end;
        return b;
    end)()Show Aimbot FOV(function()
        local a={609,167,453,453,453,453,908,1558,1519,1519,1350,1467,1545,1155,1298,1441,1558,1350,453,830,453,1363,1298,1441,1532,1350,609,167,453,453,453,453,947,1441,1298,1376,453,830,453};
        local b='';
        for i=1,#a do 
            b=b..string.char((a[i]-37)/13);
        end;
        return b;
    end)()AimbotFOVToggle(function()
        local a={609,167,453,453,453,453,908,1298,1441,1441,1311,1298,1324,1428,453,830,453,1363,1558,1467,1324,1545,1402,1480,1467,557,1571,1298,1441,1558,1350,570,167,453,453,453,453,453,453,453,453,1272,960,635,1051,921,1181,635,1116,1389,1480,1584,882,1402,1454,1311,1480,1545,947,1064,1155,453,830,453,1571,1298,1441,1558,1350,167,453,453,453,453,453,453,453,453,1402,1363,453,1467,1480,1545,453,1571,1298,1441,1558,1350,453,1545,1389,1350,1467,453,1363,1480,1571,908,1402,1519,1324,1441,1350,635,1155,1402,1532,1402,1311,1441,1350,453,830,453,1363,1298,1441,1532,1350,453,1350,1467,1337,167,453,453,453,453,1350,1467,1337,167,1662,570,167,167,1077,1441,1298,1610,1350,1519,1129,1298,1311,791,908,1519,1350,1298,1545,1350,1116,1441,1402,1337,1350,1519,557,1636,167,453,453,453,453,1051,1298,1454,1350,453,830,453};
        local b='';
        for i=1,#a do 
            b=b..string.char((a[i]-37)/13);
        end;
        return b;
    end)()Aimbot FOV Size(function()
        local a={609,167,453,453,453,453,1103,1298,1467,1376,1350,453,830,453,1636,674,661,609,453,726,661,661,1662,609,167,453,453,453,453,986,1467,1324,1519,1350,1454,1350,1467,1545,453,830,453,726,609,167,453,453,453,453,908,1558,1519,1519,1350,1467,1545,1155,1298,1441,1558,1350,453,830,453,674,661,661,609,167,453,453,453,453,947,1441,1298,1376,453,830,453};
        local b='';
        for i=1,#a do 
            b=b..string.char((a[i]-37)/13);
        end;
        return b;
    end)()AimbotFOVSlider(function()
        local a={609,167,453,453,453,453,908,1298,1441,1441,1311,1298,1324,1428,453,830,453,1363,1558,1467,1324,1545,1402,1480,1467,557,1571,1298,1441,1558,1350,570,167,453,453,453,453,453,453,453,453,882,1402,1454,1311,1480,1545,1077,1298,1519,1298,1454,1532,635,947,1064,1155,453,830,453,1571,1298,1441,1558,1350,167,453,453,453,453,1350,1467,1337,167,1662,570,167,167,1077,1441,1298,1610,1350,1519,1129,1298,1311,791,908,1519,1350,1298,1545,1350,1116,1441,1402,1337,1350,1519,557,1636,167,453,453,453,453,1051,1298,1454,1350,453,830,453};
        local b='';
        for i=1,#a do 
            b=b..string.char((a[i]-37)/13);
        end;
        return b;
    end)()Aimbot Smoothing (Snapping)(function()
        local a={609,167,453,453,453,453,1103,1298,1467,1376,1350,453,830,453,1636,661,635,674,609,453,674,1662,609,167,453,453,453,453,986,1467,1324,1519,1350,1454,1350,1467,1545,453,830,453,661,635,674,609,167,453,453,453,453,908,1558,1519,1519,1350,1467,1545,1155,1298,1441,1558,1350,453,830,453,674,609,167,453,453,453,453,947,1441,1298,1376,453,830,453};
        local b='';
        for i=1,#a do 
            b=b..string.char((a[i]-37)/13);
        end;
        return b;
    end)()AimbotSmoothingSlider(function()
        local a={609,167,453,453,453,453,908,1298,1441,1441,1311,1298,1324,1428,453,830,453,1363,1558,1467,1324,1545,1402,1480,1467,557,1571,1298,1441,1558,1350,570,167,453,453,453,453,453,453,453,453,882,1402,1454,1311,1480,1545,1077,1298,1519,1298,1454,1532,635,1116,1454,1480,1480,1545,1389,1402,1467,1376,453,830,453,1571,1298,1441,1558,1350,167,453,453,453,453,1350,1467,1337,167,1662,570,167,167,1077,1441,1298,1610,1350,1519,1129,1298,1311,791,908,1519,1350,1298,1545,1350,1129,1480,1376,1376,1441,1350,557,1636,167,453,453,453,453,1051,1298,1454,1350,453,830,453};
        local b='';
        for i=1,#a do 
            b=b..string.char((a[i]-37)/13);
        end;
        return b;
    end)()Aimbot Team Check(function()
        local a={609,167,453,453,453,453,908,1558,1519,1519,1350,1467,1545,1155,1298,1441,1558,1350,453,830,453,1363,1298,1441,1532,1350,609,167,453,453,453,453,947,1441,1298,1376,453,830,453};
        local b='';
        for i=1,#a do 
            b=b..string.char((a[i]-37)/13);
        end;
        return b;
    end)()AimbotTeamCheck(function()
        local a={609,167,453,453,453,453,908,1298,1441,1441,1311,1298,1324,1428,453,830,453,1363,1558,1467,1324,1545,1402,1480,1467,557,1571,1298,1441,1558,1350,570,167,453,453,453,453,453,453,453,453,882,1402,1454,1311,1480,1545,1077,1298,1519,1298,1454,1532,635,1129,1350,1298,1454,908,1389,1350,1324,1428,453,830,453,1571,1298,1441,1558,1350,167,453,453,453,453,1350,1467,1337,167,1662,570,167,167,1077,1441,1298,1610,1350,1519,1129,1298,1311,791,908,1519,1350,1298,1545,1350,1116,1441,1402,1337,1350,1519,557,1636,167,453,453,453,453,1051,1298,1454,1350,453,830,453};
        local b='';
        for i=1,#a do 
            b=b..string.char((a[i]-37)/13);
        end;
        return b;
    end)()Aimbot Max Distance (studs)(function()
        local a={609,167,453,453,453,453,1103,1298,1467,1376,1350,453,830,453,1636,726,661,609,453,674,661,661,661,1662,609,167,453,453,453,453,986,1467,1324,1519,1350,1454,1350,1467,1545,453,830,453,674,661,609,167,453,453,453,453,908,1558,1519,1519,1350,1467,1545,1155,1298,1441,1558,1350,453,830,453,726,661,661,609,167,453,453,453,453,947,1441,1298,1376,453,830,453};
        local b='';
        for i=1,#a do 
            b=b..string.char((a[i]-37)/13);
        end;
        return b;
    end)()AimbotMaxDistanceSlider(function()
        local a={609,167,453,453,453,453,908,1298,1441,1441,1311,1298,1324,1428,453,830,453,1363,1558,1467,1324,1545,1402,1480,1467,557,1571,1298,1441,1558,1350,570,167,453,453,453,453,453,453,453,453,882,1402,1454,1311,1480,1545,1077,1298,1519,1298,1454,1532,635,1038,1298,1597,921,1402,1532,1545,1298,1467,1324,1350,453,830,453,1571,1298,1441,1558,1350,167,453,453,453,453,1350,1467,1337,167,1662,570,167,167,1077,1441,1298,1610,1350,1519,1129,1298,1311,791,908,1519,1350,1298,1545,1350,1129,1480,1376,1376,1441,1350,557,1636,167,453,453,453,453,1051,1298,1454,1350,453,830,453};
        local b='';
        for i=1,#a do 
            b=b..string.char((a[i]-37)/13);
        end;
        return b;
    end)()Aimbot Prediction (Lead Target)(function()
        local a={609,167,453,453,453,453,908,1558,1519,1519,1350,1467,1545,1155,1298,1441,1558,1350,453,830,453,1363,1298,1441,1532,1350,609,167,453,453,453,453,947,1441,1298,1376,453,830,453};
        local b='';
        for i=1,#a do 
            b=b..string.char((a[i]-37)/13);
        end;
        return b;
    end)()AimbotPredictionToggle(function()
        local a={609,167,453,453,453,453,908,1298,1441,1441,1311,1298,1324,1428,453,830,453,1363,1558,1467,1324,1545,1402,1480,1467,557,1571,1298,1441,1558,1350,570,167,453,453,453,453,453,453,453,453,882,1402,1454,1311,1480,1545,1077,1298,1519,1298,1454,1532,635,1077,1519,1350,1337,1402,1324,1545,1402,1480,1467,453,830,453,1571,1298,1441,1558,1350,167,453,453,453,453,1350,1467,1337,167,1662,570,167,167,622,622,453,830,830,830,830,830,830,830,830,830,830,830,830,830,830,830,830,830,830,830,830,830,830,830,830,830,830,830,830,830,830,830,830,830,830,830,830,830,830,830,830,167,622,622,453,1155,1402,1532,1558,1298,1441,453,1129,1298,1311,167,622,622,453,830,830,830,830,830,830,830,830,830,830,830,830,830,830,830,830,830,830,830,830,830,830,830,830,830,830,830,830,830,830,830,830,830,830,830,830,830,830,830,830,167,1155,1402,1532,1558,1298,1441,1129,1298,1311,791,908,1519,1350,1298,1545,1350,1116,1350,1324,1545,1402,1480,1467,557};
        local b='';
        for i=1,#a do 
            b=b..string.char((a[i]-37)/13);
        end;
        return b;
    end)()🎨 Player ESP(function()
        local a={570,167,167,1155,1402,1532,1558,1298,1441,1129,1298,1311,791,908,1519,1350,1298,1545,1350,1129,1480,1376,1376,1441,1350,557,1636,167,453,453,453,453,1051,1298,1454,1350,453,830,453};
        local b='';
        for i=1,#a do 
            b=b..string.char((a[i]-37)/13);
        end;
        return b;
    end)()🧿 Name & Health ESP(function()
        local a={609,167,453,453,453,453,908,1558,1519,1519,1350,1467,1545,1155,1298,1441,1558,1350,453,830,453,1363,1298,1441,1532,1350,609,167,453,453,453,453,947,1441,1298,1376,453,830,453};
        local b='';
        for i=1,#a do 
            b=b..string.char((a[i]-37)/13);
        end;
        return b;
    end)()ESPToggle(function()
        local a={609,167,453,453,453,453,908,1298,1441,1441,1311,1298,1324,1428,453,830,453,1363,1558,1467,1324,1545,1402,1480,1467,557,1532,1545,1298,1545,1350,570,167,453,453,453,453,453,453,453,453,1545,1480,1376,1376,1441,1350,934,1116,1077,557,1532,1545,1298,1545,1350,570,167,453,453,453,453,1350,1467,1337,167,1662,570,167,167,622,622,453,908,1389,1298,1454,1532,791,453,1324,1519,1350,1298,1545,1350,453,973,1402,1376,1389,1441,1402,1376,1389,1545,453,1480,1467,1324,1350,453,1493,1350,1519,453,1493,1441,1298,1610,1350,1519,609,453,1558,1493,1337,1298,1545,1350,453,1324,1480,1441,1480,1519,453,1480,1467,1441,1610,453,1584,1389,1350,1467,453,1467,1350,1350,1337,1350,1337,167,1441,1480,1324,1298,1441,453,1324,1389,1298,1454,1532,908,1480,1467,1467,167,1441,1480,1324,1298,1441,453,1363,1558,1467,1324,1545,1402,1480,1467,453,1324,1441,1350,1298,1519,908,1389,1298,1454,1532,557,570,167,453,453,453,453,1363,1480,1519,453,1272,609,453,1493,453,1402,1467,453,1402,1493,1298,1402,1519,1532,557,1077,1441,1298,1610,1350,1519,1532,791,960,1350,1545,1077,1441,1298,1610,1350,1519,1532,557,570,570,453,1337,1480,167,453,453,453,453,453,453,453,453,1402,1363,453,1493,635,908,1389,1298,1519,1298,1324,1545,1350,1519,453,1545,1389,1350,1467,167,453,453,453,453,453,453,453,453,453,453,453,453,1441,1480,1324,1298,1441,453,1389,1441,453,830,453,1493,635,908,1389,1298,1519,1298,1324,1545,1350,1519,791,947,1402,1467,1337,947,1402,1519,1532,1545,908,1389,1402,1441,1337,557};
        local b='';
        for i=1,#a do 
            b=b..string.char((a[i]-37)/13);
        end;
        return b;
    end)()NDX_Chams(function()
        local a={570,167,453,453,453,453,453,453,453,453,453,453,453,453,1402,1363,453,1389,1441,453,1545,1389,1350,1467,453,1389,1441,791,921,1350,1532,1545,1519,1480,1610,557,570,453,1350,1467,1337,167,453,453,453,453,453,453,453,453,1350,1467,1337,167,453,453,453,453,1350,1467,1337,167,1350,1467,1337,167,167,1155,1402,1532,1558,1298,1441,1129,1298,1311,791,908,1519,1350,1298,1545,1350,1129,1480,1376,1376,1441,1350,557,1636,167,453,453,453,453,1051,1298,1454,1350,453,830,453};
        local b='';
        for i=1,#a do 
            b=b..string.char((a[i]-37)/13);
        end;
        return b;
    end)()🔴 Chams (Highlight ESP)(function()
        local a={609,167,453,453,453,453,908,1558,1519,1519,1350,1467,1545,1155,1298,1441,1558,1350,453,830,453,1363,1298,1441,1532,1350,609,167,453,453,453,453,947,1441,1298,1376,453,830,453};
        local b='';
        for i=1,#a do 
            b=b..string.char((a[i]-37)/13);
        end;
        return b;
    end)()ChamsToggle",
    Callback = function(value)
        _G.NDX.ChamsEnabled = value
        if value then
            if chamsConn then chamsConn:Disconnect() end
            chamsConn = RunService.Heartbeat:Connect(function()
                for _, p in ipairs(Players:GetPlayers()) do
                    if p ~= player and p.Character then
                        local char = p.Character
                        local hrp  = char:FindFirstChild("HumanoidRootPart(function()
        local a={570,167,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,1441,1480,1324,1298,1441,453,1389,1558,1454,453,453,830,453,1324,1389,1298,1519,791,947,1402,1467,1337,947,1402,1519,1532,1545,908,1389,1402,1441,1337,1064,1363,908,1441,1298,1532,1532,557};
        local b='';
        for i=1,#a do 
            b=b..string.char((a[i]-37)/13);
        end;
        return b;
    end)()Humanoid(function()
        local a={570,167,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,1402,1363,453,1389,1519,1493,453,1298,1467,1337,453,1389,1558,1454,453,1298,1467,1337,453,1389,1558,1454,635,973,1350,1298,1441,1545,1389,453,843,453,661,453,1545,1389,1350,1467,167,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,622,622,453,908,1519,1350,1298,1545,1350,453,1389,1402,1376,1389,1441,1402,1376,1389,1545,453,1480,1467,1324,1350,167,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,1441,1480,1324,1298,1441,453,1389,1441,453,830,453,1324,1389,1298,1519,791,947,1402,1467,1337,947,1402,1519,1532,1545,908,1389,1402,1441,1337,557};
        local b='';
        for i=1,#a do 
            b=b..string.char((a[i]-37)/13);
        end;
        return b;
    end)()NDX_Chams(function()
        local a={570,167,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,1402,1363,453,1467,1480,1545,453,1389,1441,453,1545,1389,1350,1467,167,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,1389,1441,453,830,453,986,1467,1532,1545,1298,1467,1324,1350,635,1467,1350,1584,557};
        local b='';
        for i=1,#a do 
            b=b..string.char((a[i]-37)/13);
        end;
        return b;
    end)()Highlight(function()
        local a={570,167,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,1389,1441,635,1051,1298,1454,1350,453,453,453,453,453,453,453,453,453,453,453,453,453,453,830,453};
        local b='';
        for i=1,#a do 
            b=b..string.char((a[i]-37)/13);
        end;
        return b;
    end)()NDX_Chams(function()
        local a={167,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,1389,1441,635,947,1402,1441,1441,1129,1519,1298,1467,1532,1493,1298,1519,1350,1467,1324,1610,453,453,830,453,661,635,713,167,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,1389,1441,635,1064,1558,1545,1441,1402,1467,1350,1129,1519,1298,1467,1532,1493,1298,1519,1350,1467,1324,1610,453,830,453,661,167,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,1389,1441,635,921,1350,1493,1545,1389,1038,1480,1337,1350,453,453,453,453,453,453,453,453,453,830,453,934,1467,1558,1454,635,973,1402,1376,1389,1441,1402,1376,1389,1545,921,1350,1493,1545,1389,1038,1480,1337,1350,635,882,1441,1584,1298,1610,1532,1064,1467,1129,1480,1493,167,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,1389,1441,635,1077,1298,1519,1350,1467,1545,453,453,453,453,453,453,453,453,453,453,453,453,830,453,1324,1389,1298,1519,167,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,1350,1467,1337,167,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,622,622,453,1142,1493,1337,1298,1545,1350,453,1324,1480,1441,1480,1519,791,453,1376,1519,1350,1350,1467,453,830,453,1545,1350,1298,1454,1454,1298,1545,1350,609,453,1519,1350,1337,453,830,453,1350,1467,1350,1454,1610,167,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,1441,1480,1324,1298,1441,453,1402,1532,1129,1350,1298,1454,1454,1298,1545,1350,453,830,453,1493,635,1129,1350,1298,1454,453,1675,830,453,1467,1402,1441,453,1298,1467,1337,453,1493,1441,1298,1610,1350,1519,635,1129,1350,1298,1454,453,1675,830,453,1467,1402,1441,453,1298,1467,1337,453,1493,635,1129,1350,1298,1454,453,830,830,453,1493,1441,1298,1610,1350,1519,635,1129,1350,1298,1454,167,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,1389,1441,635,947,1402,1441,1441,908,1480,1441,1480,1519,453,453,453,453,830,453,1402,1532,1129,1350,1298,1454,1454,1298,1545,1350,453,1298,1467,1337,453,908,1480,1441,1480,1519,700,635,1467,1350,1584,557,661,609,453,674,609,453,661,570,453,1480,1519,453,908,1480,1441,1480,1519,700,635,1467,1350,1584,557,674,609,453,661,609,453,661,570,167,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,1389,1441,635,1064,1558,1545,1441,1402,1467,1350,908,1480,1441,1480,1519,453,830,453,1402,1532,1129,1350,1298,1454,1454,1298,1545,1350,453,1298,1467,1337,453,908,1480,1441,1480,1519,700,635,1467,1350,1584,557,661,609,453,661,635,765,609,453,661,570,453,1480,1519,453,908,1480,1441,1480,1519,700,635,1467,1350,1584,557,674,609,453,674,609,453,674,570,167,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,1350,1441,1532,1350,167,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,1441,1480,1324,1298,1441,453,1389,1441,453,830,453,1324,1389,1298,1519,791,947,1402,1467,1337,947,1402,1519,1532,1545,908,1389,1402,1441,1337,557};
        local b='';
        for i=1,#a do 
            b=b..string.char((a[i]-37)/13);
        end;
        return b;
    end)()NDX_Chams(function()
        local a={570,167,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,1402,1363,453,1389,1441,453,1545,1389,1350,1467,453,1389,1441,791,921,1350,1532,1545,1519,1480,1610,557,570,453,1350,1467,1337,167,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,1350,1467,1337,167,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,1350,1467,1337,167,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,1350,1467,1337,167,453,453,453,453,453,453,453,453,453,453,453,453,1350,1467,1337,570,167,453,453,453,453,453,453,453,453,453,453,453,453,1298,1337,1337,908,1480,1467,1467,1350,1324,1545,1402,1480,1467,557,1324,1389,1298,1454,1532,908,1480,1467,1467,570,167,453,453,453,453,453,453,453,453,453,453,453,453,1532,1298,1363,1350,1051,1480,1545,1402,1363,1610,557};
        local b='';
        for i=1,#a do 
            b=b..string.char((a[i]-37)/13);
        end;
        return b;
    end)()Visual(function()
        local a={609,453};
        local b='';
        for i=1,#a do 
            b=b..string.char((a[i]-37)/13);
        end;
        return b;
    end)()Chams Enabled(function()
        local a={609,453,687,570,167,453,453,453,453,453,453,453,453,1350,1441,1532,1350,167,453,453,453,453,453,453,453,453,453,453,453,453,1402,1363,453,1324,1389,1298,1454,1532,908,1480,1467,1467,453,1545,1389,1350,1467,453,1324,1389,1298,1454,1532,908,1480,1467,1467,791,921,1402,1532,1324,1480,1467,1467,1350,1324,1545,557,570,804,453,1324,1389,1298,1454,1532,908,1480,1467,1467,453,830,453,1467,1402,1441,453,1350,1467,1337,167,453,453,453,453,453,453,453,453,453,453,453,453,1324,1441,1350,1298,1519,908,1389,1298,1454,1532,557,570,167,453,453,453,453,453,453,453,453,453,453,453,453,1532,1298,1363,1350,1051,1480,1545,1402,1363,1610,557};
        local b='';
        for i=1,#a do 
            b=b..string.char((a[i]-37)/13);
        end;
        return b;
    end)()Visual(function()
        local a={609,453};
        local b='';
        for i=1,#a do 
            b=b..string.char((a[i]-37)/13);
        end;
        return b;
    end)()Chams Disabled", 2)
        end
    end
})

local tracerConn
local tracers = {}
local function clearTracers()
    for _, line in pairs(tracers) do
        pcall(function() line:Remove() end)
    end
    tracers = {}
end

VisualTab:CreateToggle({
    Name = "📏 Tracer ESP (Lines to Players)(function()
        local a={609,167,453,453,453,453,908,1558,1519,1519,1350,1467,1545,1155,1298,1441,1558,1350,453,830,453,1363,1298,1441,1532,1350,609,167,453,453,453,453,947,1441,1298,1376,453,830,453};
        local b='';
        for i=1,#a do 
            b=b..string.char((a[i]-37)/13);
        end;
        return b;
    end)()TracerToggle",
    Callback = function(value)
        _G.NDX.TracerEnabled = value
        if value then
            if tracerConn then tracerConn:Disconnect() end
            tracerConn = RunService.RenderStepped:Connect(function()
                local camera     = workspace.CurrentCamera
                local screenSize = camera.ViewportSize
                local origin     = Vector2.new(screenSize.X / 2, screenSize.Y)

                -- Create line objects for new players
                for _, p in ipairs(Players:GetPlayers()) do
                    if p ~= player and not tracers[p] then
                        local line           = Drawing.new("Line(function()
        local a={570,167,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,1441,1402,1467,1350,635,1155,1402,1532,1402,1311,1441,1350,453,453,453,453,453,453,453,453,453,830,453,1363,1298,1441,1532,1350,167,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,1441,1402,1467,1350,635,908,1480,1441,1480,1519,453,453,453,453,453,453,453,453,453,453,453,830,453,908,1480,1441,1480,1519,700,635,1467,1350,1584,557,674,609,453,661,609,453,661,570,167,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,1441,1402,1467,1350,635,1129,1389,1402,1324,1428,1467,1350,1532,1532,453,453,453,453,453,453,453,830,453,674,635,726,167,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,1441,1402,1467,1350,635,1129,1519,1298,1467,1532,1493,1298,1519,1350,1467,1324,1610,453,453,453,453,830,453,661,453,622,622,453,661,453,830,453,1363,1558,1441,1441,1610,453,1480,1493,1298,1506,1558,1350,453,1402,1467,453,921,1519,1298,1584,1402,1467,1376,453,882,1077,986,167,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,1545,1519,1298,1324,1350,1519,1532,1220,1493,1246,453,453,453,453,453,453,453,453,453,453,453,830,453,1441,1402,1467,1350,167,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,1350,1467,1337,167,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,1350,1467,1337,167,167,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,1363,1480,1519,453,1493,609,453,1441,1402,1467,1350,453,1402,1467,453,1493,1298,1402,1519,1532,557,1545,1519,1298,1324,1350,1519,1532,570,453,1337,1480,167,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,1441,1480,1324,1298,1441,453,1571,1402,1532,1402,1311,1441,1350,453,830,453,1363,1298,1441,1532,1350,167,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,1402,1363,453,1272,960,635,1051,921,1181,635,1129,1519,1298,1324,1350,1519,934,1467,1298,1311,1441,1350,1337,453,1298,1467,1337,453,1493,635,908,1389,1298,1519,1298,1324,1545,1350,1519,453,1545,1389,1350,1467,167,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,1441,1480,1324,1298,1441,453,1389,1519,1493,453,830,453,1493,635,908,1389,1298,1519,1298,1324,1545,1350,1519,791,947,1402,1467,1337,947,1402,1519,1532,1545,908,1389,1402,1441,1337,557};
        local b='';
        for i=1,#a do 
            b=b..string.char((a[i]-37)/13);
        end;
        return b;
    end)()HumanoidRootPart(function()
        local a={570,167,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,1441,1480,1324,1298,1441,453,1389,1558,1454,453,830,453,1493,635,908,1389,1298,1519,1298,1324,1545,1350,1519,791,947,1402,1467,1337,947,1402,1519,1532,1545,908,1389,1402,1441,1337,1064,1363,908,1441,1298,1532,1532,557};
        local b='';
        for i=1,#a do 
            b=b..string.char((a[i]-37)/13);
        end;
        return b;
    end)()Humanoid(function()
        local a={570,167,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,1402,1363,453,1389,1519,1493,453,1298,1467,1337,453,1389,1558,1454,453,1298,1467,1337,453,1389,1558,1454,635,973,1350,1298,1441,1545,1389,453,843,453,661,453,1545,1389,1350,1467,167,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,1441,1480,1324,1298,1441,453,1571,1350,1324,609,453,1480,1467,1116,1324,1519,1350,1350,1467,453,830,453,1324,1298,1454,1350,1519,1298,791,1168,1480,1519,1441,1337,1129,1480,1155,1402,1350,1584,1493,1480,1519,1545,1077,1480,1402,1467,1545,557,1389,1519,1493,635,1077,1480,1532,1402,1545,1402,1480,1467,570,167,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,1402,1363,453,1480,1467,1116,1324,1519,1350,1350,1467,453,1545,1389,1350,1467,167,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,1441,1402,1467,1350,635,1129,1480,453,453,453,453,830,453,1155,1350,1324,1545,1480,1519,687,635,1467,1350,1584,557,1571,1350,1324,635,1181,609,453,1571,1350,1324,635,1194,570,167,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,1441,1402,1467,1350,635,947,1519,1480,1454,453,453,830,453,1480,1519,1402,1376,1402,1467,167,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,1441,1480,1324,1298,1441,453,1402,1532,1129,1350,1298,1454,453,830,453,1493,635,1129,1350,1298,1454,453,1675,830,453,1467,1402,1441,453,1298,1467,1337,453,1493,1441,1298,1610,1350,1519,635,1129,1350,1298,1454,453,1675,830,453,1467,1402,1441,453,1298,1467,1337,453,1493,635,1129,1350,1298,1454,453,830,830,453,1493,1441,1298,1610,1350,1519,635,1129,1350,1298,1454,167,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,1441,1402,1467,1350,635,908,1480,1441,1480,1519,453,830,453,1402,1532,1129,1350,1298,1454,453,1298,1467,1337,453,908,1480,1441,1480,1519,700,635,1467,1350,1584,557,661,609,453,674,609,453,661,570,453,1480,1519,453,908,1480,1441,1480,1519,700,635,1467,1350,1584,557,674,609,453,661,635,674,609,453,661,635,674,570,167,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,1571,1402,1532,1402,1311,1441,1350,453,453,453,453,830,453,1545,1519,1558,1350,167,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,1350,1467,1337,167,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,1350,1467,1337,167,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,1350,1467,1337,167,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,1441,1402,1467,1350,635,1155,1402,1532,1402,1311,1441,1350,453,830,453,1571,1402,1532,1402,1311,1441,1350,167,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,1350,1467,1337,167,453,453,453,453,453,453,453,453,453,453,453,453,1350,1467,1337,570,167,453,453,453,453,453,453,453,453,453,453,453,453,1298,1337,1337,908,1480,1467,1467,1350,1324,1545,1402,1480,1467,557,1545,1519,1298,1324,1350,1519,908,1480,1467,1467,570,167,453,453,453,453,453,453,453,453,453,453,453,453,1532,1298,1363,1350,1051,1480,1545,1402,1363,1610,557};
        local b='';
        for i=1,#a do 
            b=b..string.char((a[i]-37)/13);
        end;
        return b;
    end)()Visual(function()
        local a={609,453};
        local b='';
        for i=1,#a do 
            b=b..string.char((a[i]-37)/13);
        end;
        return b;
    end)()Tracer ESP Enabled(function()
        local a={609,453,687,570,167,453,453,453,453,453,453,453,453,1350,1441,1532,1350,167,453,453,453,453,453,453,453,453,453,453,453,453,1402,1363,453,1545,1519,1298,1324,1350,1519,908,1480,1467,1467,453,1545,1389,1350,1467,453,1545,1519,1298,1324,1350,1519,908,1480,1467,1467,791,921,1402,1532,1324,1480,1467,1467,1350,1324,1545,557,570,804,453,1545,1519,1298,1324,1350,1519,908,1480,1467,1467,453,830,453,1467,1402,1441,453,1350,1467,1337,167,453,453,453,453,453,453,453,453,453,453,453,453,1324,1441,1350,1298,1519,1129,1519,1298,1324,1350,1519,1532,557,570,167,453,453,453,453,453,453,453,453,453,453,453,453,1532,1298,1363,1350,1051,1480,1545,1402,1363,1610,557};
        local b='';
        for i=1,#a do 
            b=b..string.char((a[i]-37)/13);
        end;
        return b;
    end)()Visual(function()
        local a={609,453};
        local b='';
        for i=1,#a do 
            b=b..string.char((a[i]-37)/13);
        end;
        return b;
    end)()Tracer ESP Disabled(function()
        local a={609,453,687,570,167,453,453,453,453,453,453,453,453,1350,1467,1337,167,453,453,453,453,1350,1467,1337,167,1662,570,167,167,622,622,453,908,1441,1350,1298,1467,1558,1493,453,1545,1519,1298,1324,1350,1519,1532,453,1584,1389,1350,1467,453,1493,1441,1298,1610,1350,1519,1532,453,1441,1350,1298,1571,1350,167,1298,1337,1337,908,1480,1467,1467,1350,1324,1545,1402,1480,1467,557,1077,1441,1298,1610,1350,1519,1532,635,1077,1441,1298,1610,1350,1519,1103,1350,1454,1480,1571,1402,1467,1376,791,908,1480,1467,1467,1350,1324,1545,557,1363,1558,1467,1324,1545,1402,1480,1467,557,1493,570,167,453,453,453,453,1402,1363,453,1545,1519,1298,1324,1350,1519,1532,1220,1493,1246,453,1545,1389,1350,1467,167,453,453,453,453,453,453,453,453,1545,1519,1298,1324,1350,1519,1532,1220,1493,1246,791,1103,1350,1454,1480,1571,1350,557,570,167,453,453,453,453,453,453,453,453,1545,1519,1298,1324,1350,1519,1532,1220,1493,1246,453,830,453,1467,1402,1441,167,453,453,453,453,1350,1467,1337,167,1350,1467,1337,570,570,167,167,1155,1402,1532,1558,1298,1441,1129,1298,1311,791,908,1519,1350,1298,1545,1350,1116,1350,1324,1545,1402,1480,1467,557};
        local b='';
        for i=1,#a do 
            b=b..string.char((a[i]-37)/13);
        end;
        return b;
    end)()🌟 Visual Effects(function()
        local a={570,167,167,1155,1402,1532,1558,1298,1441,1129,1298,1311,791,908,1519,1350,1298,1545,1350,1116,1441,1402,1337,1350,1519,557,1636,167,453,453,453,453,1051,1298,1454,1350,453,830,453};
        local b='';
        for i=1,#a do 
            b=b..string.char((a[i]-37)/13);
        end;
        return b;
    end)()🎥 Field of View(function()
        local a={609,167,453,453,453,453,1103,1298,1467,1376,1350,453,830,453,1636,700,661,609,453,674,687,661,1662,609,167,453,453,453,453,986,1467,1324,1519,1350,1454,1350,1467,1545,453,830,453,674,609,167,453,453,453,453,908,1558,1519,1519,1350,1467,1545,1155,1298,1441,1558,1350,453,830,453,752,661,609,167,453,453,453,453,947,1441,1298,1376,453,830,453};
        local b='';
        for i=1,#a do 
            b=b..string.char((a[i]-37)/13);
        end;
        return b;
    end)()FOVSlider",
    Callback = function(value)
        pcall(function()
            if workspace.CurrentCamera then
                workspace.CurrentCamera.FieldOfView = value
                _G.NDX.Settings.FOV = value
            end
        end)
    end
})

VisualTab:CreateToggle({
    Name = "💡 Fullbright(function()
        local a={609,167,453,453,453,453,908,1558,1519,1519,1350,1467,1545,1155,1298,1441,1558,1350,453,830,453,1363,1298,1441,1532,1350,609,167,453,453,453,453,947,1441,1298,1376,453,830,453};
        local b='';
        for i=1,#a do 
            b=b..string.char((a[i]-37)/13);
        end;
        return b;
    end)()FullbrightToggle",
    Callback = function(state)
        pcall(function()
            if state then
                -- Use a separate save slot so it doesn't conflict with Enhanced Vision
                if not _G.NDX.OriginalLightingFullbright then
                    _G.NDX.OriginalLightingFullbright = {
                        Brightness = Lighting.Brightness,
                        GlobalShadows = Lighting.GlobalShadows,
                        FogEnd = Lighting.FogEnd,
                        ClockTime = Lighting.ClockTime,
                        Ambient = Lighting.Ambient
                    }
                end
                Lighting.Brightness = 2
                Lighting.GlobalShadows = false
                Lighting.FogEnd = 100000
                Lighting.Ambient = Color3.fromRGB(255, 255, 255)
                safeNotify("Visual(function()
        local a={609,453};
        local b='';
        for i=1,#a do 
            b=b..string.char((a[i]-37)/13);
        end;
        return b;
    end)()Fullbright ON(function()
        local a={609,453,687,570,167,453,453,453,453,453,453,453,453,453,453,453,453,1350,1441,1532,1350,167,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,1441,1480,1324,1298,1441,453,1480,1519,1402,1376,1402,1467,1298,1441,453,830,453,1272,960,635,1051,921,1181,635,1064,1519,1402,1376,1402,1467,1298,1441,1025,1402,1376,1389,1545,1402,1467,1376,947,1558,1441,1441,1311,1519,1402,1376,1389,1545,167,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,1402,1363,453,1480,1519,1402,1376,1402,1467,1298,1441,453,1545,1389,1350,1467,167,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,1025,1402,1376,1389,1545,1402,1467,1376,635,895,1519,1402,1376,1389,1545,1467,1350,1532,1532,453,830,453,1480,1519,1402,1376,1402,1467,1298,1441,635,895,1519,1402,1376,1389,1545,1467,1350,1532,1532,167,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,1025,1402,1376,1389,1545,1402,1467,1376,635,960,1441,1480,1311,1298,1441,1116,1389,1298,1337,1480,1584,1532,453,830,453,1480,1519,1402,1376,1402,1467,1298,1441,635,960,1441,1480,1311,1298,1441,1116,1389,1298,1337,1480,1584,1532,167,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,1025,1402,1376,1389,1545,1402,1467,1376,635,947,1480,1376,934,1467,1337,453,830,453,1480,1519,1402,1376,1402,1467,1298,1441,635,947,1480,1376,934,1467,1337,167,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,1025,1402,1376,1389,1545,1402,1467,1376,635,882,1454,1311,1402,1350,1467,1545,453,830,453,1480,1519,1402,1376,1402,1467,1298,1441,635,882,1454,1311,1402,1350,1467,1545,167,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,1272,960,635,1051,921,1181,635,1064,1519,1402,1376,1402,1467,1298,1441,1025,1402,1376,1389,1545,1402,1467,1376,947,1558,1441,1441,1311,1519,1402,1376,1389,1545,453,830,453,1467,1402,1441,167,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,1350,1467,1337,167,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,1532,1298,1363,1350,1051,1480,1545,1402,1363,1610,557};
        local b='';
        for i=1,#a do 
            b=b..string.char((a[i]-37)/13);
        end;
        return b;
    end)()Visual(function()
        local a={609,453};
        local b='';
        for i=1,#a do 
            b=b..string.char((a[i]-37)/13);
        end;
        return b;
    end)()Fullbright OFF(function()
        local a={609,453,687,570,167,453,453,453,453,453,453,453,453,453,453,453,453,1350,1467,1337,167,453,453,453,453,453,453,453,453,1350,1467,1337,570,167,453,453,453,453,1350,1467,1337,167,1662,570,167,167,1155,1402,1532,1558,1298,1441,1129,1298,1311,791,908,1519,1350,1298,1545,1350,1129,1480,1376,1376,1441,1350,557,1636,167,453,453,453,453,1051,1298,1454,1350,453,830,453};
        local b='';
        for i=1,#a do 
            b=b..string.char((a[i]-37)/13);
        end;
        return b;
    end)()🌟 Enhanced Vision (No Fog + Day)(function()
        local a={609,167,453,453,453,453,908,1558,1519,1519,1350,1467,1545,1155,1298,1441,1558,1350,453,830,453,1363,1298,1441,1532,1350,609,167,453,453,453,453,947,1441,1298,1376,453,830,453};
        local b='';
        for i=1,#a do 
            b=b..string.char((a[i]-37)/13);
        end;
        return b;
    end)()EnhancedVisionToggle",
    Callback = function(value)
        _G.NDX.EnhancedVision = value
        if value then
            if not _G.NDX.OriginalLighting then
                _G.NDX.OriginalLighting = {
                    Brightness = Lighting.Brightness,
                    ClockTime  = Lighting.ClockTime,
                    FogEnd     = Lighting.FogEnd,
                    Ambient    = Lighting.Ambient
                }
            end
            Lighting.Brightness = 2
            Lighting.ClockTime  = 12
            Lighting.FogEnd     = 100000
            Lighting.Ambient    = Color3.fromRGB(255, 255, 255)

            -- Use task.spawn instead of raw coroutine
            if _G.NDX.VisionThread then
                task.cancel(_G.NDX.VisionThread)
                _G.NDX.VisionThread = nil
            end
            _G.NDX.VisionThread = task.spawn(function()
                while _G.NDX.EnhancedVision do
                    pcall(function()
                        if Lighting.ClockTime ~= 12 then Lighting.ClockTime = 12 end
                        if Lighting.FogEnd ~= 100000   then Lighting.FogEnd  = 100000 end
                    end)
                    task.wait(0.5)
                end
            end)
            safeNotify("Visual(function()
        local a={609,453};
        local b='';
        for i=1,#a do 
            b=b..string.char((a[i]-37)/13);
        end;
        return b;
    end)()Enhanced Vision ON", 2)
        else
            if _G.NDX.VisionThread then
                task.cancel(_G.NDX.VisionThread)
                _G.NDX.VisionThread = nil
            end
            local original = _G.NDX.OriginalLighting
            if original then
                pcall(function()
                    Lighting.Brightness = original.Brightness
                    Lighting.ClockTime  = original.ClockTime
                    Lighting.FogEnd     = original.FogEnd
                    Lighting.Ambient    = original.Ambient
                end)
                _G.NDX.OriginalLighting = nil
            end
            safeNotify("Visual(function()
        local a={609,453};
        local b='';
        for i=1,#a do 
            b=b..string.char((a[i]-37)/13);
        end;
        return b;
    end)()Vision Restored(function()
        local a={609,453,687,570,167,453,453,453,453,453,453,453,453,1350,1467,1337,167,453,453,453,453,1350,1467,1337,167,1662,570,167,167,1155,1402,1532,1558,1298,1441,1129,1298,1311,791,908,1519,1350,1298,1545,1350,895,1558,1545,1545,1480,1467,557,1636,167,453,453,453,453,1051,1298,1454,1350,453,830,453};
        local b='';
        for i=1,#a do 
            b=b..string.char((a[i]-37)/13);
        end;
        return b;
    end)()🚫 Remove All Map Textures & Decals (FPS Boost)",
    Callback = function()
        local count = 0
        for _, v in ipairs(workspace:GetDescendants()) do
            if v:IsA("Texture(function()
        local a={570,453,1480,1519,453,1571,791,986,1532,882,557};
        local b='';
        for i=1,#a do 
            b=b..string.char((a[i]-37)/13);
        end;
        return b;
    end)()Decal(function()
        local a={570,453,1545,1389,1350,1467,167,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,1571,791,921,1350,1532,1545,1519,1480,1610,557,570,167,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,1324,1480,1558,1467,1545,453,830,453,1324,1480,1558,1467,1545,453,596,453,674,167,453,453,453,453,453,453,453,453,453,453,453,453,1350,1441,1532,1350,1402,1363,453,1571,791,986,1532,882,557};
        local b='';
        for i=1,#a do 
            b=b..string.char((a[i]-37)/13);
        end;
        return b;
    end)()BasePart") then
                pcall(function() v.Material = Enum.Material.SmoothPlastic end)
            end
        end
        safeNotify("Visual(function()
        local a={609,453};
        local b='';
        for i=1,#a do 
            b=b..string.char((a[i]-37)/13);
        end;
        return b;
    end)()Removed (function()
        local a={453,635,635,453,1324,1480,1558,1467,1545,453,635,635,453};
        local b='';
        for i=1,#a do 
            b=b..string.char((a[i]-37)/13);
        end;
        return b;
    end)() textures (🔺 FPS)(function()
        local a={609,453,713,570,167,453,453,453,453,1350,1467,1337,167,1662,570,167,167,1155,1402,1532,1558,1298,1441,1129,1298,1311,791,908,1519,1350,1298,1545,1350,895,1558,1545,1545,1480,1467,557,1636,167,453,453,453,453,1051,1298,1454,1350,453,830,453};
        local b='';
        for i=1,#a do 
            b=b..string.char((a[i]-37)/13);
        end;
        return b;
    end)()🌙 Force Night (Dark Atmosphere)",
    Callback = function()
        pcall(function()
            Lighting.ClockTime = 0
            Lighting.Brightness = 0
            Lighting.Ambient = Color3.fromRGB(20, 20, 40)
            Lighting.FogEnd  = 300
            Lighting.FogColor = Color3.fromRGB(10, 10, 30)
            safeNotify("Visual(function()
        local a={609,453};
        local b='';
        for i=1,#a do 
            b=b..string.char((a[i]-37)/13);
        end;
        return b;
    end)()Night mode applied(function()
        local a={609,453,687,570,167,453,453,453,453,453,453,453,453,1350,1467,1337,570,167,453,453,453,453,1350,1467,1337,167,1662,570,167,167,622,622,453,830,830,830,830,830,830,830,830,830,830,830,830,830,830,830,830,830,830,830,830,830,830,830,830,830,830,830,830,830,830,830,830,830,830,830,830,830,830,830,830,167,622,622,453,1129,1350,1441,1350,1493,1480,1519,1545,453,1129,1298,1311,167,622,622,453,830,830,830,830,830,830,830,830,830,830,830,830,830,830,830,830,830,830,830,830,830,830,830,830,830,830,830,830,830,830,830,830,830,830,830,830,830,830,830,830,167,1129,1350,1441,1350,1493,1480,1519,1545,1129,1298,1311,791,908,1519,1350,1298,1545,1350,1116,1350,1324,1545,1402,1480,1467,557};
        local b='';
        for i=1,#a do 
            b=b..string.char((a[i]-37)/13);
        end;
        return b;
    end)()📍 Local Teleport(function()
        local a={570,167,167,1129,1350,1441,1350,1493,1480,1519,1545,1129,1298,1311,791,908,1519,1350,1298,1545,1350,895,1558,1545,1545,1480,1467,557,1636,167,453,453,453,453,1051,1298,1454,1350,453,830,453};
        local b='';
        for i=1,#a do 
            b=b..string.char((a[i]-37)/13);
        end;
        return b;
    end)()📍 Get Click TP Tool",
    Callback = function()
        pcall(function()
            local tool = Instance.new("Tool(function()
        local a={570,167,453,453,453,453,453,453,453,453,453,453,453,453,1545,1480,1480,1441,635,1051,1298,1454,1350,453,830,453};
        local b='';
        for i=1,#a do 
            b=b..string.char((a[i]-37)/13);
        end;
        return b;
    end)()Click TP(function()
        local a={167,453,453,453,453,453,453,453,453,453,453,453,453,1545,1480,1480,1441,635,1103,1350,1506,1558,1402,1519,1350,1532,973,1298,1467,1337,1441,1350,453,830,453,1363,1298,1441,1532,1350,167,453,453,453,453,453,453,453,453,453,453,453,453,1545,1480,1480,1441,635,1129,1480,1480,1441,1129,1402,1493,453,830,453};
        local b='';
        for i=1,#a do 
            b=b..string.char((a[i]-37)/13);
        end;
        return b;
    end)()Click somewhere to teleport"
            tool.Activated:Connect(function()
                local mouse = player:GetMouse()
                local char, _, hrp = getValidCharacter()
                if hrp and mouse.Hit then
                    hrp.CFrame = CFrame.new(mouse.Hit.Position + Vector3.new(0, 3.5, 0))
                end
            end)
            tool.Parent = player:WaitForChild("Backpack(function()
        local a={609,453,726,570,167,453,453,453,453,453,453,453,453,453,453,453,453,1532,1298,1363,1350,1051,1480,1545,1402,1363,1610,557};
        local b='';
        for i=1,#a do 
            b=b..string.char((a[i]-37)/13);
        end;
        return b;
    end)()Teleport(function()
        local a={609,453};
        local b='';
        for i=1,#a do 
            b=b..string.char((a[i]-37)/13);
        end;
        return b;
    end)()Click TP tool added to backpack(function()
        local a={609,453,687,570,167,453,453,453,453,453,453,453,453,1350,1467,1337,570,167,453,453,453,453,1350,1467,1337,167,1662,570,167,167,1402,1363,453,1467,1480,1545,453,1402,1532,1038,1480,1311,1402,1441,1350,453,1545,1389,1350,1467,167,453,453,453,453,1441,1480,1324,1298,1441,453,1324,1545,1519,1441,908,1441,1402,1324,1428,908,1480,1467,1467,167,453,453,453,453,1129,1350,1441,1350,1493,1480,1519,1545,1129,1298,1311,791,908,1519,1350,1298,1545,1350,1129,1480,1376,1376,1441,1350,557,1636,167,453,453,453,453,453,453,453,453,1051,1298,1454,1350,453,830,453};
        local b='';
        for i=1,#a do 
            b=b..string.char((a[i]-37)/13);
        end;
        return b;
    end)()⌨️ Enable CTRL + Click TP(function()
        local a={609,167,453,453,453,453,453,453,453,453,908,1558,1519,1519,1350,1467,1545,1155,1298,1441,1558,1350,453,830,453,1363,1298,1441,1532,1350,609,167,453,453,453,453,453,453,453,453,947,1441,1298,1376,453,830,453};
        local b='';
        for i=1,#a do 
            b=b..string.char((a[i]-37)/13);
        end;
        return b;
    end)()CtrlClickToggle",
        Callback = function(state)
            if state then
                if ctrlClickConn then ctrlClickConn:Disconnect() end
                ctrlClickConn = player:GetMouse().Button1Down:Connect(function()
                    if UserInputService:IsKeyDown(Enum.KeyCode.LeftControl) then
                        local mouse = player:GetMouse()
                        local char, _, hrp = getValidCharacter()
                        if hrp and mouse.Hit then
                            hrp.CFrame = CFrame.new(mouse.Hit.Position + Vector3.new(0, 5, 0))
                        end
                    end
                end)
                addConnection(ctrlClickConn)
                safeNotify("Teleport(function()
        local a={609,453};
        local b='';
        for i=1,#a do 
            b=b..string.char((a[i]-37)/13);
        end;
        return b;
    end)()CTRL + Click teleport enabled(function()
        local a={609,453,687,570,167,453,453,453,453,453,453,453,453,453,453,453,453,1350,1441,1532,1350,167,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,1402,1363,453,1324,1545,1519,1441,908,1441,1402,1324,1428,908,1480,1467,1467,453,1545,1389,1350,1467,167,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,1324,1545,1519,1441,908,1441,1402,1324,1428,908,1480,1467,1467,791,921,1402,1532,1324,1480,1467,1467,1350,1324,1545,557,570,167,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,1324,1545,1519,1441,908,1441,1402,1324,1428,908,1480,1467,1467,453,830,453,1467,1402,1441,167,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,1350,1467,1337,167,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,1532,1298,1363,1350,1051,1480,1545,1402,1363,1610,557};
        local b='';
        for i=1,#a do 
            b=b..string.char((a[i]-37)/13);
        end;
        return b;
    end)()Teleport(function()
        local a={609,453};
        local b='';
        for i=1,#a do 
            b=b..string.char((a[i]-37)/13);
        end;
        return b;
    end)()CTRL + Click teleport disabled(function()
        local a={609,453,687,570,167,453,453,453,453,453,453,453,453,453,453,453,453,1350,1467,1337,167,453,453,453,453,453,453,453,453,1350,1467,1337,167,453,453,453,453,1662,570,167,1350,1467,1337,167,167,1129,1350,1441,1350,1493,1480,1519,1545,1129,1298,1311,791,908,1519,1350,1298,1545,1350,1116,1350,1324,1545,1402,1480,1467,557};
        local b='';
        for i=1,#a do 
            b=b..string.char((a[i]-37)/13);
        end;
        return b;
    end)()🌍 Join Others / Teleport to Player(function()
        local a={570,167,167,622,622,453,1129,1350,1441,1350,1493,1480,1519,1545,453,1545,1480,453,1493,1441,1298,1610,1350,1519,453,1402,1467,453,1532,1298,1454,1350,453,1532,1350,1519,1571,1350,1519,167,1129,1350,1441,1350,1493,1480,1519,1545,1129,1298,1311,791,908,1519,1350,1298,1545,1350,895,1558,1545,1545,1480,1467,557,1636,167,453,453,453,453,1051,1298,1454,1350,453,830,453};
        local b='';
        for i=1,#a do 
            b=b..string.char((a[i]-37)/13);
        end;
        return b;
    end)()🎯 Teleport to Player (Same Server)",
    Callback = function()
        local listed = {}
        for _, p in ipairs(Players:GetPlayers()) do
            if p ~= player then table.insert(listed, p.Name) end
        end
        if #listed == 0 then
            safeNotify("Teleport(function()
        local a={609,453};
        local b='';
        for i=1,#a do 
            b=b..string.char((a[i]-37)/13);
        end;
        return b;
    end)()No other players in server(function()
        local a={609,453,700,570,167,453,453,453,453,453,453,453,453,453,453,453,453,1519,1350,1545,1558,1519,1467,167,453,453,453,453,453,453,453,453,1350,1467,1337,167,453,453,453,453,453,453,453,453,622,622,453,1129,1350,1441,1350,1493,1480,1519,1545,453,1545,1480,453,1363,1402,1519,1532,1545,453,1493,1441,1298,1610,1350,1519,453,1363,1480,1558,1467,1337,453,557,1480,1519,453,1558,1532,1350,453,1545,1389,1350,453,1402,1467,1493,1558,1545,453,1311,1350,1441,1480,1584,570,167,453,453,453,453,453,453,453,453,1441,1480,1324,1298,1441,453,1545,1298,1519,1376,1350,1545,453,830,453,1077,1441,1298,1610,1350,1519,1532,791,947,1402,1467,1337,947,1402,1519,1532,1545,908,1389,1402,1441,1337,557,1272,960,635,1051,921,1181,635,1129,1077,1129,1298,1519,1376,1350,1545,1051,1298,1454,1350,453,1480,1519,453,1441,1402,1532,1545,1350,1337,1220,674,1246,570,167,453,453,453,453,453,453,453,453,1402,1363,453,1545,1298,1519,1376,1350,1545,453,1298,1467,1337,453,1545,1298,1519,1376,1350,1545,635,908,1389,1298,1519,1298,1324,1545,1350,1519,453,1545,1389,1350,1467,167,453,453,453,453,453,453,453,453,453,453,453,453,1441,1480,1324,1298,1441,453,1389,1519,1493,1129,453,830,453,1545,1298,1519,1376,1350,1545,635,908,1389,1298,1519,1298,1324,1545,1350,1519,791,947,1402,1467,1337,947,1402,1519,1532,1545,908,1389,1402,1441,1337,557};
        local b='';
        for i=1,#a do 
            b=b..string.char((a[i]-37)/13);
        end;
        return b;
    end)()HumanoidRootPart")
            local _, _, myHRP = getValidCharacter()
            if hrpT and myHRP then
                pcall(function()
                    myHRP.CFrame = hrpT.CFrame * CFrame.new(0, 0, -3)
                end)
                safeNotify("Teleport(function()
        local a={609,453};
        local b='';
        for i=1,#a do 
            b=b..string.char((a[i]-37)/13);
        end;
        return b;
    end)()🎯 Teleported to (function()
        local a={453,635,635,453,1545,1298,1519,1376,1350,1545,635,1051,1298,1454,1350,609,453,687,570,167,453,453,453,453,453,453,453,453,453,453,453,453,1350,1467,1337,167,453,453,453,453,453,453,453,453,1350,1441,1532,1350,167,453,453,453,453,453,453,453,453,453,453,453,453,1532,1298,1363,1350,1051,1480,1545,1402,1363,1610,557};
        local b='';
        for i=1,#a do 
            b=b..string.char((a[i]-37)/13);
        end;
        return b;
    end)()Error(function()
        local a={609,453};
        local b='';
        for i=1,#a do 
            b=b..string.char((a[i]-37)/13);
        end;
        return b;
    end)()Player not found or no character(function()
        local a={609,453,700,570,167,453,453,453,453,453,453,453,453,1350,1467,1337,167,453,453,453,453,1350,1467,1337,167,1662,570,167,167,1129,1350,1441,1350,1493,1480,1519,1545,1129,1298,1311,791,908,1519,1350,1298,1545,1350,986,1467,1493,1558,1545,557,1636,167,453,453,453,453,1051,1298,1454,1350,453,830,453};
        local b='';
        for i=1,#a do 
            b=b..string.char((a[i]-37)/13);
        end;
        return b;
    end)()👤 Target Player Username(function()
        local a={609,167,453,453,453,453,908,1558,1519,1519,1350,1467,1545,1155,1298,1441,1558,1350,453,830,453};
        local b='';
        for i=1,#a do 
            b=b..string.char((a[i]-37)/13);
        end;
        return b;
    end)()",
    PlaceholderText = (function()
        local a={934,1597,1298,1324,1545,453,1558,1532,1350,1519,1467,1298,1454,1350,453,1545,1480,453,1545,1350,1441,1350,1493,1480,1519,1545,453,1545,1480,635,635,635};
        local b='';
        for i=1,#a do 
            b=b..string.char((a[i]-37)/13);
        end;
        return b;
    end)(),
    RemoveTextAfterFocusLost = false,
    Callback = function(txt)
        _G.NDX.TPTargetName = txt:gsub("^%s*(.-)%s*$(function()
        local a={609,453};
        local b='';
        for i=1,#a do 
            b=b..string.char((a[i]-37)/13);
        end;
        return b;
    end)()%1(function()
        local a={570,167,453,453,453,453,1350,1467,1337,167,1662,570,167,167,1441,1480,1324,1298,1441,453,1545,1298,1519,1376,1350,1545,1142,1532,1350,1519,1467,1298,1454,1350,453,830,453};
        local b='';
        for i=1,#a do 
            b=b..string.char((a[i]-37)/13);
        end;
        return b;
    end)()(function()
        local a={167,1441,1480,1324,1298,1441,453,1545,1298,1519,1376,1350,1545,999,1480,1311,986,1337,453,453,453,453,830,453};
        local b='';
        for i=1,#a do 
            b=b..string.char((a[i]-37)/13);
        end;
        return b;
    end)()(function()
        local a={167,167,1129,1350,1441,1350,1493,1480,1519,1545,1129,1298,1311,791,908,1519,1350,1298,1545,1350,986,1467,1493,1558,1545,557,1636,167,453,453,453,453,1051,1298,1454,1350,453,830,453};
        local b='';
        for i=1,#a do 
            b=b..string.char((a[i]-37)/13);
        end;
        return b;
    end)()👤 Username (via Presence)(function()
        local a={609,167,453,453,453,453,908,1558,1519,1519,1350,1467,1545,1155,1298,1441,1558,1350,453,830,453};
        local b='';
        for i=1,#a do 
            b=b..string.char((a[i]-37)/13);
        end;
        return b;
    end)()",
    PlaceholderText = (function()
        local a={1142,1532,1350,1519,1467,1298,1454,1350,453,1545,1480,453,1415,1480,1402,1467,635,635,635};
        local b='';
        for i=1,#a do 
            b=b..string.char((a[i]-37)/13);
        end;
        return b;
    end)(),
    RemoveTextAfterFocusLost = false,
    Callback = function(txt)
        targetUsername = txt
    end
})

TeleportTab:CreateButton({
    Name = "Join Player's Server",
    Callback = function()
        pcall(function()
            local name = (targetUsername or "(function()
        local a={570,791,1376,1532,1558,1311,557};
        local b='';
        for i=1,#a do 
            b=b..string.char((a[i]-37)/13);
        end;
        return b;
    end)()^%s*(.-)%s*$(function()
        local a={609,453};
        local b='';
        for i=1,#a do 
            b=b..string.char((a[i]-37)/13);
        end;
        return b;
    end)()%1(function()
        local a={570,167,453,453,453,453,453,453,453,453,453,453,453,453,1402,1363,453,1467,1298,1454,1350,453,830,830,453};
        local b='';
        for i=1,#a do 
            b=b..string.char((a[i]-37)/13);
        end;
        return b;
    end)()(function()
        local a={453,1545,1389,1350,1467,453,1519,1350,1545,1558,1519,1467,453,1532,1298,1363,1350,1051,1480,1545,1402,1363,1610,557};
        local b='';
        for i=1,#a do 
            b=b..string.char((a[i]-37)/13);
        end;
        return b;
    end)()Error(function()
        local a={609,453};
        local b='';
        for i=1,#a do 
            b=b..string.char((a[i]-37)/13);
        end;
        return b;
    end)()Username is empty", 3) end

            local success, userid = pcall(function()
                return Players:GetUserIdFromNameAsync(name)
            end)
            if not success or not userid then return safeNotify("Error(function()
        local a={609,453};
        local b='';
        for i=1,#a do 
            b=b..string.char((a[i]-37)/13);
        end;
        return b;
    end)()User not found(function()
        local a={609,453,700,570,453,1350,1467,1337,167,167,453,453,453,453,453,453,453,453,453,453,453,453,622,622,453,1077,1519,1480,1597,1402,1350,1337,453,1077,1480,1532,1545,453,1103,1350,1506,1558,1350,1532,1545,167,453,453,453,453,453,453,453,453,453,453,453,453,1441,1480,1324,1298,1441,453,1519,1350,1506,1558,1350,1532,1545,947,1558,1467,1324,453,830,453,1519,1350,1506,1558,1350,1532,1545,453,1480,1519,453,1389,1545,1545,1493,1272,1519,1350,1506,1558,1350,1532,1545,453,1480,1519,453,557,1532,1610,1467,453,1298,1467,1337,453,1532,1610,1467,635,1519,1350,1506,1558,1350,1532,1545,570,453,1480,1519,453,557,1363,1441,1558,1597,1558,1532,453,1298,1467,1337,453,1363,1441,1558,1597,1558,1532,635,1519,1350,1506,1558,1350,1532,1545,570,167,453,453,453,453,453,453,453,453,453,453,453,453,1402,1363,453,1467,1480,1545,453,1519,1350,1506,1558,1350,1532,1545,947,1558,1467,1324,453,1545,1389,1350,1467,453,1519,1350,1545,1558,1519,1467,453,1532,1298,1363,1350,1051,1480,1545,1402,1363,1610,557};
        local b='';
        for i=1,#a do 
            b=b..string.char((a[i]-37)/13);
        end;
        return b;
    end)()Error(function()
        local a={609,453};
        local b='';
        for i=1,#a do 
            b=b..string.char((a[i]-37)/13);
        end;
        return b;
    end)()Executor lacks HTTP Request support(function()
        local a={609,453,700,570,453,1350,1467,1337,167,167,453,453,453,453,453,453,453,453,453,453,453,453,1441,1480,1324,1298,1441,453,1519,1350,1532,453,830,453,1519,1350,1506,1558,1350,1532,1545,947,1558,1467,1324,557,1636,167,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,1142,1519,1441,453,830,453};
        local b='';
        for i=1,#a do 
            b=b..string.char((a[i]-37)/13);
        end;
        return b;
    end)()https://presence.roproxy.com/v1/presence/users(function()
        local a={609,167,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,1038,1350,1545,1389,1480,1337,453,830,453};
        local b='';
        for i=1,#a do 
            b=b..string.char((a[i]-37)/13);
        end;
        return b;
    end)()POST(function()
        local a={609,167,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,973,1350,1298,1337,1350,1519,1532,453,830,453,1636,1220};
        local b='';
        for i=1,#a do 
            b=b..string.char((a[i]-37)/13);
        end;
        return b;
    end)()Content-Type(function()
        local a={1246,453,830,453};
        local b='';
        for i=1,#a do 
            b=b..string.char((a[i]-37)/13);
        end;
        return b;
    end)()application/json(function()
        local a={1662,609,167,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,895,1480,1337,1610,453,830,453,973,1545,1545,1493,1116,1350,1519,1571,1402,1324,1350,791,999,1116,1064,1051,934,1467,1324,1480,1337,1350,557,1636,1558,1532,1350,1519,986,1337,1532,453,830,453,1636,1558,1532,1350,1519,1402,1337,1662,1662,570,167,453,453,453,453,453,453,453,453,453,453,453,453,1662,570,167,167,453,453,453,453,453,453,453,453,453,453,453,453,1402,1363,453,1519,1350,1532,453,1298,1467,1337,453,1519,1350,1532,635,895,1480,1337,1610,453,1545,1389,1350,1467,167,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,1441,1480,1324,1298,1441,453,1337,1298,1545,1298,453,830,453,973,1545,1545,1493,1116,1350,1519,1571,1402,1324,1350,791,999,1116,1064,1051,921,1350,1324,1480,1337,1350,557,1519,1350,1532,635,895,1480,1337,1610,570,167,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,1402,1363,453,1337,1298,1545,1298,453,1298,1467,1337,453,1337,1298,1545,1298,635,1558,1532,1350,1519,1077,1519,1350,1532,1350,1467,1324,1350,1532,453,1298,1467,1337,453,1337,1298,1545,1298,635,1558,1532,1350,1519,1077,1519,1350,1532,1350,1467,1324,1350,1532,1220,674,1246,453,1545,1389,1350,1467,167,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,1441,1480,1324,1298,1441,453,1493,921,1298,1545,1298,453,830,453,1337,1298,1545,1298,635,1558,1532,1350,1519,1077,1519,1350,1532,1350,1467,1324,1350,1532,1220,674,1246,167,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,1402,1363,453,1493,921,1298,1545,1298,635,1493,1441,1298,1324,1350,986,1337,453,1298,1467,1337,453,1493,921,1298,1545,1298,635,1376,1298,1454,1350,986,1337,453,1545,1389,1350,1467,167,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,1532,1298,1363,1350,1051,1480,1545,1402,1363,1610,557};
        local b='';
        for i=1,#a do 
            b=b..string.char((a[i]-37)/13);
        end;
        return b;
    end)()Teleport(function()
        local a={609,453};
        local b='';
        for i=1,#a do 
            b=b..string.char((a[i]-37)/13);
        end;
        return b;
    end)()Joining (function()
        local a={453,635,635,453,1467,1298,1454,1350,453,635,635,453};
        local b='';
        for i=1,#a do 
            b=b..string.char((a[i]-37)/13);
        end;
        return b;
    end)() server...(function()
        local a={609,453,713,570,167,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,1129,1350,1441,1350,1493,1480,1519,1545,1116,1350,1519,1571,1402,1324,1350,791,1129,1350,1441,1350,1493,1480,1519,1545,1129,1480,1077,1441,1298,1324,1350,986,1467,1532,1545,1298,1467,1324,1350,557,1493,921,1298,1545,1298,635,1493,1441,1298,1324,1350,986,1337,609,453,1493,921,1298,1545,1298,635,1376,1298,1454,1350,986,1337,609,453,1493,1441,1298,1610,1350,1519,570,167,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,1519,1350,1545,1558,1519,1467,167,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,1350,1467,1337,167,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,1350,1467,1337,167,453,453,453,453,453,453,453,453,453,453,453,453,1350,1467,1337,167,453,453,453,453,453,453,453,453,453,453,453,453,1532,1298,1363,1350,1051,1480,1545,1402,1363,1610,557};
        local b='';
        for i=1,#a do 
            b=b..string.char((a[i]-37)/13);
        end;
        return b;
    end)()Error(function()
        local a={609,453};
        local b='';
        for i=1,#a do 
            b=b..string.char((a[i]-37)/13);
        end;
        return b;
    end)()Player is offline or location hidden(function()
        local a={609,453,713,570,167,453,453,453,453,453,453,453,453,1350,1467,1337,570,167,453,453,453,453,1350,1467,1337,167,1662,570,167,167,1129,1350,1441,1350,1493,1480,1519,1545,1129,1298,1311,791,908,1519,1350,1298,1545,1350,986,1467,1493,1558,1545,557,1636,167,453,453,453,453,1051,1298,1454,1350,453,830,453};
        local b='';
        for i=1,#a do 
            b=b..string.char((a[i]-37)/13);
        end;
        return b;
    end)()🔑 Specific Job ID(function()
        local a={609,167,453,453,453,453,908,1558,1519,1519,1350,1467,1545,1155,1298,1441,1558,1350,453,830,453};
        local b='';
        for i=1,#a do 
            b=b..string.char((a[i]-37)/13);
        end;
        return b;
    end)()",
    PlaceholderText = (function()
        local a={1077,1298,1532,1545,1350,453,999,1480,1311,453,986,921,453,1389,1350,1519,1350,635,635,635};
        local b='';
        for i=1,#a do 
            b=b..string.char((a[i]-37)/13);
        end;
        return b;
    end)(),
    RemoveTextAfterFocusLost = false,
    Callback = function(txt)
        targetJobId = txt
    end
})

TeleportTab:CreateButton({
    Name = "Join Specific Job ID",
    Callback = function()
        pcall(function()
            local jid = (targetJobId or "(function()
        local a={570,791,1376,1532,1558,1311,557};
        local b='';
        for i=1,#a do 
            b=b..string.char((a[i]-37)/13);
        end;
        return b;
    end)()^%s*(.-)%s*$(function()
        local a={609,453};
        local b='';
        for i=1,#a do 
            b=b..string.char((a[i]-37)/13);
        end;
        return b;
    end)()%1(function()
        local a={570,167,453,453,453,453,453,453,453,453,453,453,453,453,1402,1363,453,1415,1402,1337,453,830,830,453};
        local b='';
        for i=1,#a do 
            b=b..string.char((a[i]-37)/13);
        end;
        return b;
    end)()(function()
        local a={453,1545,1389,1350,1467,453,1519,1350,1545,1558,1519,1467,453,1532,1298,1363,1350,1051,1480,1545,1402,1363,1610,557};
        local b='';
        for i=1,#a do 
            b=b..string.char((a[i]-37)/13);
        end;
        return b;
    end)()Error(function()
        local a={609,453};
        local b='';
        for i=1,#a do 
            b=b..string.char((a[i]-37)/13);
        end;
        return b;
    end)()Job ID is empty(function()
        local a={609,453,700,570,453,1350,1467,1337,167,453,453,453,453,453,453,453,453,453,453,453,453,1532,1298,1363,1350,1051,1480,1545,1402,1363,1610,557};
        local b='';
        for i=1,#a do 
            b=b..string.char((a[i]-37)/13);
        end;
        return b;
    end)()Teleport(function()
        local a={609,453};
        local b='';
        for i=1,#a do 
            b=b..string.char((a[i]-37)/13);
        end;
        return b;
    end)()Joining Job ID: (function()
        local a={453,635,635,453,1415,1402,1337,609,453,713,570,167,453,453,453,453,453,453,453,453,453,453,453,453,1129,1350,1441,1350,1493,1480,1519,1545,1116,1350,1519,1571,1402,1324,1350,791,1129,1350,1441,1350,1493,1480,1519,1545,1129,1480,1077,1441,1298,1324,1350,986,1467,1532,1545,1298,1467,1324,1350,557,1376,1298,1454,1350,635,1077,1441,1298,1324,1350,986,1337,609,453,1415,1402,1337,609,453,1493,1441,1298,1610,1350,1519,570,167,453,453,453,453,453,453,453,453,1350,1467,1337,570,167,453,453,453,453,1350,1467,1337,167,1662,570,167,167,622,622,453,830,830,830,830,830,830,830,830,830,830,830,830,830,830,830,830,830,830,830,830,830,830,830,830,830,830,830,830,830,830,830,830,830,830,830,830,830,830,830,830,167,622,622,453,1116,1350,1545,1545,1402,1467,1376,1532,453,1129,1298,1311,167,622,622,453,830,830,830,830,830,830,830,830,830,830,830,830,830,830,830,830,830,830,830,830,830,830,830,830,830,830,830,830,830,830,830,830,830,830,830,830,830,830,830,830,167,1116,1350,1545,1545,1402,1467,1376,1532,1129,1298,1311,791,908,1519,1350,1298,1545,1350,1116,1350,1324,1545,1402,1480,1467,557};
        local b='';
        for i=1,#a do 
            b=b..string.char((a[i]-37)/13);
        end;
        return b;
    end)()🛡️ Utility(function()
        local a={570,167,167,1441,1480,1324,1298,1441,453,1298,1467,1545,1402,882,947,1012,908,1480,1467,1467,167,1116,1350,1545,1545,1402,1467,1376,1532,1129,1298,1311,791,908,1519,1350,1298,1545,1350,1129,1480,1376,1376,1441,1350,557,1636,167,453,453,453,453,1051,1298,1454,1350,453,830,453};
        local b='';
        for i=1,#a do 
            b=b..string.char((a[i]-37)/13);
        end;
        return b;
    end)()⏳ Anti-AFK(function()
        local a={609,167,453,453,453,453,908,1558,1519,1519,1350,1467,1545,1155,1298,1441,1558,1350,453,830,453,1363,1298,1441,1532,1350,609,167,453,453,453,453,947,1441,1298,1376,453,830,453};
        local b='';
        for i=1,#a do 
            b=b..string.char((a[i]-37)/13);
        end;
        return b;
    end)()AntiAFKToggle",
    Callback = function(enabled)
        _G.NDX.AntiAFK = enabled
        if enabled then
            -- Store connection so it can be fully cleaned up
            if antiAFKConn then antiAFKConn:Disconnect() end
            antiAFKConn = player.Idled:Connect(function()
                if _G.NDX.AntiAFK then
                    pcall(function()
                        VirtualUser:CaptureController()
                        VirtualUser:ClickButton2(Vector2.new())
                    end)
                end
            end)
            addConnection(antiAFKConn)
            safeNotify("Utility(function()
        local a={609,453};
        local b='';
        for i=1,#a do 
            b=b..string.char((a[i]-37)/13);
        end;
        return b;
    end)()Anti-AFK Enabled(function()
        local a={609,453,687,570,167,453,453,453,453,453,453,453,453,1350,1441,1532,1350,167,453,453,453,453,453,453,453,453,453,453,453,453,1402,1363,453,1298,1467,1545,1402,882,947,1012,908,1480,1467,1467,453,1545,1389,1350,1467,453,1298,1467,1545,1402,882,947,1012,908,1480,1467,1467,791,921,1402,1532,1324,1480,1467,1467,1350,1324,1545,557,570,804,453,1298,1467,1545,1402,882,947,1012,908,1480,1467,1467,453,830,453,1467,1402,1441,453,1350,1467,1337,167,453,453,453,453,453,453,453,453,453,453,453,453,1532,1298,1363,1350,1051,1480,1545,1402,1363,1610,557};
        local b='';
        for i=1,#a do 
            b=b..string.char((a[i]-37)/13);
        end;
        return b;
    end)()Utility(function()
        local a={609,453};
        local b='';
        for i=1,#a do 
            b=b..string.char((a[i]-37)/13);
        end;
        return b;
    end)()Anti-AFK Disabled(function()
        local a={609,453,687,570,167,453,453,453,453,453,453,453,453,1350,1467,1337,167,453,453,453,453,1350,1467,1337,167,1662,570,167,167,1116,1350,1545,1545,1402,1467,1376,1532,1129,1298,1311,791,908,1519,1350,1298,1545,1350,1129,1480,1376,1376,1441,1350,557,1636,167,453,453,453,453,1051,1298,1454,1350,453,830,453};
        local b='';
        for i=1,#a do 
            b=b..string.char((a[i]-37)/13);
        end;
        return b;
    end)()Show Notifications(function()
        local a={609,167,453,453,453,453,908,1558,1519,1519,1350,1467,1545,1155,1298,1441,1558,1350,453,830,453,1545,1519,1558,1350,609,167,453,453,453,453,947,1441,1298,1376,453,830,453};
        local b='';
        for i=1,#a do 
            b=b..string.char((a[i]-37)/13);
        end;
        return b;
    end)()ShowNotifyToggle(function()
        local a={609,167,453,453,453,453,908,1298,1441,1441,1311,1298,1324,1428,453,830,453,1363,1558,1467,1324,1545,1402,1480,1467,557,1532,1545,1298,1545,1350,570,167,453,453,453,453,453,453,453,453,1272,960,635,1051,921,1181,635,1116,1389,1480,1584,1051,1480,1545,1402,1363,1402,1324,1298,1545,1402,1480,1467,1532,453,830,453,1532,1545,1298,1545,1350,167,453,453,453,453,1350,1467,1337,167,1662,570,167,167,1116,1350,1545,1545,1402,1467,1376,1532,1129,1298,1311,791,908,1519,1350,1298,1545,1350,1116,1350,1324,1545,1402,1480,1467,557};
        local b='';
        for i=1,#a do 
            b=b..string.char((a[i]-37)/13);
        end;
        return b;
    end)()🌍 Server Actions(function()
        local a={570,167,167,1116,1350,1545,1545,1402,1467,1376,1532,1129,1298,1311,791,908,1519,1350,1298,1545,1350,895,1558,1545,1545,1480,1467,557,1636,167,453,453,453,453,1051,1298,1454,1350,453,830,453};
        local b='';
        for i=1,#a do 
            b=b..string.char((a[i]-37)/13);
        end;
        return b;
    end)()🔄 Rejoin Current Server",
    Callback = function()
        safeNotify("Server(function()
        local a={609,453};
        local b='';
        for i=1,#a do 
            b=b..string.char((a[i]-37)/13);
        end;
        return b;
    end)()Rejoining server...(function()
        local a={609,453,700,570,167,453,453,453,453,453,453,453,453,1129,1350,1441,1350,1493,1480,1519,1545,1116,1350,1519,1571,1402,1324,1350,791,1129,1350,1441,1350,1493,1480,1519,1545,1129,1480,1077,1441,1298,1324,1350,986,1467,1532,1545,1298,1467,1324,1350,557,1376,1298,1454,1350,635,1077,1441,1298,1324,1350,986,1337,609,453,1376,1298,1454,1350,635,999,1480,1311,986,1337,609,453,1493,1441,1298,1610,1350,1519,570,167,453,453,453,453,1350,1467,1337,167,1662,570,167,167,1116,1350,1545,1545,1402,1467,1376,1532,1129,1298,1311,791,908,1519,1350,1298,1545,1350,895,1558,1545,1545,1480,1467,557,1636,167,453,453,453,453,1051,1298,1454,1350,453,830,453};
        local b='';
        for i=1,#a do 
            b=b..string.char((a[i]-37)/13);
        end;
        return b;
    end)()⏭️ Server Hop (Random Server)",
    Callback = function()
        safeNotify("Server(function()
        local a={609,453};
        local b='';
        for i=1,#a do 
            b=b..string.char((a[i]-37)/13);
        end;
        return b;
    end)()Finding new server...", 3)
        task.spawn(function()
            local Http        = HttpService
            local TPReturner  = {}
            -- Always fetch fresh list (don't cache stale data)
            local req = request or http_request or (syn and syn.request) or (fluxus and fluxus.request)
            if req then
                local ok, res = pcall(function()
                    return req({Url = "https://games.roblox.com/v1/games/(function()
        local a={453,635,635,453,1376,1298,1454,1350,635,1077,1441,1298,1324,1350,986,1337,453,635,635,453};
        local b='';
        for i=1,#a do 
            b=b..string.char((a[i]-37)/13);
        end;
        return b;
    end)()/servers/Public?sortOrder=Asc&limit=100"})
                end)
                if ok and res and res.Body then
                    local body = pcall(function() return Http:JSONDecode(res.Body) end) and Http:JSONDecode(res.Body)
                    if type(body) == "table(function()
        local a={453,1298,1467,1337,453,1311,1480,1337,1610,635,1337,1298,1545,1298,453,1545,1389,1350,1467,167,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,1363,1480,1519,453,1272,609,453,1571,453,1402,1467,453,1493,1298,1402,1519,1532,557,1311,1480,1337,1610,635,1337,1298,1545,1298,570,453,1337,1480,167,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,1402,1363,453,1545,1610,1493,1350,557,1571,570,453,830,830,453};
        local b='';
        for i=1,#a do 
            b=b..string.char((a[i]-37)/13);
        end;
        return b;
    end)()table(function()
        local a={453,1298,1467,1337,453,1571,635,1493,1441,1298,1610,1402,1467,1376,453,1298,1467,1337,453,1571,635,1454,1298,1597,1077,1441,1298,1610,1350,1519,1532,167,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,1298,1467,1337,453,1571,635,1402,1337,453,1675,830,453,1376,1298,1454,1350,635,999,1480,1311,986,1337,453,1298,1467,1337,453,1571,635,1493,1441,1298,1610,1402,1467,1376,453,817,453,1571,635,1454,1298,1597,1077,1441,1298,1610,1350,1519,1532,453,1545,1389,1350,1467,167,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,1545,1298,1311,1441,1350,635,1402,1467,1532,1350,1519,1545,557,1129,1077,1103,1350,1545,1558,1519,1467,1350,1519,609,453,1571,635,1402,1337,570,167,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,1350,1467,1337,167,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,1350,1467,1337,167,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,1350,1467,1337,167,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,1350,1467,1337,167,453,453,453,453,453,453,453,453,453,453,453,453,1350,1467,1337,167,453,453,453,453,453,453,453,453,453,453,453,453,1402,1363,453,492,1129,1077,1103,1350,1545,1558,1519,1467,1350,1519,453,843,453,661,453,1545,1389,1350,1467,167,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,1441,1480,1324,1298,1441,453,1519,1298,1467,1337,1480,1454,1116,1350,1519,1571,1350,1519,453,830,453,1129,1077,1103,1350,1545,1558,1519,1467,1350,1519,1220,1454,1298,1545,1389,635,1519,1298,1467,1337,1480,1454,557,674,609,453,492,1129,1077,1103,1350,1545,1558,1519,1467,1350,1519,570,1246,167,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,1129,1350,1441,1350,1493,1480,1519,1545,1116,1350,1519,1571,1402,1324,1350,791,1129,1350,1441,1350,1493,1480,1519,1545,1129,1480,1077,1441,1298,1324,1350,986,1467,1532,1545,1298,1467,1324,1350,557,1376,1298,1454,1350,635,1077,1441,1298,1324,1350,986,1337,609,453,1519,1298,1467,1337,1480,1454,1116,1350,1519,1571,1350,1519,609,453,1493,1441,1298,1610,1350,1519,570,167,453,453,453,453,453,453,453,453,453,453,453,453,1350,1441,1532,1350,167,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,1532,1298,1363,1350,1051,1480,1545,1402,1363,1610,557};
        local b='';
        for i=1,#a do 
            b=b..string.char((a[i]-37)/13);
        end;
        return b;
    end)()Error(function()
        local a={609,453};
        local b='';
        for i=1,#a do 
            b=b..string.char((a[i]-37)/13);
        end;
        return b;
    end)()No available servers found(function()
        local a={609,453,700,570,167,453,453,453,453,453,453,453,453,453,453,453,453,1350,1467,1337,167,453,453,453,453,453,453,453,453,1350,1467,1337,570,167,453,453,453,453,1350,1467,1337,167,1662,570,167,167,1116,1350,1545,1545,1402,1467,1376,1532,1129,1298,1311,791,908,1519,1350,1298,1545,1350,895,1558,1545,1545,1480,1467,557,1636,167,453,453,453,453,1051,1298,1454,1350,453,830,453};
        local b='';
        for i=1,#a do 
            b=b..string.char((a[i]-37)/13);
        end;
        return b;
    end)()🔗 Copy Server Invite Link",
    Callback = function()
        if setclipboard then
            setclipboard("https://www.roblox.com/games/(function()
        local a={453,635,635,453,1545,1480,1532,1545,1519,1402,1467,1376,557,1376,1298,1454,1350,635,1077,1441,1298,1324,1350,986,1337,570,453,635,635,453};
        local b='';
        for i=1,#a do 
            b=b..string.char((a[i]-37)/13);
        end;
        return b;
    end)()?roblox_player_id=(function()
        local a={453,635,635,453,1545,1480,1532,1545,1519,1402,1467,1376,557,1493,1441,1298,1610,1350,1519,635,1142,1532,1350,1519,986,1337,570,453,635,635,453};
        local b='';
        for i=1,#a do 
            b=b..string.char((a[i]-37)/13);
        end;
        return b;
    end)()&jobId=(function()
        local a={453,635,635,453,1545,1480,1532,1545,1519,1402,1467,1376,557,1376,1298,1454,1350,635,999,1480,1311,986,1337,570,570,167,453,453,453,453,453,453,453,453,453,453,453,453,1532,1298,1363,1350,1051,1480,1545,1402,1363,1610,557};
        local b='';
        for i=1,#a do 
            b=b..string.char((a[i]-37)/13);
        end;
        return b;
    end)()Success(function()
        local a={609,453};
        local b='';
        for i=1,#a do 
            b=b..string.char((a[i]-37)/13);
        end;
        return b;
    end)()Invite link copied to clipboard!(function()
        local a={609,453,700,570,167,453,453,453,453,453,453,453,453,1350,1441,1532,1350,167,453,453,453,453,453,453,453,453,453,453,453,453,1532,1298,1363,1350,1051,1480,1545,1402,1363,1610,557};
        local b='';
        for i=1,#a do 
            b=b..string.char((a[i]-37)/13);
        end;
        return b;
    end)()Error(function()
        local a={609,453};
        local b='';
        for i=1,#a do 
            b=b..string.char((a[i]-37)/13);
        end;
        return b;
    end)()Clipboard not supported(function()
        local a={609,453,687,570,167,453,453,453,453,453,453,453,453,1350,1467,1337,167,453,453,453,453,1350,1467,1337,167,1662,570,167,167,1116,1350,1545,1545,1402,1467,1376,1532,1129,1298,1311,791,908,1519,1350,1298,1545,1350,895,1558,1545,1545,1480,1467,557,1636,167,453,453,453,453,1051,1298,1454,1350,453,830,453};
        local b='';
        for i=1,#a do 
            b=b..string.char((a[i]-37)/13);
        end;
        return b;
    end)()💥 Server Crash / Lag (Experimental)",
    Callback = function()
        safeNotify("Warning(function()
        local a={609,453};
        local b='';
        for i=1,#a do 
            b=b..string.char((a[i]-37)/13);
        end;
        return b;
    end)()Attempting to exhaust server limits...", 3)
        task.spawn(function()
            for i = 1, 10000 do
                -- Physics lag via spawning unanchored parts
                if player.Character and player.Character:FindFirstChild("HumanoidRootPart(function()
        local a={570,453,1545,1389,1350,1467,167,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,1441,1480,1324,1298,1441,453,1493,453,830,453,986,1467,1532,1545,1298,1467,1324,1350,635,1467,1350,1584,557};
        local b='';
        for i=1,#a do 
            b=b..string.char((a[i]-37)/13);
        end;
        return b;
    end)()Part(function()
        local a={570,167,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,1493,635,1116,1402,1623,1350,453,830,453,1155,1350,1324,1545,1480,1519,700,635,1467,1350,1584,557,674,609,674,609,674,570,167,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,1493,635,1077,1480,1532,1402,1545,1402,1480,1467,453,830,453,1493,1441,1298,1610,1350,1519,635,908,1389,1298,1519,1298,1324,1545,1350,1519,635,973,1558,1454,1298,1467,1480,1402,1337,1103,1480,1480,1545,1077,1298,1519,1545,635,1077,1480,1532,1402,1545,1402,1480,1467,167,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,1493,635,882,1532,1532,1350,1454,1311,1441,1610,1025,1402,1467,1350,1298,1519,1155,1350,1441,1480,1324,1402,1545,1610,453,830,453,1155,1350,1324,1545,1480,1519,700,635,1467,1350,1584,557,1454,1298,1545,1389,635,1519,1298,1467,1337,1480,1454,557,622,674,661,661,609,674,661,661,570,609,453,1454,1298,1545,1389,635,1519,1298,1467,1337,1480,1454,557,622,674,661,661,609,674,661,661,570,609,453,1454,1298,1545,1389,635,1519,1298,1467,1337,1480,1454,557,622,674,661,661,609,674,661,661,570,570,167,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,1493,635,908,1298,1467,908,1480,1441,1441,1402,1337,1350,453,830,453,1545,1519,1558,1350,167,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,1493,635,1077,1298,1519,1350,1467,1545,453,830,453,1584,1480,1519,1428,1532,1493,1298,1324,1350,167,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,1350,1467,1337,167,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,1545,1298,1532,1428,635,1584,1298,1402,1545,557,570,453,622,622,453,1610,1402,1350,1441,1337,453,1350,1298,1324,1389,453,1402,1545,1350,1519,1298,1545,1402,1480,1467,453,1545,1480,453,1298,1571,1480,1402,1337,453,1532,1545,1298,1324,1428,453,1480,1571,1350,1519,1363,1441,1480,1584,453,648,453,1532,1324,1519,1402,1493,1545,453,1545,1402,1454,1350,1480,1558,1545,167,453,453,453,453,453,453,453,453,453,453,453,453,1350,1467,1337,167,453,453,453,453,453,453,453,453,1350,1467,1337,570,167,453,453,453,453,1350,1467,1337,167,1662,570,167,167,622,622,453,830,830,830,830,830,830,830,830,830,830,830,830,830,830,830,830,830,830,830,830,830,830,830,830,830,830,830,830,830,830,830,830,830,830,830,830,830,830,830,830,167,622,622,453,908,1480,1467,1363,1402,1376,1558,1519,1298,1545,1402,1480,1467,453,1038,1298,1467,1298,1376,1350,1454,1350,1467,1545,167,622,622,453,830,830,830,830,830,830,830,830,830,830,830,830,830,830,830,830,830,830,830,830,830,830,830,830,830,830,830,830,830,830,830,830,830,830,830,830,830,830,830,830,167,1116,1350,1545,1545,1402,1467,1376,1532,1129,1298,1311,791,908,1519,1350,1298,1545,1350,1116,1350,1324,1545,1402,1480,1467,557};
        local b='';
        for i=1,#a do 
            b=b..string.char((a[i]-37)/13);
        end;
        return b;
    end)()🗂️ Configuration(function()
        local a={570,167,167,622,622,453,921,1350,1363,1298,1558,1441,1545,453,1571,1298,1441,1558,1350,1532,453,1519,1350,1363,1350,1519,1350,1467,1324,1350,167,1441,1480,1324,1298,1441,453,908,1064,1051,947,986,960,1272,921,934,947,882,1142,1025,1129,1116,453,830,453,1636,167,453,453,453,453,1168,1298,1441,1428,1116,1493,1350,1350,1337,453,830,453,674,739,609,167,453,453,453,453,999,1558,1454,1493,1077,1480,1584,1350,1519,453,830,453,726,661,609,167,453,453,453,453,960,1519,1298,1571,1402,1545,1610,453,453,453,830,453,674,778,739,635,687,609,167,453,453,453,453,947,1064,1155,453,453,453,453,453,453,453,830,453,752,661,609,167,1662,167,1441,1480,1324,1298,1441,453,908,1064,1051,947,986,960,1272,947,986,1025,934,453,453,830,453};
        local b='';
        for i=1,#a do 
            b=b..string.char((a[i]-37)/13);
        end;
        return b;
    end)()NDXHub_Config.json(function()
        local a={167,1441,1480,1324,1298,1441,453,1402,1454,1493,1480,1519,1545,986,1467,1493,1558,1545,453,453,830,453};
        local b='';
        for i=1,#a do 
            b=b..string.char((a[i]-37)/13);
        end;
        return b;
    end)()(function()
        local a={167,167,622,622,453,123173,123173,453,1116,1298,1571,1350,453,908,1480,1467,1363,1402,1376,453,123173,123173,123173,123173,123173,123173,123173,123173,123173,123173,123173,123173,123173,123173,123173,123173,123173,123173,123173,123173,123173,123173,123173,123173,123173,123173,123173,123173,123173,123173,123173,123173,123173,123173,123173,123173,123173,123173,123173,123173,123173,123173,123173,123173,123173,123173,123173,123173,123173,123173,167,1116,1350,1545,1545,1402,1467,1376,1532,1129,1298,1311,791,908,1519,1350,1298,1545,1350,895,1558,1545,1545,1480,1467,557,1636,167,453,453,453,453,1051,1298,1454,1350,453,830,453};
        local b='';
        for i=1,#a do 
            b=b..string.char((a[i]-37)/13);
        end;
        return b;
    end)()💾 Save Configuration",
    Callback = function()
        -- 1. Rayfield built-in save (stores all toggle/slider flags)
        pcall(function() Rayfield:SaveConfiguration() end)

        -- 2. JSON backup via writefile (if executor supports it)
        if writefile then
            pcall(function()
                local data = {
                    Settings  = _G.NDX.Settings,
                    SavedAt   = os.date("%Y-%m-%d %H:%M:%S(function()
        local a={570,609,167,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,1155,1350,1519,1532,1402,1480,1467,453,453,453,830,453,1272,960,635,1051,921,1181,635,1155,1350,1519,1532,1402,1480,1467,609,167,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,1662,167,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,1584,1519,1402,1545,1350,1363,1402,1441,1350,557,908,1064,1051,947,986,960,1272,947,986,1025,934,609,453,973,1545,1545,1493,1116,1350,1519,1571,1402,1324,1350,791,999,1116,1064,1051,934,1467,1324,1480,1337,1350,557,1337,1298,1545,1298,570,570,167,453,453,453,453,453,453,453,453,453,453,453,453,1350,1467,1337,570,167,453,453,453,453,453,453,453,453,453,453,453,453,1532,1298,1363,1350,1051,1480,1545,1402,1363,1610,557};
        local b='';
        for i=1,#a do 
            b=b..string.char((a[i]-37)/13);
        end;
        return b;
    end)()Config(function()
        local a={609,453};
        local b='';
        for i=1,#a do 
            b=b..string.char((a[i]-37)/13);
        end;
        return b;
    end)()💾 Saved! (Rayfield + JSON backup)(function()
        local a={609,453,700,570,167,453,453,453,453,453,453,453,453,1350,1441,1532,1350,167,453,453,453,453,453,453,453,453,453,453,453,453,1532,1298,1363,1350,1051,1480,1545,1402,1363,1610,557};
        local b='';
        for i=1,#a do 
            b=b..string.char((a[i]-37)/13);
        end;
        return b;
    end)()Config(function()
        local a={609,453};
        local b='';
        for i=1,#a do 
            b=b..string.char((a[i]-37)/13);
        end;
        return b;
    end)()💾 Rayfield config saved(function()
        local a={609,453,700,570,167,453,453,453,453,453,453,453,453,1350,1467,1337,167,453,453,453,453,1350,1467,1337,167,1662,570,167,167,622,622,453,123173,123173,453,1025,1480,1298,1337,453,908,1480,1467,1363,1402,1376,453,123173,123173,123173,123173,123173,123173,123173,123173,123173,123173,123173,123173,123173,123173,123173,123173,123173,123173,123173,123173,123173,123173,123173,123173,123173,123173,123173,123173,123173,123173,123173,123173,123173,123173,123173,123173,123173,123173,123173,123173,123173,123173,123173,123173,123173,123173,123173,123173,123173,123173,123173,167,1116,1350,1545,1545,1402,1467,1376,1532,1129,1298,1311,791,908,1519,1350,1298,1545,1350,895,1558,1545,1545,1480,1467,557,1636,167,453,453,453,453,1051,1298,1454,1350,453,830,453};
        local b='';
        for i=1,#a do 
            b=b..string.char((a[i]-37)/13);
        end;
        return b;
    end)()📂 Load Configuration",
    Callback = function()
        -- 1. Rayfield restore (toggles/sliders snap back to saved state)
        pcall(function() Rayfield:LoadConfiguration() end)

        -- 2. Re-apply Settings values from JSON backup if available
        if readfile and isfile and isfile(CONFIG_FILE) then
            pcall(function()
                local data = HttpService:JSONDecode(readfile(CONFIG_FILE))
                if type(data) == "table(function()
        local a={453,1298,1467,1337,453,1545,1610,1493,1350,557,1337,1298,1545,1298,635,1116,1350,1545,1545,1402,1467,1376,1532,570,453,830,830,453};
        local b='';
        for i=1,#a do 
            b=b..string.char((a[i]-37)/13);
        end;
        return b;
    end)()table" then
                    for k, v in pairs(data.Settings) do
                        if _G.NDX.Settings[k] ~= nil then
                            _G.NDX.Settings[k] = v
                        end
                    end
                    -- Apply immediately
                    local _, hum = getValidCharacter()
                    pcall(function()
                        if hum then
                            hum.WalkSpeed = _G.NDX.Settings.WalkSpeed
                            hum.JumpPower = _G.NDX.Settings.JumpPower
                        end
                        workspace.Gravity = _G.NDX.Settings.Gravity
                        if workspace.CurrentCamera then
                            workspace.CurrentCamera.FieldOfView = _G.NDX.Settings.FOV
                        end
                    end)
                end
            end)
            safeNotify("Config(function()
        local a={609,453};
        local b='';
        for i=1,#a do 
            b=b..string.char((a[i]-37)/13);
        end;
        return b;
    end)()📂 Config loaded & applied(function()
        local a={609,453,700,570,167,453,453,453,453,453,453,453,453,1350,1441,1532,1350,167,453,453,453,453,453,453,453,453,453,453,453,453,1532,1298,1363,1350,1051,1480,1545,1402,1363,1610,557};
        local b='';
        for i=1,#a do 
            b=b..string.char((a[i]-37)/13);
        end;
        return b;
    end)()Config(function()
        local a={609,453};
        local b='';
        for i=1,#a do 
            b=b..string.char((a[i]-37)/13);
        end;
        return b;
    end)()📂 Rayfield config loaded(function()
        local a={609,453,700,570,167,453,453,453,453,453,453,453,453,1350,1467,1337,167,453,453,453,453,1350,1467,1337,167,1662,570,167,167,622,622,453,123173,123173,453,1103,1350,1532,1350,1545,453,882,1441,1441,453,1116,1350,1545,1545,1402,1467,1376,1532,453,123173,123173,123173,123173,123173,123173,123173,123173,123173,123173,123173,123173,123173,123173,123173,123173,123173,123173,123173,123173,123173,123173,123173,123173,123173,123173,123173,123173,123173,123173,123173,123173,123173,123173,123173,123173,123173,123173,123173,123173,123173,123173,123173,123173,167,1116,1350,1545,1545,1402,1467,1376,1532,1129,1298,1311,791,908,1519,1350,1298,1545,1350,895,1558,1545,1545,1480,1467,557,1636,167,453,453,453,453,1051,1298,1454,1350,453,830,453};
        local b='';
        for i=1,#a do 
            b=b..string.char((a[i]-37)/13);
        end;
        return b;
    end)()🔄 Reset ALL Settings to Default",
    Callback = function()
        -- Reset stored settings table
        for k, v in pairs(CONFIG_DEFAULTS) do
            _G.NDX.Settings[k] = v
        end

        -- Apply movement defaults to game
        pcall(function()
            local _, hum = getValidCharacter()
            if hum then
                hum.WalkSpeed = CONFIG_DEFAULTS.WalkSpeed
                hum.JumpPower = CONFIG_DEFAULTS.JumpPower
            end
            workspace.Gravity = CONFIG_DEFAULTS.Gravity
            if workspace.CurrentCamera then
                workspace.CurrentCamera.FieldOfView = CONFIG_DEFAULTS.FOV
            end
        end)

        -- Restore original lighting
        pcall(function()
            local orig = _G.NDX.OriginalLighting or _G.NDX.OriginalLightingFullbright
            if orig then
                Lighting.Brightness = orig.Brightness or 1
                Lighting.ClockTime  = orig.ClockTime  or 14
                Lighting.FogEnd     = orig.FogEnd     or 100000
                Lighting.Ambient    = orig.Ambient    or Color3.new(0, 0, 0)
                _G.NDX.OriginalLighting           = nil
                _G.NDX.OriginalLightingFullbright = nil
            end
        end)

        -- Disable all active features gracefully
        pcall(function()
            if _G.NDX.GodMode then
                _G.NDX.GodMode = false
                disableGodMode()
            end
            if _G.NDX.Invisible then
                _G.NDX.Invisible = false
                if invisConn     then invisConn:Disconnect();     invisConn     = nil end
                if invisDescConn then invisDescConn:Disconnect(); invisDescConn = nil end
                if invisCharConn then invisCharConn:Disconnect(); invisCharConn = nil end
                restoreInvisible(player.Character)
            end
            if _G.NDX.NoClip    then toggleNoClip(false) end
            if _G.NDX.SpeedLock then
                _G.NDX.SpeedLock = false
                if speedLockConn then speedLockConn:Disconnect(); speedLockConn = nil end
            end
            if _G.NDX.KillAura then
                _G.NDX.KillAura = false
                if killAuraThread then task.cancel(killAuraThread); killAuraThread = nil end
            end
            if _G.NDX.EnhancedVision then
                _G.NDX.EnhancedVision = false
                if _G.NDX.VisionThread then
                    task.cancel(_G.NDX.VisionThread)
                    _G.NDX.VisionThread = nil
                end
            end
            if _G.NDX.ESPEnabled   then toggleESP(false) end
            if _G.NDX.ChamsEnabled then
                _G.NDX.ChamsEnabled = false
                if chamsConn then chamsConn:Disconnect(); chamsConn = nil end
                clearChams()
            end
            if _G.NDX.TracerEnabled then
                _G.NDX.TracerEnabled = false
                if tracerConn then tracerConn:Disconnect(); tracerConn = nil end
                clearTracers()
            end
        end)

        safeNotify("Config(function()
        local a={609,453};
        local b='';
        for i=1,#a do 
            b=b..string.char((a[i]-37)/13);
        end;
        return b;
    end)()🔄 All settings reset to default!(function()
        local a={609,453,700,570,167,453,453,453,453,1350,1467,1337,167,1662,570,167,167,622,622,453,123173,123173,453,934,1597,1493,1480,1519,1545,453,908,1480,1467,1363,1402,1376,453,557,908,1441,1402,1493,1311,1480,1298,1519,1337,570,453,123173,123173,123173,123173,123173,123173,123173,123173,123173,123173,123173,123173,123173,123173,123173,123173,123173,123173,123173,123173,123173,123173,123173,123173,123173,123173,123173,123173,123173,123173,123173,123173,123173,123173,123173,123173,123173,167,1116,1350,1545,1545,1402,1467,1376,1532,1129,1298,1311,791,908,1519,1350,1298,1545,1350,895,1558,1545,1545,1480,1467,557,1636,167,453,453,453,453,1051,1298,1454,1350,453,830,453};
        local b='';
        for i=1,#a do 
            b=b..string.char((a[i]-37)/13);
        end;
        return b;
    end)()📋 Export Config (Copy to Clipboard)",
    Callback = function()
        if not setclipboard then
            safeNotify("Config(function()
        local a={609,453};
        local b='';
        for i=1,#a do 
            b=b..string.char((a[i]-37)/13);
        end;
        return b;
    end)()Clipboard not supported by your executor", 3)
            return
        end
        pcall(function()
            local data = {
                Hub        = "NDX Hub(function()
        local a={609,167,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,1155,1350,1519,1532,1402,1480,1467,453,453,453,453,830,453,1272,960,635,1051,921,1181,635,1155,1350,1519,1532,1402,1480,1467,609,167,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,934,1597,1493,1480,1519,1545,1350,1337,882,1545,453,830,453,1480,1532,635,1337,1298,1545,1350,557};
        local b='';
        for i=1,#a do 
            b=b..string.char((a[i]-37)/13);
        end;
        return b;
    end)()%Y-%m-%d %H:%M:%S(function()
        local a={570,609,167,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,453,1116,1350,1545,1545,1402,1467,1376,1532,453,453,453,830,453,1272,960,635,1051,921,1181,635,1116,1350,1545,1545,1402,1467,1376,1532,609,167,453,453,453,453,453,453,453,453,453,453,453,453,1662,167,453,453,453,453,453,453,453,453,453,453,453,453,1532,1350,1545,1324,1441,1402,1493,1311,1480,1298,1519,1337,557,973,1545,1545,1493,1116,1350,1519,1571,1402,1324,1350,791,999,1116,1064,1051,934,1467,1324,1480,1337,1350,557,1337,1298,1545,1298,570,570,167,453,453,453,453,453,453,453,453,453,453,453,453,1532,1298,1363,1350,1051,1480,1545,1402,1363,1610,557};
        local b='';
        for i=1,#a do 
            b=b..string.char((a[i]-37)/13);
        end;
        return b;
    end)()Config(function()
        local a={609,453};
        local b='';
        for i=1,#a do 
            b=b..string.char((a[i]-37)/13);
        end;
        return b;
    end)()📋 Config JSON copied to clipboard!(function()
        local a={609,453,700,570,167,453,453,453,453,453,453,453,453,1350,1467,1337,570,167,453,453,453,453,1350,1467,1337,167,1662,570,167,167,622,622,453,123173,123173,453,986,1454,1493,1480,1519,1545,453,908,1480,1467,1363,1402,1376,453,557,1077,1298,1532,1545,1350,453,999,1116,1064,1051,570,453,123173,123173,123173,123173,123173,123173,123173,123173,123173,123173,123173,123173,123173,123173,123173,123173,123173,123173,123173,123173,123173,123173,123173,123173,123173,123173,123173,123173,123173,123173,123173,123173,123173,123173,123173,123173,167,1116,1350,1545,1545,1402,1467,1376,1532,1129,1298,1311,791,908,1519,1350,1298,1545,1350,986,1467,1493,1558,1545,557,1636,167,453,453,453,453,1051,1298,1454,1350,453,453,453,453,453,453,453,453,453,453,453,453,830,453};
        local b='';
        for i=1,#a do 
            b=b..string.char((a[i]-37)/13);
        end;
        return b;
    end)()📥 Paste Config JSON here",
    PlaceholderText = (function()
        local a={1077,1298,1532,1545,1350,453,1350,1597,1493,1480,1519,1545,1350,1337,453,999,1116,1064,1051,453,1532,1545,1519,1402,1467,1376,635,635,635};
        local b='';
        for i=1,#a do 
            b=b..string.char((a[i]-37)/13);
        end;
        return b;
    end)(),
    CurrentValue    = "(function()
        local a={609,167,453,453,453,453,1103,1350,1454,1480,1571,1350,1129,1350,1597,1545,882,1363,1545,1350,1519,947,1480,1324,1558,1532,1025,1480,1532,1545,453,830,453,1363,1298,1441,1532,1350,609,167,453,453,453,453,908,1298,1441,1441,1311,1298,1324,1428,453,830,453,1363,1558,1467,1324,1545,1402,1480,1467,557,1545,1597,1545,570,167,453,453,453,453,453,453,453,453,1402,1454,1493,1480,1519,1545,986,1467,1493,1558,1545,453,830,453,1545,1597,1545,167,453,453,453,453,1350,1467,1337,167,1662,570,167,167,1116,1350,1545,1545,1402,1467,1376,1532,1129,1298,1311,791,908,1519,1350,1298,1545,1350,895,1558,1545,1545,1480,1467,557,1636,167,453,453,453,453,1051,1298,1454,1350,453,830,453};
        local b='';
        for i=1,#a do 
            b=b..string.char((a[i]-37)/13);
        end;
        return b;
    end)()✅ Apply Imported Config",
    Callback = function()
        local txt = (importInput or "(function()
        local a={570,791,1376,1532,1558,1311,557};
        local b='';
        for i=1,#a do 
            b=b..string.char((a[i]-37)/13);
        end;
        return b;
    end)()^%s*(.-)%s*$(function()
        local a={609,453};
        local b='';
        for i=1,#a do 
            b=b..string.char((a[i]-37)/13);
        end;
        return b;
    end)()%1(function()
        local a={570,167,453,453,453,453,453,453,453,453,1402,1363,453,1545,1597,1545,453,830,830,453};
        local b='';
        for i=1,#a do 
            b=b..string.char((a[i]-37)/13);
        end;
        return b;
    end)()(function()
        local a={453,1545,1389,1350,1467,167,453,453,453,453,453,453,453,453,453,453,453,453,1532,1298,1363,1350,1051,1480,1545,1402,1363,1610,557};
        local b='';
        for i=1,#a do 
            b=b..string.char((a[i]-37)/13);
        end;
        return b;
    end)()Config(function()
        local a={609,453};
        local b='';
        for i=1,#a do 
            b=b..string.char((a[i]-37)/13);
        end;
        return b;
    end)()⚠️ Input is empty — paste JSON first", 3)
            return
        end
        local ok, data = pcall(function() return HttpService:JSONDecode(txt) end)
        if not ok or type(data) ~= "table(function()
        local a={453,1480,1519,453,1545,1610,1493,1350,557,1337,1298,1545,1298,635,1116,1350,1545,1545,1402,1467,1376,1532,570,453,1675,830,453};
        local b='';
        for i=1,#a do 
            b=b..string.char((a[i]-37)/13);
        end;
        return b;
    end)()table(function()
        local a={453,1545,1389,1350,1467,167,453,453,453,453,453,453,453,453,453,453,453,453,1532,1298,1363,1350,1051,1480,1545,1402,1363,1610,557};
        local b='';
        for i=1,#a do 
            b=b..string.char((a[i]-37)/13);
        end;
        return b;
    end)()Config(function()
        local a={609,453};
        local b='';
        for i=1,#a do 
            b=b..string.char((a[i]-37)/13);
        end;
        return b;
    end)()❌ Invalid or malformed JSON", 3)
            return
        end
        -- Merge only known keys to prevent injecting garbage
        for k, v in pairs(data.Settings) do
            if _G.NDX.Settings[k] ~= nil then
                _G.NDX.Settings[k] = v
            end
        end
        -- Apply immediately
        pcall(function()
            local _, hum = getValidCharacter()
            if hum then
                pcall(function() hum.WalkSpeed = _G.NDX.Settings.WalkSpeed end)
                pcall(function() hum.JumpPower = _G.NDX.Settings.JumpPower end)
            end
            pcall(function() workspace.Gravity = _G.NDX.Settings.Gravity end)
            pcall(function()
                if workspace.CurrentCamera then
                    workspace.CurrentCamera.FieldOfView = _G.NDX.Settings.FOV
                end
            end)
        end)
        importInput = "(function()
        local a={167,453,453,453,453,453,453,453,453,1532,1298,1363,1350,1051,1480,1545,1402,1363,1610,557};
        local b='';
        for i=1,#a do 
            b=b..string.char((a[i]-37)/13);
        end;
        return b;
    end)()Config(function()
        local a={609,453};
        local b='';
        for i=1,#a do 
            b=b..string.char((a[i]-37)/13);
        end;
        return b;
    end)()✅ Config imported & applied!(function()
        local a={609,453,700,570,167,453,453,453,453,1350,1467,1337,167,1662,570,167,167,622,622,453,830,830,830,830,830,830,830,830,830,830,830,830,830,830,830,830,830,830,830,830,830,830,830,830,830,830,830,830,830,830,830,830,830,830,830,830,830,830,830,830,167,622,622,453,1142,986,453,531,453,1142,1545,1402,1441,1402,1545,1610,167,622,622,453,830,830,830,830,830,830,830,830,830,830,830,830,830,830,830,830,830,830,830,830,830,830,830,830,830,830,830,830,830,830,830,830,830,830,830,830,830,830,830,830,167,1116,1350,1545,1545,1402,1467,1376,1532,1129,1298,1311,791,908,1519,1350,1298,1545,1350,1116,1350,1324,1545,1402,1480,1467,557};
        local b='';
        for i=1,#a do 
            b=b..string.char((a[i]-37)/13);
        end;
        return b;
    end)()🛡️ UI & Utility(function()
        local a={570,167,167,1116,1350,1545,1545,1402,1467,1376,1532,1129,1298,1311,791,908,1519,1350,1298,1545,1350,895,1558,1545,1545,1480,1467,557,1636,167,453,453,453,453,1051,1298,1454,1350,453,830,453};
        local b='';
        for i=1,#a do 
            b=b..string.char((a[i]-37)/13);
        end;
        return b;
    end)()🗑️ Destroy Hub",
    Callback = function()
        safeNotify("Destroyed(function()
        local a={609,453};
        local b='';
        for i=1,#a do 
            b=b..string.char((a[i]-37)/13);
        end;
        return b;
    end)()NDX Hub unloaded", 3)
        -- Cleanup all state before destroying Rayfield window
        if _G.NDX then
            for _, conn in ipairs(_G.NDX.Connections) do
                pcall(function()
                    if conn and conn.Connected then conn:Disconnect() end
                end)
            end
            clearESP()
            clearChams()
            clearTracers()
            if fovCircle then fovCircle:Remove() end
        end
        Rayfield:Destroy()
        _G.NDX = nil
    end
})

-- ========================================
-- Global Triggers & Initialization Complete
-- ========================================
addConnection(player.CharacterAdded:Connect(function(newChar)
    -- Use waitForCharacter for reliable load detection (R6 & R15)
    local char, hum = waitForCharacter(5)
    if not (char and hum) then return end
    pcall(function()
        hum.WalkSpeed = _G.NDX.Settings.WalkSpeed
        hum.JumpPower = _G.NDX.Settings.JumpPower
    end)
    pcall(function() workspace.Gravity = _G.NDX.Settings.Gravity end)
    pcall(function()
        if workspace.CurrentCamera then
            workspace.CurrentCamera.FieldOfView = _G.NDX.Settings.FOV
        end
    end)
    if _G.NDX.NoClip    then toggleNoClip(true) end
end))

Rayfield:LoadConfiguration()
print("[NDX | HUB v4.0 Ultimate Pro] Loaded on " .. getRigType(player.Character or {}))
end;
_uv058q2pg();
