local CoreGui = game:GetService("CoreGui")
local Players = game:GetService("Players")
local RunService = game:GetService("RunService")
local UserInputService = game:GetService("UserInputService")
local TweenService = game:GetService("TweenService")
local Workspace = game:GetService("Workspace")
local GuiService = game:GetService("GuiService")

local player = Players.LocalPlayer

-- Deteksi platform yang lebih akurat menggunakan PreferredInput
local isTouchDevice = false
local function updateInputType()
    local preferredInput = UserInputService.PreferredInput
    isTouchDevice = (preferredInput == Enum.PreferredInput.Touch)
end
updateInputType()
UserInputService:GetPropertyChangedSignal("PreferredInput"):Connect(updateInputType)

-- Clean up previous instances
pcall(function()
    if CoreGui:FindFirstChild("FlyGuiRemastered") then CoreGui.FlyGuiRemastered:Destroy() end
    if player.PlayerGui:FindFirstChild("FlyGuiRemastered") then player.PlayerGui.FlyGuiRemastered:Destroy() end
end)

local screenGui = Instance.new("ScreenGui")
screenGui.Name = "FlyGuiRemastered"
screenGui.ResetOnSpawn = false
screenGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
screenGui.ScreenInsets = Enum.ScreenInsets.DeviceSafeInsets -- Support untuk notch/dynamic island
local success = pcall(function() screenGui.Parent = CoreGui end)
if not success then screenGui.Parent = player:WaitForChild("PlayerGui") end

-- Modern UI Elements dengan scale untuk responsivitas
local mainFrame = Instance.new("Frame", screenGui)
mainFrame.Name = "MainFrame"
mainFrame.BackgroundColor3 = Color3.fromRGB(15, 15, 20)
mainFrame.Position = UDim2.new(0.05, 0, 0.4, 0)
mainFrame.Size = UDim2.new(0, 200, 0, 110)
mainFrame.Active = true
mainFrame.Draggable = true
mainFrame.ClipsDescendants = true
Instance.new("UICorner", mainFrame).CornerRadius = UDim.new(0, 8)
local mainStroke = Instance.new("UIStroke", mainFrame)
mainStroke.Color = Color3.fromRGB(0, 150, 255)
mainStroke.Thickness = 1.5

-- Constraint untuk menjaga proporsi di mobile
local aspectConstraint = Instance.new("UIAspectRatioConstraint", mainFrame)
aspectConstraint.AspectRatio = 1.8
aspectConstraint.AspectType = Enum.AspectType.FitWithinMaxSize

local titleBar = Instance.new("Frame", mainFrame)
titleBar.Size = UDim2.new(1, 0, 0, 25)
titleBar.BackgroundColor3 = Color3.fromRGB(20, 20, 25)
titleBar.BorderSizePixel = 0
Instance.new("UICorner", titleBar).CornerRadius = UDim.new(0, 8)
local titleFix = Instance.new("Frame", titleBar)
titleFix.Size = UDim2.new(1, 0, 0.5, 0)
titleFix.Position = UDim2.new(0, 0, 0.5, 0)
titleFix.BackgroundColor3 = Color3.fromRGB(20, 20, 25)
titleFix.BorderSizePixel = 0

local titleLabel = Instance.new("TextLabel", titleBar)
titleLabel.BackgroundTransparency = 1
titleLabel.Size = UDim2.new(1, -60, 1, 0)
titleLabel.Position = UDim2.new(0, 10, 0, 0)
titleLabel.Font = Enum.Font.GothamBold
titleLabel.Text = "✈ FLY GUI By NeanDX"
titleLabel.TextColor3 = Color3.fromRGB(100, 200, 255)
titleLabel.TextSize = 12
titleLabel.TextXAlignment = Enum.TextXAlignment.Left

