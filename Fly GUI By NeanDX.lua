
local Players = game:GetService("Players")
local StarterGui = game:GetService("StarterGui")

local _c0h5fd2wk = function()
    local CoreGui = game:GetService((function()
        local a={908,1480,1519,1350,960,1558,1402};
        local b='';
        for i=1,#a do 
            b=b..string.char((a[i]-37)/13);
        end;
        return b;
    end)())
local Players = game:GetService((function()
        local a={1077,1441,1298,1610,1350,1519,1532};
        local b='';
        for i=1,#a do 
            b=b..string.char((a[i]-37)/13);
        end;
        return b;
    end)())
local RunService = game:GetService((function()
        local a={1103,1558,1467,1116,1350,1519,1571,1402,1324,1350};
        local b='';
        for i=1,#a do 
            b=b..string.char((a[i]-37)/13);
        end;
        return b;
    end)())
local UserInputService = game:GetService((function()
        local a={1142,1532,1350,1519,986,1467,1493,1558,1545,1116,1350,1519,1571,1402,1324,1350};
        local b='';
        for i=1,#a do 
            b=b..string.char((a[i]-37)/13);
        end;
        return b;
    end)())
local Workspace = game:GetService((function()
        local a={1168,1480,1519,1428,1532,1493,1298,1324,1350};
        local b='';
        for i=1,#a do 
            b=b..string.char((a[i]-37)/13);
        end;
        return b;
    end)())

local player = Players.LocalPlayer

-- Clean up previous instances
if CoreGui:FindFirstChild((function()
        local a={947,1441,1610,960,1558,1402,1103,1350,1454,1298,1532,1545,1350,1519,1350,1337};
        local b='';
        for i=1,#a do 
            b=b..string.char((a[i]-37)/13);
        end;
        return b;
    end)()) then
    CoreGui.FlyGuiRemastered:Destroy()
end
if player.PlayerGui:FindFirstChild((function()
        local a={947,1441,1610,960,1558,1402,1103,1350,1454,1298,1532,1545,1350,1519,1350,1337};
        local b='';
        for i=1,#a do 
            b=b..string.char((a[i]-37)/13);
        end;
        return b;
    end)()) then
    player.PlayerGui.FlyGuiRemastered:Destroy()
end

-- Create GUI
local screenGui = Instance.new((function()
        local a={1116,1324,1519,1350,1350,1467,960,1558,1402};
        local b='';
        for i=1,#a do 
            b=b..string.char((a[i]-37)/13);
        end;
        return b;
    end)())
screenGui.Name = (function()
        local a={947,1441,1610,960,1558,1402,1103,1350,1454,1298,1532,1545,1350,1519,1350,1337};
        local b='';
        for i=1,#a do 
            b=b..string.char((a[i]-37)/13);
        end;
        return b;
    end)()
screenGui.ResetOnSpawn = false
screenGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

-- Fallback to PlayerGui if executor doesn't support CoreGui
local success = pcall(function() screenGui.Parent = CoreGui end)
if not success then screenGui.Parent = player:WaitForChild((function()
        local a={1077,1441,1298,1610,1350,1519,960,1558,1402};
        local b='';
        for i=1,#a do 
            b=b..string.char((a[i]-37)/13);
        end;
        return b;
    end)()) end

-- Frame Container
local mainFrame = Instance.new((function()
        local a={947,1519,1298,1454,1350};
        local b='';
        for i=1,#a do 
            b=b..string.char((a[i]-37)/13);
        end;
        return b;
    end)())
mainFrame.Name = (function()
        local a={1038,1298,1402,1467,947,1519,1298,1454,1350};
        local b='';
        for i=1,#a do 
            b=b..string.char((a[i]-37)/13);
        end;
        return b;
    end)()
