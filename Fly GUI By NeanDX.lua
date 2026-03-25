local CoreGui = game:GetService("CoreGui")
local Players = game:GetService("Players")
local RunService = game:GetService("RunService")
local UserInputService = game:GetService("UserInputService")
local TweenService = game:GetService("TweenService")
local Workspace = game:GetService("Workspace")
local ContextActionService = game:GetService("ContextActionService")

local player = Players.LocalPlayer

-- Tunggu PlayerModule siap
local PlayerScripts = player:WaitForChild("PlayerScripts")
local PlayerModule = require(PlayerScripts:WaitForChild("PlayerModule"))
local ControlModule = PlayerModule:GetControls()

-- Deteksi platform
local isTouchDevice = UserInputService.TouchEnabled

-- Clean up previous instances
pcall(function()
    if CoreGui:FindFirstChild("FlyGuiRemastered") then CoreGui.FlyGuiRemastered:Destroy() end
    if player.PlayerGui:FindFirstChild("FlyGuiRemastered") then player.PlayerGui.FlyGuiRemastered:Destroy() end
end)

local screenGui = Instance.new("ScreenGui")
screenGui.Name = "FlyGuiRemastered"
screenGui.ResetOnSpawn = false
screenGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
screenGui.ScreenInsets = Enum.ScreenInsets.DeviceSafeInsets
local success = pcall(function() screenGui.Parent = CoreGui end)
if not success then screenGui.Parent = player:WaitForChild("PlayerGui") end

-- UI Minimalis
local mainFrame = Instance.new("Frame", screenGui)
mainFrame.Name = "MainFrame"
mainFrame.BackgroundColor3 = Color3.fromRGB(15, 15, 20)
mainFrame.Position = UDim2.new(0.05, 0, 0.4, 0)
mainFrame.Size = UDim2.new(0, 180, 0, 90)
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
titleLabel.Text = "✈ FLY GUI"
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

-- Fungsi tombol
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

-- Tombol speed dan fly
local btnMinus = createBtn(contentFrame, "-", UDim2.new(0, 10, 0, 8), UDim2.new(0, 35, 0, 28))
local btnPlus = createBtn(contentFrame, "+", UDim2.new(0, 135, 0, 8), UDim2.new(0, 35, 0, 28))

local lblSpeed = Instance.new("TextLabel", contentFrame)
lblSpeed.BackgroundColor3 = Color3.fromRGB(20, 20, 25)
lblSpeed.Position = UDim2.new(0, 50, 0, 8)
lblSpeed.Size = UDim2.new(0, 80, 0, 28)
lblSpeed.Font = Enum.Font.GothamBold
lblSpeed.Text = "Speed: 1"
lblSpeed.TextColor3 = Color3.fromRGB(150, 255, 150)
lblSpeed.TextSize = 12
Instance.new("UICorner", lblSpeed).CornerRadius = UDim.new(0, 6)

local btnFly = createBtn(contentFrame, "ENABLE FLY", UDim2.new(0, 10, 0, 42), UDim2.new(0, 160, 0, 32), Color3.fromRGB(40, 40, 50))

-- Tombol naik/turun untuk mobile (kanan bawah)
local mobileFrame = Instance.new("Frame", screenGui)
mobileFrame.Name = "MobileControls"
mobileFrame.BackgroundTransparency = 1
mobileFrame.Size = UDim2.new(1, 0, 1, 0)
mobileFrame.Visible = false

-- Tombol naik/turun di kanan (untuk mobile)
local btnMobileUp = createBtn(mobileFrame, "▲", UDim2.new(1, -80, 1, -140), UDim2.new(0, 60, 0, 60), Color3.fromRGB(0, 120, 80))
btnMobileUp.TextSize = 24
btnMobileUp.Visible = false

local btnMobileDown = createBtn(mobileFrame, "▼", UDim2.new(1, -80, 1, -70), UDim2.new(0, 60, 0, 60), Color3.fromRGB(120, 50, 50))
btnMobileDown.TextSize = 24
btnMobileDown.Visible = false

-- LOGIC
local flySpeedMultiplier = 1
local maxFlySpeed = 50
local isFlying = false
local minimized = false

local flyConn
local controlFlags = {f = 0, b = 0, l = 0, r = 0, up = 0, down = 0}
local currentSpeed = 0