local btnMinimize = Instance.new("TextButton", titleBar)
btnMinimize.Size = UDim2.new(0, 25, 0, 25)
btnMinimize.Position = UDim2.new(1, -50, 0, 0)
btnMinimize.BackgroundTransparency = 1
btnMinimize.Font = Enum.Font.GothamBold
btnMinimize.Text = "—"
btnMinimize.TextColor3 = Color3.fromRGB(255, 210, 60)
btnMinimize.TextSize = 14

local btnClose = Instance.new("TextButton", titleBar)
btnClose.Size = UDim2.new(0, 25, 0, 25)
btnClose.Position = UDim2.new(1, -25, 0, 0)
btnClose.BackgroundTransparency = 1
btnClose.Font = Enum.Font.GothamBold
btnClose.Text = "✕"
btnClose.TextColor3 = Color3.fromRGB(255, 80, 80)
btnClose.TextSize = 14

local contentFrame = Instance.new("Frame", mainFrame)
contentFrame.Size = UDim2.new(1, 0, 1, -25)
contentFrame.Position = UDim2.new(0, 0, 0, 25)
contentFrame.BackgroundTransparency = 1

-- Fungsi untuk membuat tombol dengan dukungan touch yang lebih baik
local function createBtn(parent, text, pos, size, color)
    local btn = Instance.new("TextButton", parent)
    btn.BackgroundColor3 = color or Color3.fromRGB(25, 25, 30)
    btn.Position = pos
    btn.Size = size
    btn.Font = Enum.Font.GothamBold
    btn.Text = text
    btn.TextColor3 = Color3.fromRGB(220, 220, 220)
    btn.TextSize = 12
    btn.AutoButtonColor = false
    
    -- Properti untuk touch
    btn.TextScaled = false
    btn.TextWrapped = false
    
    Instance.new("UICorner", btn).CornerRadius = UDim.new(0, 6)
    
    -- Visual feedback
    btn.MouseEnter:Connect(function()
        TweenService:Create(btn, TweenInfo.new(0.2), {BackgroundColor3 = Color3.fromRGB(
            math.min(btn.BackgroundColor3.R*255 + 20, 255), 
            math.min(btn.BackgroundColor3.G*255 + 20, 255), 
            math.min(btn.BackgroundColor3.B*255 + 20, 255)
        )}):Play()
    end)
    btn.MouseLeave:Connect(function()
        TweenService:Create(btn, TweenInfo.new(0.2), {BackgroundColor3 = color or Color3.fromRGB(25, 25, 30)}):Play()
    end)
    
    return btn
end

-- Tombol kontrol yang lebih besar untuk mobile
local btnUp = createBtn(contentFrame, "UP", UDim2.new(0, 8, 0, 8), UDim2.new(0, 45, 0, 32))
local btnDown = createBtn(contentFrame, "DOWN", UDim2.new(0, 8, 0, 45), UDim2.new(0, 45, 0, 32))

local btnMinus = createBtn(contentFrame, "-", UDim2.new(0, 58, 0, 8), UDim2.new(0, 30, 0, 32))
local btnPlus = createBtn(contentFrame, "+", UDim2.new(0, 162, 0, 8), UDim2.new(0, 30, 0, 32))

local lblSpeed = Instance.new("TextLabel", contentFrame)
lblSpeed.BackgroundColor3 = Color3.fromRGB(20, 20, 25)
lblSpeed.Position = UDim2.new(0, 92, 0, 8)
lblSpeed.Size = UDim2.new(0, 66, 0, 32)
lblSpeed.Font = Enum.Font.GothamBold
lblSpeed.Text = "1"
lblSpeed.TextColor3 = Color3.fromRGB(150, 255, 150)
lblSpeed.TextSize = 14
Instance.new("UICorner", lblSpeed).CornerRadius = UDim.new(0, 6)

local btnFly = createBtn(contentFrame, "FLY", UDim2.new(0, 58, 0, 45), UDim2.new(0, 134, 0, 32), Color3.fromRGB(40, 40, 50))