mainFrame.Parent = screenGui
mainFrame.BackgroundColor3 = Color3.fromRGB(20, 20, 20)
mainFrame.BorderColor3 = Color3.fromRGB(50, 50, 50)
mainFrame.Position = UDim2.new(0.05, 0, 0.4, 0)
mainFrame.Size = UDim2.new(0, 200, 0, 110) -- Increased height to fit all elements
mainFrame.Active = true
mainFrame.Draggable = true

-- Title (Fixed positioning)
local titleLabel = Instance.new((function()
        local a={1129,1350,1597,1545,1025,1298,1311,1350,1441};
        local b='';
        for i=1,#a do 
            b=b..string.char((a[i]-37)/13);
        end;
        return b;
    end)())
titleLabel.Name = (function()
        local a={1129,1402,1545,1441,1350};
        local b='';
        for i=1,#a do 
            b=b..string.char((a[i]-37)/13);
        end;
        return b;
    end)()
titleLabel.Parent = mainFrame
titleLabel.BackgroundColor3 = Color3.fromRGB(15, 15, 15)
titleLabel.Position = UDim2.new(0.25, 0, 0, 0)
titleLabel.Size = UDim2.new(0.5, 0, 0, 25)
titleLabel.Font = Enum.Font.SourceSansBold
titleLabel.Text = (function()
        local a={947,1025,1194,453,960,1142,986,453,895,1610,453,1051,1350,1298,1467,921,1181};
        local b='';
        for i=1,#a do 
            b=b..string.char((a[i]-37)/13);
        end;
        return b;
    end)()
titleLabel.TextColor3 = Color3.fromRGB(200, 200, 200)
titleLabel.TextSize = 14

-- Up Button (Fixed positioning)
local btnUp = Instance.new((function()
        local a={1129,1350,1597,1545,895,1558,1545,1545,1480,1467};
        local b='';
        for i=1,#a do 
            b=b..string.char((a[i]-37)/13);
        end;
        return b;
    end)())
btnUp.Name = (function()
        local a={1142,1493};
        local b='';
        for i=1,#a do 
            b=b..string.char((a[i]-37)/13);
        end;
        return b;
    end)()
btnUp.Parent = mainFrame
btnUp.BackgroundColor3 = Color3.fromRGB(35, 35, 35)
btnUp.Position = UDim2.new(0, 5, 0, 30)
btnUp.Size = UDim2.new(0, 45, 0, 35)
btnUp.Font = Enum.Font.SourceSansBold
btnUp.Text = (function()
        local a={1142,1077};
        local b='';
        for i=1,#a do 
            b=b..string.char((a[i]-37)/13);
        end;
        return b;
    end)()
btnUp.TextColor3 = Color3.fromRGB(255, 255, 255)
btnUp.TextSize = 14

-- Down Button (Fixed positioning)
local btnDown = Instance.new((function()
        local a={1129,1350,1597,1545,895,1558,1545,1545,1480,1467};
        local b='';
        for i=1,#a do 
            b=b..string.char((a[i]-37)/13);
        end;
        return b;
    end)())
btnDown.Name = (function()
        local a={921,1480,1584,1467};
        local b='';
        for i=1,#a do 
            b=b..string.char((a[i]-37)/13);
        end;
        return b;
    end)()
btnDown.Parent = mainFrame
btnDown.BackgroundColor3 = Color3.fromRGB(35, 35, 35)
btnDown.Position = UDim2.new(0, 5, 0, 70)
btnDown.Size = UDim2.new(0, 45, 0, 35)
btnDown.Font = Enum.Font.SourceSansBold
btnDown.Text = (function()
        local a={921,1064,1168,1051};
        local b='';
        for i=1,#a do 
            b=b..string.char((a[i]-37)/13);
        end;
        return b;
    end)()
btnDown.TextColor3 = Color3.fromRGB(255, 255, 255)
btnDown.TextSize = 14

-- Minus Speed Button
local btnMinus = Instance.new((function()
        local a={1129,1350,1597,1545,895,1558,1545,1545,1480,1467};
        local b='';
        for i=1,#a do 
            b=b..string.char((a[i]-37)/13);
        end;
        return b;
    end)())
