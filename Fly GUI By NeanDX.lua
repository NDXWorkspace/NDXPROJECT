local CoreGui = game:GetService("CoreGui")
local Players = game:GetService("Players")
local RunService = game:GetService("RunService")
local UserInputService = game:GetService("UserInputService")
local TweenService = game:GetService("TweenService")
local Workspace = game:GetService("Workspace")

local player = Players.LocalPlayer

-- Clean up previous instances
pcall(function()
    if CoreGui:FindFirstChild("FlyGuiRemastered") then CoreGui.FlyGuiRemastered:Destroy() end
    if player.PlayerGui:FindFirstChild("FlyGuiRemastered") then player.PlayerGui.FlyGuiRemastered:Destroy() end
end)

local screenGui = Instance.new("ScreenGui")
screenGui.Name = "FlyGuiRemastered"
screenGui.ResetOnSpawn = false
screenGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
local success = pcall(function() screenGui.Parent = CoreGui end)
if not success then screenGui.Parent = player:WaitForChild("PlayerGui") end

-- Modern UI Elements
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
    Instance.new("UICorner", btn).CornerRadius = UDim.new(0, 6)
    
    btn.MouseEnter:Connect(function()
        TweenService:Create(btn, TweenInfo.new(0.2), {BackgroundColor3 = Color3.fromRGB(btn.BackgroundColor3.R*255 + 20, btn.BackgroundColor3.G*255 + 20, btn.BackgroundColor3.B*255 + 20)}):Play()
    end)
    btn.MouseLeave:Connect(function()
        TweenService:Create(btn, TweenInfo.new(0.2), {BackgroundColor3 = color or Color3.fromRGB(25, 25, 30)}):Play()
    end)
    return btn
end

local btnUp = createBtn(contentFrame, "UP", UDim2.new(0, 8, 0, 8), UDim2.new(0, 45, 0, 32))
local btnDown = createBtn(contentFrame, "DO WN", UDim2.new(0, 8, 0, 45), UDim2.new(0, 45, 0, 32))

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

-- LOGIC
local flySpeedMultiplier = 1
local maxFlySpeed = 50
local isFlying = false
local minimized = false

local flyConn, upConn, downConn
local controlFlags = {f = 0, b = 0, l = 0, r = 0, up = 0, down = 0}
local currentSpeed = 0

local linearVelocity, alignOrientation, flyAttachment

local function cleanupConstraints()
    if linearVelocity then linearVelocity:Destroy(); linearVelocity = nil end
    if alignOrientation then alignOrientation:Destroy(); alignOrientation = nil end
    if flyAttachment then flyAttachment:Destroy(); flyAttachment = nil end
    if flyConn then flyConn:Disconnect(); flyConn = nil end
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
end

local function enableFly()
    local char = player.Character
    if not char then return end
    local hrp = char:FindFirstChild("HumanoidRootPart")
    local hum = char:FindFirstChildOfClass("Humanoid")
    if not hrp or not hum then return end
    
    hum.AutoRotate = false
    hum.PlatformStand = true
    
    isFlying = true
    TweenService:Create(btnFly, TweenInfo.new(0.3), {BackgroundColor3 = Color3.fromRGB(0, 150, 100)}):Play()
    btnFly.Text = "FLYING..."
    
    flyAttachment = Instance.new("Attachment", hrp)
    flyAttachment.Name = "FlyAttachment"
    flyAttachment.WorldPosition = hrp.AssemblyCenterOfMass
    
    linearVelocity = Instance.new("LinearVelocity", hrp)
    linearVelocity.Attachment0 = flyAttachment
    linearVelocity.MaxForce = math.huge
    linearVelocity.VectorVelocity = Vector3.zero
    linearVelocity.RelativeTo = Enum.ActuatorRelativeTo.World
    
    alignOrientation = Instance.new("AlignOrientation", hrp)
    alignOrientation.Attachment0 = flyAttachment
    alignOrientation.MaxTorque = math.huge
    alignOrientation.Responsiveness = 200
    alignOrientation.Mode = Enum.OrientationAlignmentMode.OneAttachment
    alignOrientation.RigidityEnabled = false
    
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
        
        if linearVelocity then linearVelocity.VectorVelocity = moveDir * currentSpeed end
        if alignOrientation then alignOrientation.CFrame = cam.CFrame end
    end)
end

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

UserInputService.InputBegan:Connect(function(input, gpe)
    if gpe or not isFlying then return end
    if input.KeyCode == Enum.KeyCode.W then controlFlags.f = 1
    elseif input.KeyCode == Enum.KeyCode.S then controlFlags.b = -1
    elseif input.KeyCode == Enum.KeyCode.A then controlFlags.l = -1
    elseif input.KeyCode == Enum.KeyCode.D then controlFlags.r = 1 end
end)
UserInputService.InputEnded:Connect(function(input, gpe)
    if gpe then return end
    if input.KeyCode == Enum.KeyCode.W then controlFlags.f = 0
    elseif input.KeyCode == Enum.KeyCode.S then controlFlags.b = 0
    elseif input.KeyCode == Enum.KeyCode.A then controlFlags.l = 0
    elseif input.KeyCode == Enum.KeyCode.D then controlFlags.r = 0 end
end)

local function bindBtnObj(btn, flagKey, val)
    btn.InputBegan:Connect(function(i)
        if i.UserInputType == Enum.UserInputType.MouseButton1 or i.UserInputType == Enum.UserInputType.Touch then
            if isFlying then controlFlags[flagKey] = val end
        end
    end)
    btn.InputEnded:Connect(function(i)
        if i.UserInputType == Enum.UserInputType.MouseButton1 or i.UserInputType == Enum.UserInputType.Touch then
            controlFlags[flagKey] = 0
        end
    end)
end

bindBtnObj(btnUp, "up", 1)
bindBtnObj(btnDown, "down", -1)

btnFly.MouseButton1Click:Connect(function()
    if isFlying then disableFly() else enableFly() end
end)

player.CharacterAdded:Connect(function()
    disableFly()
    controlFlags = {f = 0, b = 0, l = 0, r = 0, up = 0, down = 0}
end)
screenGui.AncestryChanged:Connect(function()
    if not screenGui:IsDescendantOf(game) then disableFly() end
end)

pcall(function()
    game:GetService("StarterGui"):SetCore("SendNotification", { 
        Title = "FLY GUI V4 (Remastered)";
        Text = "Loaded. Premium Dark Theme + Fixed Physics.";
        Duration = 3;
    })
end)