-- Mobile Control Frame - Panel kontrol tambahan untuk mobile
local mobileControlsFrame = Instance.new("Frame", screenGui)
mobileControlsFrame.Name = "MobileControls"
mobileControlsFrame.BackgroundTransparency = 1
mobileControlsFrame.Size = UDim2.new(1, 0, 1, 0)
mobileControlsFrame.Visible = false

-- D-Pad untuk mobile (di kiri bawah)
local dPadFrame = Instance.new("Frame", mobileControlsFrame)
dPadFrame.Name = "DPad"
dPadFrame.BackgroundColor3 = Color3.fromRGB(30, 30, 35)
dPadFrame.BackgroundTransparency = 0.3
dPadFrame.Position = UDim2.new(0, 20, 1, -180)
dPadFrame.Size = UDim2.new(0, 140, 0, 140)
dPadFrame.Visible = false
Instance.new("UICorner", dPadFrame).CornerRadius = UDim.new(0, 20)

local dPadStroke = Instance.new("UIStroke", dPadFrame)
dPadStroke.Color = Color3.fromRGB(0, 150, 255)
dPadStroke.Thickness = 2

-- Tombol D-Pad
local function createDPadBtn(name, pos, text)
    local btn = Instance.new("TextButton", dPadFrame)
    btn.Name = name
    btn.BackgroundColor3 = Color3.fromRGB(50, 50, 60)
    btn.Position = pos
    btn.Size = UDim2.new(0, 40, 0, 40)
    btn.Font = Enum.Font.GothamBold
    btn.Text = text
    btn.TextColor3 = Color3.fromRGB(255, 255, 255)
    btn.TextSize = 18
    btn.AutoButtonColor = false
    Instance.new("UICorner", btn).CornerRadius = UDim.new(0, 10)
    return btn
end

local btnForward = createDPadBtn("Forward", UDim2.new(0.5, -20, 0, 10), "▲")
local btnBackward = createDPadBtn("Backward", UDim2.new(0.5, -20, 1, -50), "▼")
local btnLeft = createDPadBtn("Left", UDim2.new(0, 10, 0.5, -20), "◀")
local btnRight = createDPadBtn("Right", UDim2.new(1, -50, 0.5, -20), "▶")

-- Tombol khusus mobile untuk naik/turun (di kanan)
local mobileActionFrame = Instance.new("Frame", mobileControlsFrame)
mobileActionFrame.Name = "ActionButtons"
mobileActionFrame.BackgroundTransparency = 1
mobileActionFrame.Position = UDim2.new(1, -100, 1, -180)
mobileActionFrame.Size = UDim2.new(0, 80, 0, 140)

local btnMobileUp = createBtn(mobileActionFrame, "↑", UDim2.new(0, 20, 0, 0), UDim2.new(0, 40, 0, 60), Color3.fromRGB(0, 150, 100))
btnMobileUp.TextSize = 24
local btnMobileDown = createBtn(mobileActionFrame, "↓", UDim2.new(0, 20, 0, 70), UDim2.new(0, 40, 0, 60), Color3.fromRGB(150, 50, 50))
btnMobileDown.TextSize = 24

-- Toggle button untuk menampilkan/menyembunyikan mobile controls
local btnToggleMobile = createBtn(contentFrame, "📱", UDim2.new(0, 8, 0, 82), UDim2.new(0, 32, 0, 24), Color3.fromRGB(50, 50, 60))
btnToggleMobile.TextSize = 14

-- LOGIC
local flySpeedMultiplier = 1
local maxFlySpeed = 50
local isFlying = false
local minimized = false
local mobileControlsVisible = false

local flyConn, upConn, downConn
local controlFlags = {f = 0, b = 0, l = 0, r = 0, up = 0, down = 0}
local currentSpeed = 0

local bodyGyro, bodyVelocity