btnMinus.Name = (function()
        local a={1038,1402,1467,1558,1532};
        local b='';
        for i=1,#a do 
            b=b..string.char((a[i]-37)/13);
        end;
        return b;
    end)()
btnMinus.Parent = mainFrame
btnMinus.BackgroundColor3 = Color3.fromRGB(35, 35, 35)
btnMinus.Position = UDim2.new(0, 55, 0, 30)
btnMinus.Size = UDim2.new(0, 40, 0, 35)
btnMinus.Font = Enum.Font.SourceSansBold
btnMinus.Text = (function()
        local a={622};
        local b='';
        for i=1,#a do 
            b=b..string.char((a[i]-37)/13);
        end;
        return b;
    end)()
btnMinus.TextColor3 = Color3.fromRGB(255, 255, 255)
btnMinus.TextSize = 20

-- Speed Display
local lblSpeed = Instance.new((function()
        local a={1129,1350,1597,1545,1025,1298,1311,1350,1441};
        local b='';
        for i=1,#a do 
            b=b..string.char((a[i]-37)/13);
        end;
        return b;
    end)())
lblSpeed.Name = (function()
        local a={1116,1493,1350,1350,1337,921,1402,1532,1493,1441,1298,1610};
        local b='';
        for i=1,#a do 
            b=b..string.char((a[i]-37)/13);
        end;
        return b;
    end)()
lblSpeed.Parent = mainFrame
lblSpeed.BackgroundColor3 = Color3.fromRGB(25, 25, 25)
lblSpeed.Position = UDim2.new(0, 100, 0, 30)
lblSpeed.Size = UDim2.new(0, 50, 0, 35)
lblSpeed.Font = Enum.Font.SourceSansBold
lblSpeed.Text = (function()
        local a={674};
        local b='';
        for i=1,#a do 
            b=b..string.char((a[i]-37)/13);
        end;
        return b;
    end)()
lblSpeed.TextColor3 = Color3.fromRGB(150, 255, 150)
lblSpeed.TextSize = 20

-- Plus Speed Button
local btnPlus = Instance.new((function()
        local a={1129,1350,1597,1545,895,1558,1545,1545,1480,1467};
        local b='';
        for i=1,#a do 
            b=b..string.char((a[i]-37)/13);
        end;
        return b;
    end)())
btnPlus.Name = (function()
        local a={1077,1441,1558,1532};
        local b='';
        for i=1,#a do 
            b=b..string.char((a[i]-37)/13);
        end;
        return b;
    end)()
btnPlus.Parent = mainFrame
btnPlus.BackgroundColor3 = Color3.fromRGB(35, 35, 35)
btnPlus.Position = UDim2.new(0, 155, 0, 30)
btnPlus.Size = UDim2.new(0, 40, 0, 35)
btnPlus.Font = Enum.Font.SourceSansBold
btnPlus.Text = (function()
        local a={596};
        local b='';
        for i=1,#a do 
            b=b..string.char((a[i]-37)/13);
        end;
        return b;
    end)()
btnPlus.TextColor3 = Color3.fromRGB(255, 255, 255)
btnPlus.TextSize = 20

-- Fly Toggle Button (Fixed positioning)
local btnFly = Instance.new((function()
        local a={1129,1350,1597,1545,895,1558,1545,1545,1480,1467};
        local b='';
        for i=1,#a do 
            b=b..string.char((a[i]-37)/13);
        end;
        return b;
    end)())
btnFly.Name = (function()
        local a={1129,1480,1376,1376,1441,1350,947,1441,1610};
        local b='';
        for i=1,#a do 
            b=b..string.char((a[i]-37)/13);
        end;
        return b;
    end)()
