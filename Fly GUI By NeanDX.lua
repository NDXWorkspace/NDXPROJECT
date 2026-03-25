local CoreGui = game:GetService("CoreGui")
local Players = game:GetService("Players")
local RunService = game:GetService("RunService")
local UserInputService = game:GetService("UserInputService")
local TweenService = game:GetService("TweenService")
local Workspace = game:GetService("Workspace")
local ContextActionService = game:GetService("ContextActionService")

local player = Players.LocalPlayer
local camera = Workspace.CurrentCamera

-- Clean up previous instances
pcall(function()
    for _, gui in pairs({CoreGui, player:WaitForChild("PlayerGui")}) do
        local old = gui:FindFirstChild("FlyGuiRemastered")
        if old then old:Destroy() end
    end
end)

-- Create ScreenGui
local screenGui = Instance.new("ScreenGui")
screenGui.Name = "FlyGuiRemastered"
screenGui.ResetOnSpawn = false
screenGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
screenGui.ScreenInsets = Enum.ScreenInsets.DeviceSafeInsets

local success = pcall(function()
    screenGui.Parent = CoreGui
end)
if not success then
    screenGui.Parent = player:WaitForChild("PlayerGui")
end

-- Modern UI Style (Glassmorphism)
local mainFrame = Instance.new("Frame")
mainFrame.Name = "MainFrame"
mainFrame.Parent = screenGui
mainFrame.BackgroundColor3 = Color3.fromRGB(15, 15, 20)
mainFrame.BackgroundTransparency = 0.05
mainFrame.BorderSizePixel = 0
mainFrame.Position = UDim2.new(0.05, 0, 0.4, 0)
mainFrame.Size = UDim2.new(0, 200, 0, 110)
mainFrame.Active = true
mainFrame.Draggable = true

-- Corner radius
local corner = Instance.new("UICorner")
corner.CornerRadius = UDim.new(0, 8)
corner.Parent = mainFrame

-- Stroke effect
local stroke = Instance.new("UIStroke")
stroke.Color = Color3.fromRGB(0, 150, 255)
stroke.Thickness = 1.5
stroke.Transparency = 0.2
stroke.Parent = mainFrame

-- Title Bar
local titleBar = Instance.new("Frame")
titleBar.Name = "TitleBar"
titleBar.Parent = mainFrame
titleBar.BackgroundColor3 = Color3.fromRGB(20, 20, 25)
titleBar.BackgroundTransparency = 0.5
titleBar.BorderSizePixel = 0
titleBar.Size = UDim2.new(1, 0, 0, 25)

local titleCorner = Instance.new("UICorner")
titleCorner.CornerRadius = UDim.new(0, 8)
titleCorner.Parent = titleBar)

local titleFix = Instance.new("Frame")
titleFix.Parent = titleBar
titleFix.BackgroundColor3 = titleBar.BackgroundColor3
titleFix.BackgroundTransparency = titleBar.BackgroundTransparency
titleFix.BorderSizePixel = 0
titleFix.Position = UDim2.new(0, 0, 0.5, 0)
titleFix.Size = UDim2.new(1, 0, 0.5, 0)

-- Title Label (NAMA ASLI)
local titleLabel = Instance.new("TextLabel")
titleLabel.Parent = titleBar
titleLabel.BackgroundTransparency = 1
titleLabel.Position = UDim2.new(0, 10, 0, 0)
titleLabel.Size = UDim2.new(1, -60, 1, 0)
titleLabel.Font = Enum.Font.GothamBold
titleLabel.Text = "✈ FLY GUI By NeanDX"
titleLabel.TextColor3 = Color3.fromRGB(100, 200, 255)
titleLabel.TextSize = 12
titleLabel.TextXAlignment = Enum.TextXAlignment.Left

-- Minimize Button
local btnMinimize = Instance.new("TextButton")
btnMinimize.Parent = titleBar
btnMinimize.BackgroundTransparency = 1
btnMinimize.Position = UDim2.new(1, -50, 0, 0)
btnMinimize.Size = UDim2.new(0, 25, 1, 0)
btnMinimize.Font = Enum.Font.GothamBold
btnMinimize.Text = "—"
btnMinimize.TextColor3 = Color3.fromRGB(255, 210, 60)
btnMinimize.TextSize = 14

-- Close Button
local btnClose = Instance.new("TextButton")
btnClose.Parent = titleBar
btnClose.BackgroundTransparency = 1
btnClose.Position = UDim2.new(1, -25, 0, 0)
btnClose.Size = UDim2.new(0, 25, 1, 0)
btnClose.Font = Enum.Font.GothamBold
btnClose.Text = "✕"
btnClose.TextColor3 = Color3.fromRGB(255, 80, 80)
btnClose.TextSize = 14

-- Content Frame
local contentFrame = Instance.new("Frame")
contentFrame.Parent = mainFrame
contentFrame.BackgroundTransparency = 1
contentFrame.Position = UDim2.new(0, 0, 0, 25)
contentFrame.Size = UDim2.new(1, 0, 1, -25)