-- Fungsi untuk mengatur visibilitas mobile controls berdasarkan device
local function updateMobileControlsVisibility()
    local shouldShow = isTouchDevice and isFlying
    mobileControlsFrame.Visible = shouldShow
    dPadFrame.Visible = shouldShow
    btnToggleMobile.Visible = isTouchDevice
end

local function cleanupConstraints()
    if bodyGyro then bodyGyro:Destroy(); bodyGyro = nil end
    if bodyVelocity then bodyVelocity:Destroy(); bodyVelocity = nil end
    if flyConn then flyConn:Disconnect(); flyConn = nil end
end

local function getRoot(char)
    return char:FindFirstChild("HumanoidRootPart") or char:FindFirstChild("Torso") or char:FindFirstChild("UpperTorso") or char.PrimaryPart
end

local function disableFly()
    isFlying = false
    TweenService:Create(btnFly, TweenInfo.new(0.3), {BackgroundColor3 = Color3.fromRGB(40, 40, 50)}):Play()
    btnFly.Text = "FLY"
    
    local char = player.Character
    if char then
        local hum = char:FindFirstChildOfClass("Humanoid")
        if hum then hum.PlatformStand = false; hum.AutoRotate = true end
    end
    cleanupConstraints()
    currentSpeed = 0
    updateMobileControlsVisibility()
end

local function enableFly()
    local char = player.Character
    if not char then return end
    local hrp = getRoot(char)
    local hum = char:FindFirstChildOfClass("Humanoid")
    if not hrp or not hum then return end
    
    hum.AutoRotate = false
    hum.PlatformStand = true
    
    isFlying = true
    TweenService:Create(btnFly, TweenInfo.new(0.3), {BackgroundColor3 = Color3.fromRGB(0, 150, 100)}):Play()
    btnFly.Text = "FLYING..."
    
    bodyVelocity = Instance.new("BodyVelocity")
    bodyVelocity.MaxForce = Vector3.new(9e9, 9e9, 9e9)
    bodyVelocity.Velocity = Vector3.zero
    bodyVelocity.Parent = hrp
    
    bodyGyro = Instance.new("BodyGyro")
    bodyGyro.MaxTorque = Vector3.new(9e9, 9e9, 9e9)
    bodyGyro.P = 1000
    bodyGyro.D = 50
    bodyGyro.CFrame = hrp.CFrame
    bodyGyro.Parent = hrp
    
    currentSpeed = 0
    if flyConn then flyConn:Disconnect() end
    
    flyConn = RunService.Heartbeat:Connect(function(dt)
        if not isFlying or not player.Character or hum.Health <= 0 then
            disableFly()
            return
        end
        local cam = Workspace.CurrentCamera
        local isMoving = (controlFlags.l + controlFlags.r ~= 0) or 
                        (controlFlags.f + controlFlags.b ~= 0) or 
                        (controlFlags.up + controlFlags.down ~= 0)
        
        local dtNormalized = dt * 60
        
        if isMoving then
            currentSpeed = math.min(currentSpeed + (flySpeedMultiplier * 1.5 * dtNormalized), maxFlySpeed * flySpeedMultiplier)
        else
            currentSpeed = math.max(currentSpeed - (flySpeedMultiplier * 3 * dtNormalized), 0)
        end
        
        local moveDir = Vector3.zero
        if isMoving then
            moveDir = (cam.CFrame.RightVector * (controlFlags.l + controlFlags.r)) +
                      (cam.CFrame.LookVector * (controlFlags.f + controlFlags.b)) +
                      (Vector3.new(0, 1, 0) * (controlFlags.up + controlFlags.down))
            if moveDir.Magnitude > 0 then moveDir = moveDir.Unit end
        end
        
        if bodyVelocity then bodyVelocity.Velocity = moveDir * currentSpeed end
        if bodyGyro then bodyGyro.CFrame = cam.CFrame end
    end)
    
    updateMobileControlsVisibility()
end