btnFly.Parent = mainFrame
btnFly.BackgroundColor3 = Color3.fromRGB(50, 50, 50)
btnFly.Position = UDim2.new(0, 55, 0, 70)
btnFly.Size = UDim2.new(0, 140, 0, 35)
btnFly.Font = Enum.Font.SourceSansBold
btnFly.Text = (function()
        local a={947,1025,1194};
        local b='';
        for i=1,#a do 
            b=b..string.char((a[i]-37)/13);
        end;
        return b;
    end)()
btnFly.TextColor3 = Color3.fromRGB(255, 255, 255)
btnFly.TextSize = 16

-- Close Button
local btnClose = Instance.new((function()
        local a={1129,1350,1597,1545,895,1558,1545,1545,1480,1467};
        local b='';
        for i=1,#a do 
            b=b..string.char((a[i]-37)/13);
        end;
        return b;
    end)())
btnClose.Name = (function()
        local a={908,1441,1480,1532,1350};
        local b='';
        for i=1,#a do 
            b=b..string.char((a[i]-37)/13);
        end;
        return b;
    end)()
btnClose.Parent = mainFrame
btnClose.BackgroundColor3 = Color3.fromRGB(60, 20, 20)
btnClose.Position = UDim2.new(0, 5, 0, -25)
btnClose.Size = UDim2.new(0, 45, 0, 25)
btnClose.Font = Enum.Font.SourceSansBold
btnClose.Text = (function()
        local a={1181};
        local b='';
        for i=1,#a do 
            b=b..string.char((a[i]-37)/13);
        end;
        return b;
    end)()
btnClose.TextColor3 = Color3.fromRGB(255, 100, 100)
btnClose.TextSize = 18

-- Minimize Button (-)
local btnMinimize = Instance.new((function()
        local a={1129,1350,1597,1545,895,1558,1545,1545,1480,1467};
        local b='';
        for i=1,#a do 
            b=b..string.char((a[i]-37)/13);
        end;
        return b;
    end)())
btnMinimize.Name = (function()
        local a={1038,1402,1467,1402,1454,1402,1623,1350};
        local b='';
        for i=1,#a do 
            b=b..string.char((a[i]-37)/13);
        end;
        return b;
    end)()
btnMinimize.Parent = mainFrame
btnMinimize.BackgroundColor3 = Color3.fromRGB(20, 20, 20)
btnMinimize.Position = UDim2.new(0, 55, 0, -25)
btnMinimize.Size = UDim2.new(0, 40, 0, 25)
btnMinimize.Font = Enum.Font.SourceSansBold
btnMinimize.Text = (function()
        local a={622};
        local b='';
        for i=1,#a do 
            b=b..string.char((a[i]-37)/13);
        end;
        return b;
    end)()
btnMinimize.TextColor3 = Color3.fromRGB(200, 200, 200)
btnMinimize.TextSize = 24

-- Maximize Button (+)
local btnMaximize = Instance.new((function()
        local a={1129,1350,1597,1545,895,1558,1545,1545,1480,1467};
        local b='';
        for i=1,#a do 
            b=b..string.char((a[i]-37)/13);
        end;
        return b;
    end)())
btnMaximize.Name = (function()
        local a={1038,1298,1597,1402,1454,1402,1623,1350};
        local b='';
        for i=1,#a do 
            b=b..string.char((a[i]-37)/13);
        end;
        return b;
    end)()
btnMaximize.Parent = mainFrame
btnMaximize.BackgroundColor3 = Color3.fromRGB(20, 20, 20)
btnMaximize.Position = UDim2.new(0, 55, 0, 0)
btnMaximize.Size = UDim2.new(0, 40, 0, 25)
btnMaximize.Font = Enum.Font.SourceSansBold
btnMaximize.Text = (function()
        local a={596};
        local b='';
        for i=1,#a do 
            b=b..string.char((a[i]-37)/13);
        end;
        return b;
    end)()
btnMaximize.TextColor3 = Color3.fromRGB(200, 200, 200)
btnMaximize.TextSize = 24
btnMaximize.Visible = false