-- Helper function to create buttons
local function createBtn(parent, text, pos, size, color)
    local btn = Instance.new("TextButton")
    btn.Parent = parent
    btn.BackgroundColor3 = color or Color3.fromRGB(25, 25, 30)
    btn.BorderSizePixel = 0
    btn.Position = pos
    btn.Size = size
    btn.Font = Enum.Font.GothamBold
    btn.Text = text
    btn.TextColor3 = Color3.fromRGB(220, 220, 220)
    btn.TextSize = 12
    btn.AutoButtonColor = false
    
    local btnCorner = Instance.new("UICorner")
    btnCorner.CornerRadius = UDim.new(0, 6)
    btnCorner.Parent = btn
    
    -- Hover effect
    btn.MouseEnter:Connect(function()
        TweenService:Create(btn, TweenInfo.new(0.2), {
            BackgroundColor3 = Color3.fromRGB(
                math.min(btn.BackgroundColor3.R * 255 + 20, 255),
                math.min(btn.BackgroundColor3.G * 255 + 20, 255),
                math.min(btn.BackgroundColor3.B * 255 + 20, 255)
            )
        }):Play()
    end)
    
    btn.MouseLeave:Connect(function()
        TweenService:Create(btn, TweenInfo.new(0.2), {
            BackgroundColor3 = color or Color3.fromRGB(25, 25, 30)
        }):Play()
    end)
    
    return btn
end

-- Speed Controls
local btnMinus = createBtn(contentFrame, "-", UDim2.new(0, 58, 0, 8), UDim2.new(0, 30, 0, 32))
local btnPlus = createBtn(contentFrame, "+", UDim2.new(0, 162, 0, 8), UDim2.new(0, 30, 0, 32))

local lblSpeed = Instance.new("TextLabel")
lblSpeed.Parent = contentFrame
lblSpeed.BackgroundColor3 = Color3.fromRGB(20, 20, 25)
lblSpeed.Position = UDim2.new(0, 92, 0, 8)
lblSpeed.Size = UDim2.new(0, 66, 0, 32)
lblSpeed.Font = Enum.Font.GothamBold
lblSpeed.Text = "1"
lblSpeed.TextColor3 = Color3.fromRGB(150, 255, 150)
lblSpeed.TextSize = 14

local speedCorner = Instance.new("UICorner")
speedCorner.CornerRadius = UDim.new(0, 6)
speedCorner.Parent = lblSpeed

-- Main Fly Button
local btnFly = createBtn(contentFrame, "FLY", UDim2.new(0, 58, 0, 45), UDim2.new(0, 134, 0, 32), Color3.fromRGB(40, 40, 50))

-- Mobile Up/Down Buttons (kanan bawah)
local mobileFrame = Instance.new("Frame")
mobileFrame.Parent = screenGui
mobileFrame.BackgroundTransparency = 1
mobileFrame.Size = UDim2.new(1, 0, 1, 0)
mobileFrame.Visible = false

local btnMobileUp = createBtn(mobileFrame, "▲", UDim2.new(1, -80, 1, -140), UDim2.new(0, 60, 0, 60), Color3.fromRGB(0, 120, 80))
btnMobileUp.TextSize = 24
btnMobileUp.Visible = false

local btnMobileDown = createBtn(mobileFrame, "▼", UDim2.new(1, -80, 1, -70), UDim2.new(0, 60, 0, 60), Color3.fromRGB(150, 50, 50))
btnMobileDown.TextSize = 24
btnMobileDown.Visible = false

-- FLY LOGIC (Universal)
local flySpeedMultiplier = 1
local maxFlySpeed = 50
local isFlying = false
local minimized = false

local flyConn
local bodyGyro, bodyVelocity
local controlFlags = {f = 0, b = 0, l = 0, r = 0, up = 0, down = 0}
local currentSpeed = 0

-- Get PlayerModule for joystick input
local PlayerScripts = player:WaitForChild("PlayerScripts")
local PlayerModule = require(PlayerScripts:WaitForChild("PlayerModule"))
local ControlModule = PlayerModule:GetControls()

-- Utility Functions
local function getRoot(char)
    return char:FindFirstChild("HumanoidRootPart") or char:FindFirstChild("Torso") or char:FindFirstChild("UpperTorso") or char.PrimaryPart
end

local function cleanupConstraints()
    if bodyGyro then bodyGyro:Destroy(); bodyGyro = nil end
    if bodyVelocity then bodyVelocity:Destroy(); bodyVelocity = nil end
    if flyConn then flyConn:Disconnect(); flyConn = nil end
    
    pcall(function()
        RunService:UnbindFromRenderStep("FlyJoystickReader")
    end)
    
    ContextActionService:UnbindAction("FlyUp")
    ContextActionService:UnbindAction("FlyDown")
end