-- Event handlers
btnClose.MouseButton1Click:Connect(function()
    disableFly()
    TweenService:Create(mainFrame, TweenInfo.new(0.3, Enum.EasingStyle.Back, Enum.EasingDirection.In), {Size = UDim2.new(0, 0, 0, 0)}):Play()
    task.delay(0.35, function() screenGui:Destroy() end)
end)

btnMinimize.MouseButton1Click:Connect(function()
    minimized = not minimized
    btnMinimize.Text = minimized and "+" or "—"
    TweenService:Create(mainFrame, TweenInfo.new(0.35, Enum.EasingStyle.Exponential, Enum.EasingDirection.Out), {
        Size = minimized and UDim2.new(0, 200, 0, 25) or UDim2.new(0, 200, 0, 110)
    }):Play()
end)

btnPlus.MouseButton1Click:Connect(function()
    flySpeedMultiplier = math.clamp(flySpeedMultiplier + 1, 1, 15)
    lblSpeed.Text = tostring(flySpeedMultiplier)
end)

btnMinus.MouseButton1Click:Connect(function()
    flySpeedMultiplier = math.clamp(flySpeedMultiplier - 1, 1, 15)
    lblSpeed.Text = tostring(flySpeedMultiplier)
end)

-- Toggle mobile controls
btnToggleMobile.MouseButton1Click:Connect(function()
    mobileControlsVisible = not mobileControlsVisible
    if isFlying then
        dPadFrame.Visible = mobileControlsVisible
        mobileActionFrame.Visible = mobileControlsVisible
    end
end)

-- Input handling untuk PC (keyboard)
UserInputService.InputBegan:Connect(function(input, gpe)
    if gpe then return end
    if input.KeyCode == Enum.KeyCode.W then controlFlags.f = 1
    elseif input.KeyCode == Enum.KeyCode.S then controlFlags.b = -1
    elseif input.KeyCode == Enum.KeyCode.A then controlFlags.l = -1
    elseif input.KeyCode == Enum.KeyCode.D then controlFlags.r = 1 
    elseif input.KeyCode == Enum.KeyCode.Space then controlFlags.up = 1
    elseif input.KeyCode == Enum.KeyCode.LeftControl then controlFlags.down = -1 end
end)

UserInputService.InputEnded:Connect(function(input, gpe)
    if gpe then return end
    if input.KeyCode == Enum.KeyCode.W then controlFlags.f = 0
    elseif input.KeyCode == Enum.KeyCode.S then controlFlags.b = 0
    elseif input.KeyCode == Enum.KeyCode.A then controlFlags.l = 0
    elseif input.KeyCode == Enum.KeyCode.D then controlFlags.r = 0 
    elseif input.KeyCode == Enum.KeyCode.Space then controlFlags.up = 0
    elseif input.KeyCode == Enum.KeyCode.LeftControl then controlFlags.down = 0 end
end)

-- Fungsi binding tombol dengan dukungan Touch yang lebih baik
local function bindBtnObj(btn, flagKey, val)
    -- Mouse/Touch Began
    btn.InputBegan:Connect(function(input)
        if input.UserInputType == Enum.UserInputType.MouseButton1 or 
           input.UserInputType == Enum.UserInputType.Touch then
            if isFlying then 
                controlFlags[flagKey] = val 
                -- Visual feedback
                TweenService:Create(btn, TweenInfo.new(0.1), {BackgroundColor3 = Color3.fromRGB(100, 200, 255)}):Play()
            end
        end
    end)
    
    -- Mouse/Touch Ended
    btn.InputEnded:Connect(function(input)
        if input.UserInputType == Enum.UserInputType.MouseButton1 or 
           input.UserInputType == Enum.UserInputType.Touch then
            controlFlags[flagKey] = 0
            -- Reset visual
            TweenService:Create(btn, TweenInfo.new(0.1), {BackgroundColor3 = btn.Parent == dPadFrame and Color3.fromRGB(50, 50, 60) or Color3.fromRGB(25, 25, 30)}):Play()
        end
    end)
    
    -- Handle touch cancel (penting untuk mobile)
    btn.TouchPan:Connect(function() end) -- Prevent default touch behavior