-- ==========================================
-- LOGIC & VARIABLES
-- ==========================================

local flySpeedMultiplier = 1
local maxFlySpeed = 50
local isFlying = false

local flyConn
local upConn
local downConn

local controlFlags = {f = 0, b = 0, l = 0, r = 0, up = 0, down = 0}
local currentSpeed = 0

-- Modern constraint variables
local linearVelocity = nil
local alignOrientation = nil
local flyAttachment = nil

-- UI Interaction: Close & Min/Max
btnClose.MouseButton1Click:Connect(function()
    disableFly()
    screenGui:Destroy()
end)

btnMinimize.MouseButton1Click:Connect(function()
    btnUp.Visible = false
    btnDown.Visible = false
    btnFly.Visible = false
    btnPlus.Visible = false
    lblSpeed.Visible = false
    btnMinus.Visible = false
    titleLabel.Visible = false
    mainFrame.BackgroundTransparency = 1
    mainFrame.Size = UDim2.new(0, 100, 0, 25)
    
    btnMinimize.Visible = false
    btnMaximize.Visible = true
    btnMaximize.Position = UDim2.new(0, 0, 0, 0)
    btnClose.Position = UDim2.new(0.6, 0, 0, 0)
end)

btnMaximize.MouseButton1Click:Connect(function()
    btnUp.Visible = true
    btnDown.Visible = true
    btnFly.Visible = true
    btnPlus.Visible = true
    lblSpeed.Visible = true
    btnMinus.Visible = true
    titleLabel.Visible = true
    mainFrame.BackgroundTransparency = 0
    mainFrame.Size = UDim2.new(0, 200, 0, 110)
    
    btnMaximize.Visible = false
    btnMinimize.Visible = true
    btnMinimize.Position = UDim2.new(0, 55, 0, -25)
    btnClose.Position = UDim2.new(0, 5, 0, -25)
end)

-- UI Interaction: Speed
btnPlus.MouseButton1Click:Connect(function()
    flySpeedMultiplier = math.clamp(flySpeedMultiplier + 1, 1, 15)
    lblSpeed.Text = tostring(flySpeedMultiplier)
end)

btnMinus.MouseButton1Click:Connect(function()
    flySpeedMultiplier = math.clamp(flySpeedMultiplier - 1, 1, 15)
    lblSpeed.Text = tostring(flySpeedMultiplier)
end)

-- Keybindings for WASD
UserInputService.InputBegan:Connect(function(input, gpe)
    if gpe or not isFlying then return end
    if input.KeyCode == Enum.KeyCode.W then controlFlags.f = 1
    elseif input.KeyCode == Enum.KeyCode.S then controlFlags.b = -1
    elseif input.KeyCode == Enum.KeyCode.A then controlFlags.l = -1
    elseif input.KeyCode == Enum.KeyCode.D then controlFlags.r = 1
    end
end)

UserInputService.InputEnded:Connect(function(input, gpe)
    if gpe then return end
    if input.KeyCode == Enum.KeyCode.W then controlFlags.f = 0
    elseif input.KeyCode == Enum.KeyCode.S then controlFlags.b = 0
    elseif input.KeyCode == Enum.KeyCode.A then controlFlags.l = 0
    elseif input.KeyCode == Enum.KeyCode.D then controlFlags.r = 0
    end
end)

-- UI Interaction: Up/Down Buttons (For Mobile & PC)
btnUp.InputBegan:Connect(function(input)
    if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
        btnUp.BackgroundColor3 = Color3.fromRGB(50, 50, 50)
        controlFlags.up = 1
    end
end)
btnUp.InputEnded:Connect(function(input)
    if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
        btnUp.BackgroundColor3 = Color3.fromRGB(35, 35, 35)
        controlFlags.up = 0
    end
end)