local bodyGyro, bodyVelocity

local function cleanupConstraints()
    if bodyGyro then bodyGyro:Destroy(); bodyGyro = nil end
    if bodyVelocity then bodyVelocity:Destroy(); bodyVelocity = nil end
    if flyConn then flyConn:Disconnect(); flyConn = nil end
end

local function getRoot(char)
    return char:FindFirstChild("HumanoidRootPart") or char:FindFirstChild("Torso") or char:FindFirstChild("UpperTorso") or char.PrimaryPart
end

-- Override ControlModule untuk membaca input joystick
local function setupJoystickInput()
    RunService:BindToRenderStep("FlyJoystickReader", Enum.RenderPriority.Input.Value + 1, function()
        if not isFlying then return end
        
        -- Dapatkan input dari joystick bawaan
        local joystickVector = ControlModule:GetMoveVector()
        
        -- PERBAIKAN: Konversi joystick ke control flags
        -- joystickVector: X = kanan/kiri, Z = maju/mundur
        -- Di Roblox: Z negatif = maju (ke depan), Z positif = mundur (ke belakang)
        -- Tapi di joystick mobile: atas = Z negatif, bawah = Z positif
        
        -- Kiri/Kanan (X)
        if joystickVector.X < -0.1 then
            controlFlags.l = -1
            controlFlags.r = 0
        elseif joystickVector.X > 0.1 then
            controlFlags.l = 0
            controlFlags.r = 1
        else
            controlFlags.l = 0
            controlFlags.r = 0
        end
        
        -- Maju/Mundur (Z) - PERBAIKAN ARAH
        -- Joystick atas (Z negatif) = Maju (f = 1)
        -- Joystick bawah (Z positif) = Mundur (b = -1)
        if joystickVector.Z < -0.1 then
            controlFlags.f = 1      -- Maju
            controlFlags.b = 0
        elseif joystickVector.Z > 0.1 then
            controlFlags.f = 0
            controlFlags.b = -1     -- Mundur
        else
            controlFlags.f = 0
            controlFlags.b = 0
        end
    end)
end

local function disableJoystickInput()
    pcall(function()
        RunService:UnbindFromRenderStep("FlyJoystickReader")
    end)
end

local function disableFly()
    isFlying = false
    TweenService:Create(btnFly, TweenInfo.new(0.3), {BackgroundColor3 = Color3.fromRGB(40, 40, 50)}):Play()
    btnFly.Text = "ENABLE FLY"
    
    local char = player.Character
    if char then
        local hum = char:FindFirstChildOfClass("Humanoid")
        if hum then 
            hum.PlatformStand = false
            hum.AutoRotate = true
            hum:ChangeState(Enum.HumanoidStateType.GettingUp)
        end
    end
    
    cleanupConstraints()
    disableJoystickInput()
    currentSpeed = 0
    
    mobileFrame.Visible = false
    btnMobileUp.Visible = false
    btnMobileDown.Visible = false
    
    ContextActionService:UnbindAction("FlyUp")
    ContextActionService:UnbindAction("FlyDown")
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
    
    setupJoystickInput()
    
    if isTouchDevice then
        mobileFrame.Visible = true
        btnMobileUp.Visible = true
        btnMobileDown.Visible = true
        
        ContextActionService:BindAction("FlyUp", function(actionName, inputState, inputObj)
            if inputState == Enum.UserInputState.Begin then
                controlFlags.up = 1
                btnMobileUp.BackgroundColor3 = Color3.fromRGB(0, 200, 120)
            elseif inputState == Enum.UserInputState.End then
                controlFlags.up = 0
                btnMobileUp.BackgroundColor3 = Color3.fromRGB(0, 120, 80)
            end
            return Enum.ContextActionResult.Sink
        end, false, Enum.KeyCode.ButtonY)
        
        ContextActionService:BindAction("FlyDown", function(actionName, inputState, inputObj)
            if inputState == Enum.UserInputState.Begin then
                controlFlags.down = -1
                btnMobileDown.BackgroundColor3 = Color3.fromRGB(200, 80, 80)
            elseif inputState == Enum.UserInputState.End then
                controlFlags.down = 0
                btnMobileDown.BackgroundColor3 = Color3.fromRGB(120, 50, 50)
            end
            return Enum.ContextActionResult.Sink
        end, false, Enum.KeyCode.ButtonB)
    end
    
    -- Main fly loop
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
            currentSpeed = math.min(currentSpeed + (flySpeedMultiplier * 2 * dtNormalized), maxFlySpeed * flySpeedMultiplier)
        else
            currentSpeed = math.max(currentSpeed - (flySpeedMultiplier * 4 * dtNormalized), 0)
        end
        
        -- Calculate movement direction
        local moveDir = Vector3.zero
        if isMoving then
            -- PERBAIKAN: Arah maju mundur yang benar
            -- f (maju) = 1, b (mundur) = -1
            -- LookVector menghadap ke depan (maju)
            -- -LookVector menghadap ke belakang (mundur)
            moveDir = (cam.CFrame.RightVector * (controlFlags.l + controlFlags.r)) +
                      (cam.CFrame.LookVector * (controlFlags.f + controlFlags.b)) +
                      (Vector3.new(0, 1, 0) * (controlFlags.up + controlFlags.down))
            if moveDir.Magnitude > 0 then moveDir = moveDir.Unit end
        end
        
        if bodyVelocity then 
            bodyVelocity.Velocity = moveDir * currentSpeed 
        end
        if bodyGyro then 
            bodyGyro.CFrame = cam.CFrame 
        end
    end)
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
        Size = minimized and UDim2.new(0, 180, 0, 25) or UDim2.new(0, 180, 0, 90)
    }):Play()