end

-- Binding tombol GUI utama
bindBtnObj(btnUp, "up", 1)
bindBtnObj(btnDown, "down", -1)

-- Binding D-Pad untuk mobile
bindBtnObj(btnForward, "f", 1)
bindBtnObj(btnBackward, "b", -1)
bindBtnObj(btnLeft, "l", -1)
bindBtnObj(btnRight, "r", 1)
bindBtnObj(btnMobileUp, "up", 1)
bindBtnObj(btnMobileDown, "down", -1)

-- Touch events untuk D-Pad (lebih responsif)
local function setupTouchButton(btn, flagKey, val)
    btn.MouseButton1Down:Connect(function()
        if isFlying then 
            controlFlags[flagKey] = val
            TweenService:Create(btn, TweenInfo.new(0.1), {BackgroundColor3 = Color3.fromRGB(0, 150, 255)}):Play()
        end
    end)
    
    btn.MouseButton1Up:Connect(function()
        controlFlags[flagKey] = 0
        TweenService:Create(btn, TweenInfo.new(0.1), {BackgroundColor3 = Color3.fromRGB(50, 50, 60)}):Play()
    end)
    
    -- Handle mouse leave saat pressed
    btn.MouseLeave:Connect(function()
        if controlFlags[flagKey] == val then
            controlFlags[flagKey] = 0
            TweenService:Create(btn, TweenInfo.new(0.1), {BackgroundColor3 = Color3.fromRGB(50, 50, 60)}):Play()
        end
    end)
end

setupTouchButton(btnForward, "f", 1)
setupTouchButton(btnBackward, "b", -1)
setupTouchButton(btnLeft, "l", -1)
setupTouchButton(btnRight, "r", 1)
setupTouchButton(btnMobileUp, "up", 1)
setupTouchButton(btnMobileDown, "down", -1)

btnFly.MouseButton1Click:Connect(function()
    if isFlying then disableFly() else enableFly() end
end)

-- Character respawn handling
player.CharacterAdded:Connect(function()
    disableFly()
    controlFlags = {f = 0, b = 0, l = 0, r = 0, up = 0, down = 0}
    -- Re-detect input type saat respawn
    task.delay(1, updateInputType)
end)

screenGui.AncestryChanged:Connect(function()
    if not screenGui:IsDescendantOf(game) then disableFly() end
end)

-- Update posisi mobile controls saat layar berubah (rotation)
RunService.RenderStepped:Connect(function()
    if mobileControlsFrame.Visible then
        local screenSize = Workspace.CurrentCamera.ViewportSize
        local isSmallScreen = math.min(screenSize.X, screenSize.Y) <= 500
        
        -- Adjust posisi berdasarkan ukuran layar
        if isSmallScreen then
            dPadFrame.Size = UDim2.new(0, 120, 0, 120)
            dPadFrame.Position = UDim2.new(0, 10, 1, -140)
            mobileActionFrame.Position = UDim2.new(1, -70, 1, -140)
        else
            dPadFrame.Size = UDim2.new(0, 140, 0, 140)
            dPadFrame.Position = UDim2.new(0, 20, 1, -180)
            mobileActionFrame.Position = UDim2.new(1, -100, 1, -180)
        end
    end
end)

-- Notifikasi loading
pcall(function()
    game:GetService("StarterGui"):SetCore("SendNotification", { 
        Title = "FLY GUI V4 (Mobile Ready)";
        Text = isTouchDevice and "Mobile controls enabled. Tap 📱 to toggle." or "PC mode loaded. Use WASD to fly.";
        Duration = 5;
    })
end)

print("Fly GUI Loaded - Mobile Support:", isTouchDevice)