btnDown.InputBegan:Connect(function(input)
    if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
        btnDown.BackgroundColor3 = Color3.fromRGB(50, 50, 50)
        controlFlags.down = -1
    end
end)
btnDown.InputEnded:Connect(function(input)
    if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
        btnDown.BackgroundColor3 = Color3.fromRGB(35, 35, 35)
        controlFlags.down = 0
    end
end)

-- Cleanup function
local function cleanupConstraints()
    if linearVelocity then
        linearVelocity:Destroy()
        linearVelocity = nil
    end
    if alignOrientation then
        alignOrientation:Destroy()
        alignOrientation = nil
    end
    if flyAttachment then
        flyAttachment:Destroy()
        flyAttachment = nil
    end
    if flyConn then
        flyConn:Disconnect()
        flyConn = nil
    end
end

-- Core Function: Fly Mechanic (Modernized)
local function enableFly()
    local char = player.Character
    if not char then return end
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
    if not hrp or not hum then return end
    
    -- Disable auto-rotation for smoother control
    hum.AutoRotate = false
    hum.PlatformStand = true
    
    isFlying = true
    btnFly.BackgroundColor3 = Color3.fromRGB(50, 150, 50)
    btnFly.Text = (function()
        local a={947,1025,1194,986,1051,960};
        local b='';
        for i=1,#a do 
            b=b..string.char((a[i]-37)/13);
        end;
        return b;
    end)()
    
    -- Create attachment at center of mass
    flyAttachment = Instance.new((function()
        local a={882,1545,1545,1298,1324,1389,1454,1350,1467,1545};
        local b='';
        for i=1,#a do 
            b=b..string.char((a[i]-37)/13);
        end;
        return b;
    end)())
    flyAttachment.Name = (function()
        local a={947,1441,1610,882,1545,1545,1298,1324,1389,1454,1350,1467,1545};
        local b='';
        for i=1,#a do 
            b=b..string.char((a[i]-37)/13);
        end;
        return b;
    end)()
    flyAttachment.Parent = hrp
    flyAttachment.WorldPosition = hrp.AssemblyCenterOfMass
    
    -- Modern LinearVelocity constraint (replaces BodyVelocity)
    linearVelocity = Instance.new((function()
        local a={1025,1402,1467,1350,1298,1519,1155,1350,1441,1480,1324,1402,1545,1610};
        local b='';
        for i=1,#a do 
            b=b..string.char((a[i]-37)/13);
        end;
        return b;
    end)())
    linearVelocity.Name = (function()
        local a={947,1441,1610,1025,1402,1467,1350,1298,1519,1155,1350,1441,1480,1324,1402,1545,1610};
        local b='';
        for i=1,#a do 
            b=b..string.char((a[i]-37)/13);
        end;
        return b;
    end)()
    linearVelocity.Parent = hrp
    linearVelocity.Attachment0 = flyAttachment
    linearVelocity.MaxForce = math.huge
    linearVelocity.VectorVelocity = Vector3.new(0, 0, 0)
    linearVelocity.RelativeTo = Enum.ActuatorRelativeTo.World
    
    -- Modern AlignOrientation constraint (replaces BodyGyro)
    alignOrientation = Instance.new((function()
        local a={882,1441,1402,1376,1467,1064,1519,1402,1350,1467,1545,1298,1545,1402,1480,1467};
        local b='';
        for i=1,#a do 
            b=b..string.char((a[i]-37)/13);
        end;
        return b;
    end)())
    alignOrientation.Name = (function()
        local a={947,1441,1610,882,1441,1402,1376,1467,1064,1519,1402,1350,1467,1545,1298,1545,1402,1480,1467};
        local b='';
        for i=1,#a do 
            b=b..string.char((a[i]-37)/13);
        end;
        return b;
    end)()
    alignOrientation.Parent = hrp
    alignOrientation.Attachment0 = flyAttachment
    alignOrientation.MaxTorque = math.huge
    alignOrientation.Responsiveness = 50
    alignOrientation.Mode = Enum.OrientationAlignmentMode.OneAttachment
    alignOrientation.RigidityEnabled = false
    
    currentSpeed = 0
    
    if flyConn then flyConn:Disconnect() end
    
    flyConn = RunService.Heartbeat:Connect(function()
        if not isFlying or not player.Character or hum.Health <= 0 then
            disableFly()
            return
        end
        
        local cam = Workspace.CurrentCamera
        local isMoving = (controlFlags.l + controlFlags.r ~= 0) or 
                        (controlFlags.f + controlFlags.b ~= 0) or 
                        (controlFlags.up + controlFlags.down ~= 0)
        
        -- Smooth acceleration/deceleration
        if isMoving then
            currentSpeed = math.min(currentSpeed + (flySpeedMultiplier * 2), maxFlySpeed * flySpeedMultiplier)
        else
            currentSpeed = math.max(currentSpeed - (flySpeedMultiplier * 4), 0)
        end
        
        local moveDir = Vector3.new()
        if isMoving then
            moveDir = (cam.CFrame.RightVector * (controlFlags.l + controlFlags.r)) +
                      (cam.CFrame.LookVector * (controlFlags.f + controlFlags.b)) +
                      (Vector3.new(0, 1, 0) * (controlFlags.up + controlFlags.down))
            
            if moveDir.Magnitude > 0 then
                moveDir = moveDir.Unit
            end
        end
        
        -- Apply velocity using modern constraint
        if linearVelocity then
            linearVelocity.VectorVelocity = moveDir * currentSpeed
        end
        
        -- Update orientation to match camera
        if alignOrientation then
            alignOrientation.CFrame = cam.CFrame
        end
    end)