local function disableFly()
    isFlying = false
    TweenService:Create(btnFly, TweenInfo.new(0.3), {BackgroundColor3 = Color3.fromRGB(40, 40, 50)}):Play()
    btnFly.Text = "FLY"
    
    local char = player.Character
    if char then
        local hum = char:FindFirstChildOfClass("Humanoid")
        if hum then
            hum.PlatformStand = false
            hum.AutoRotate = true
        end
    end
    
    cleanupConstraints()
    currentSpeed = 0
    
    mobileFrame.Visible = false
    btnMobileUp.Visible = false
    btnMobileDown.Visible = false
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
    
    -- Setup Joystick Input Reader (Universal)
    RunService:BindToRenderStep("FlyJoystickReader", Enum.RenderPriority.Input.Value + 1, function()
        if not isFlying then return end
        
        local moveVector = ControlModule:GetMoveVector()
        
        -- Left/Right (X axis)
        controlFlags.l = moveVector.X < -0.1 and -1 or 0
        controlFlags.r = moveVector.X > 0.1 and 1 or 0
        
        -- Forward/Backward (Z axis) - PERBAIKAN ARAH
        -- Joystick up (Z negative) = Forward
        -- Joystick down (Z positive) = Backward
        controlFlags.f = moveVector.Z < -0.1 and 1 or 0
        controlFlags.b = moveVector.Z > 0.1 and -1 or 0
    end)
    
    -- Setup Mobile Up/Down
    if UserInputService.TouchEnabled then
        mobileFrame.Visible = true
        btnMobileUp.Visible = true
        btnMobileDown.Visible = true
        
        ContextActionService:BindAction("FlyUp", function(actionName, inputState)
            if inputState == Enum.UserInputState.Begin then
                controlFlags.up = 1
                btnMobileUp.BackgroundColor3 = Color3.fromRGB(0, 200, 120)
            elseif inputState == Enum.UserInputState.End then
                controlFlags.up = 0
                btnMobileUp.BackgroundColor3 = Color3.fromRGB(0, 120, 80)
            end
            return Enum.ContextActionResult.Sink
        end, false)
        
        ContextActionService:BindAction("FlyDown", function(actionName, inputState)
            if inputState == Enum.UserInputState.Begin then
                controlFlags.down = -1
                btnMobileDown.BackgroundColor3 = Color3.fromRGB(200, 80, 80)
            elseif inputState == Enum.UserInputState.End then
                controlFlags.down = 0
                btnMobileDown.BackgroundColor3 = Color3.fromRGB(150, 50, 50)
            end
            return Enum.ContextActionResult.Sink
        end, false)
    end
    
    -- Main Fly Loop
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
        
        -- Smooth speed
        if isMoving then
            currentSpeed = math.min(currentSpeed + (flySpeedMultiplier * 1.5 * dtNormalized), maxFlySpeed * flySpeedMultiplier)
        else
            currentSpeed = math.max(currentSpeed - (flySpeedMultiplier * 3 * dtNormalized), 0)
        end
        
        -- Calculate direction
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
end

-- Event Handlers
btnClose.MouseButton1Click:Connect(function()
    disableFly()
    TweenService:Create(mainFrame, TweenInfo.new(0.3, Enum.EasingStyle.Back, Enum.EasingDirection.In), {
        Size = UDim2.new(0, 0, 0, 0)
    }):Play()
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

-- Touch handlers for mobile buttons
btnMobileUp.InputBegan:Connect(function(input)
    if input.UserInputType == Enum.UserInputType.Touch or input.UserInputType == Enum.UserInputType.MouseButton1 then
        controlFlags.up = 1
    end
end)

btnMobileUp.InputEnded:Connect(function(input)
    if input.UserInputType == Enum.UserInputType.Touch or input.UserInputType == Enum.UserInputType.MouseButton1 then
        controlFlags.up = 0
    end
end)

btnMobileDown.InputBegan:Connect(function(input)
    if input.UserInputType == Enum.UserInputType.Touch or input.UserInputType == Enum.UserInputType.MouseButton1 then
        controlFlags.down = -1
    end
end)

btnMobileDown.InputEnded:Connect(function(input)
    if input.UserInputType == Enum.UserInputType.Touch or input.UserInputType == Enum.UserInputType.MouseButton1 then
        controlFlags.down = 0
    end
end)

-- Keyboard Input (PC)
UserInputService.InputBegan:Connect(function(input, gpe)
    if gpe or not isFlying then return end
    
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

btnFly.MouseButton1Click:Connect(function()
    if isFlying then disableFly() else enableFly() end
end)

-- Character handling
player.CharacterAdded:Connect(function()
    disableFly()
    controlFlags = {f = 0, b = 0, l = 0, r = 0, up = 0, down = 0}
end)

screenGui.AncestryChanged:Connect(function()
    if not screenGui:IsDescendantOf(game) then disableFly() end
end)

-- Notification (NAMA ASLI)
pcall(function()
    game:GetService("StarterGui"):SetCore("SendNotification", {
        Title = "FLY GUI V4 (Remastered)";
        Text = "Loaded. Premium Dark Theme + Universal Support.";
        Duration = 3;
    })
end)

print("FLY GUI By NeanDX - Universal Version Loaded")