end)

btnPlus.MouseButton1Click:Connect(function()
    flySpeedMultiplier = math.clamp(flySpeedMultiplier + 1, 1, 15)
    lblSpeed.Text = "Speed: " .. tostring(flySpeedMultiplier)
end)

btnMinus.MouseButton1Click:Connect(function()
    flySpeedMultiplier = math.clamp(flySpeedMultiplier - 1, 1, 15)
    lblSpeed.Text = "Speed: " .. tostring(flySpeedMultiplier)
end)

-- Touch handlers untuk tombol mobile naik/turun
local function bindTouchButton(btn, flagKey, val, activeColor, normalColor)
    btn.InputBegan:Connect(function(input)
        if input.UserInputType == Enum.UserInputType.MouseButton1 or 
           input.UserInputType == Enum.UserInputType.Touch then
            controlFlags[flagKey] = val
            btn.BackgroundColor3 = activeColor
        end
    end)
    
    btn.InputEnded:Connect(function(input)
        if input.UserInputType == Enum.UserInputType.MouseButton1 or 
           input.UserInputType == Enum.UserInputType.Touch then
            controlFlags[flagKey] = 0
            btn.BackgroundColor3 = normalColor
        end
    end)
end

bindTouchButton(btnMobileUp, "up", 1, Color3.fromRGB(0, 200, 120), Color3.fromRGB(0, 120, 80))
bindTouchButton(btnMobileDown, "down", -1, Color3.fromRGB(200, 80, 80), Color3.fromRGB(120, 50, 50))

-- Keyboard support untuk PC (WASD + Space/LeftControl)
UserInputService.InputBegan:Connect(function(input, gpe)
    if gpe then return end
    if input.KeyCode == Enum.KeyCode.W then controlFlags.f = 1      -- W = Maju
    elseif input.KeyCode == Enum.KeyCode.S then controlFlags.b = -1  -- S = Mundur
    elseif input.KeyCode == Enum.KeyCode.A then controlFlags.l = -1  -- A = Kiri
    elseif input.KeyCode == Enum.KeyCode.D then controlFlags.r = 1   -- D = Kanan
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
    if isFlying then 
        disableFly() 
    else 
        enableFly() 
    end
end)

-- Character respawn handling
player.CharacterAdded:Connect(function()
    disableFly()
    controlFlags = {f = 0, b = 0, l = 0, r = 0, up = 0, down = 0}
end)

screenGui.AncestryChanged:Connect(function()
    if not screenGui:IsDescendantOf(game) then disableFly() end
end)

-- Notifikasi
pcall(function()
    game:GetService("StarterGui"):SetCore("SendNotification", { 
        Title = "FLY GUI V5.1 (Fixed)";
        Text = isTouchDevice and "Mobile: Push joystick UP to fly forward" or "PC: W to fly forward, S to backward";
        Duration = 5;
    })
end)

print("Fly GUI Loaded - Direction Fixed")