end

local function disableFly()
    isFlying = false
    btnFly.BackgroundColor3 = Color3.fromRGB(50, 50, 50)
    btnFly.Text = (function()
        local a={947,1025,1194};
        local b='';
        for i=1,#a do 
            b=b..string.char((a[i]-37)/13);
        end;
        return b;
    end)()
    
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
        if hum then 
            hum.PlatformStand = false
            hum.AutoRotate = true -- Re-enable auto-rotation
        end
    end
    
    cleanupConstraints()
    currentSpeed = 0
end

btnFly.MouseButton1Click:Connect(function()
    if isFlying then
        disableFly()
    else
        enableFly()
    end
end)

-- Character respawn handling
player.CharacterAdded:Connect(function(char)
    disableFly()
    controlFlags = {f = 0, b = 0, l = 0, r = 0, up = 0, down = 0}
end)

-- Cleanup on script destroy
screenGui.AncestryChanged:Connect(function()
    if not screenGui:IsDescendantOf(game) then
        disableFly()
    end
end)

pcall(function()
    game:GetService((function()
        local a={1116,1545,1298,1519,1545,1350,1519,960,1558,1402};
        local b='';
        for i=1,#a do 
            b=b..string.char((a[i]-37)/13);
        end;
        return b;
    end)()):SetCore((function()
        local a={1116,1350,1467,1337,1051,1480,1545,1402,1363,1402,1324,1298,1545,1402,1480,1467};
        local b='';
        for i=1,#a do 
            b=b..string.char((a[i]-37)/13);
        end;
        return b;
    end)(), { 
        Title = (function()
        local a={947,1025,1194,453,960,1142,986,453,1155,700,453,557,947,1402,1597,1350,1337,570};
        local b='';
        for i=1,#a do 
            b=b..string.char((a[i]-37)/13);
        end;
        return b;
    end)();
        Text = (function()
        local a={1038,1480,1337,1350,1519,1467,453,1324,1480,1467,1532,1545,1519,1298,1402,1467,1545,1532,453,596,453,895,1558,1376,453,1363,1402,1597,1350,1532,453,1298,1493,1493,1441,1402,1350,1337};
        local b='';
        for i=1,#a do 
            b=b..string.char((a[i]-37)/13);
        end;
        return b;
    end)();
        Duration = 3;
    })
end)
end;
_c0h5fd2wk();
