local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/Robojini/Tuturial_UI_Library/main/UI_Template_1"))()
local Window = Library.CreateLib("RobloxHack", "RJTheme3")
local Tab = Window:NewTab("Main")
local Section = Tab:NewSection("Speed")
Section:NewSlider("Speed", "SliderInfo", 500, 1, function(s) -- 500 (Макс. значение) | 0 (Мин. значение)
    game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = s
end)
local Section = Tab:NewSection("JumpPower")
Section:NewSlider("JumpPower", "SliderInfo", 500, 1, function(s) -- 500 (Макс. значение) | 0 (Мин. значение)
    game.Players.LocalPlayer.Character.Humanoid.JumpPower = s
end)
local Section = Tab:NewSection("HipHeight")
Section:NewTextBox("HipHeightt", "TextboxInfo", function(txt)
    game:GetService("Workspace")["Sosatel_337"].Humanoid.HipHeight = txt
end)
local Section = Tab:NewSection("MaxHealth")
    Section:NewTextBox("MaxHealth", "TextboxInfo", function(txt)
    game:GetService("Workspace")["Sosatel_337"].Humanoid.MaxHealth = txt
end)
local Section = Tab:NewSection("NoClip")
Section:NewButton("NoClip", "ButtonInfo", function()
    local Workspace = game:GetService("Workspace")
local CoreGui = game:GetService("CoreGui")
local Players = game:GetService("Players")
local Noclip = Instance.new("ScreenGui")
local BG = Instance.new("Frame")
local Title = Instance.new("TextLabel")
local Toggle = Instance.new("TextButton")
local StatusPF = Instance.new("TextLabel")
local Status = Instance.new("TextLabel")
local Credit = Instance.new("TextLabel")
local Plr = Players.LocalPlayer
local Clipon = false

Noclip.Name = "Noclip"
Noclip.Parent = game.CoreGui

BG.Name = "BG"
BG.Parent = Noclip
BG.BackgroundColor3 = Color3.new(0.0980392, 0.0980392, 0.0980392)
BG.BorderColor3 = Color3.new(0.0588235, 0.0588235, 0.0588235)
BG.BorderSizePixel = 2
BG.Position = UDim2.new(0.149479166, 0, 0.82087779, 0)
BG.Size = UDim2.new(0, 210, 0, 127)
BG.Active = true
BG.Draggable = true

Title.Name = "Title"
Title.Parent = BG
Title.BackgroundColor3 = Color3.new(0.266667, 0.00392157, 0.627451)
Title.BorderColor3 = Color3.new(0.180392, 0, 0.431373)
Title.BorderSizePixel = 2
Title.Size = UDim2.new(0, 210, 0, 33)
Title.Font = Enum.Font.Highway
Title.Text = "Noclip"
Title.TextColor3 = Color3.new(1, 1, 1)
Title.FontSize = Enum.FontSize.Size32
Title.TextSize = 30
Title.TextStrokeColor3 = Color3.new(0.180392, 0, 0.431373)
Title.TextStrokeTransparency = 0

Toggle.Parent = BG
Toggle.BackgroundColor3 = Color3.new(0.266667, 0.00392157, 0.627451)
Toggle.BorderColor3 = Color3.new(0.180392, 0, 0.431373)
Toggle.BorderSizePixel = 2
Toggle.Position = UDim2.new(0.152380958, 0, 0.374192119, 0)
Toggle.Size = UDim2.new(0, 146, 0, 36)
Toggle.Font = Enum.Font.Highway
Toggle.FontSize = Enum.FontSize.Size28
Toggle.Text = "Toggle"
Toggle.TextColor3 = Color3.new(1, 1, 1)
Toggle.TextSize = 25
Toggle.TextStrokeColor3 = Color3.new(0.180392, 0, 0.431373)
Toggle.TextStrokeTransparency = 0

StatusPF.Name = "StatusPF"
StatusPF.Parent = BG
StatusPF.BackgroundColor3 = Color3.new(1, 1, 1)
StatusPF.BackgroundTransparency = 1
StatusPF.Position = UDim2.new(0.314285725, 0, 0.708661377, 0)
StatusPF.Size = UDim2.new(0, 56, 0, 20)
StatusPF.Font = Enum.Font.Highway
StatusPF.FontSize = Enum.FontSize.Size24
StatusPF.Text = "Status:"
StatusPF.TextColor3 = Color3.new(1, 1, 1)
StatusPF.TextSize = 20
StatusPF.TextStrokeColor3 = Color3.new(0.333333, 0.333333, 0.333333)
StatusPF.TextStrokeTransparency = 0
StatusPF.TextWrapped = true

Status.Name = "Status"
Status.Parent = BG
Status.BackgroundColor3 = Color3.new(1, 1, 1)
Status.BackgroundTransparency = 1
Status.Position = UDim2.new(0.580952346, 0, 0.708661377, 0)
Status.Size = UDim2.new(0, 56, 0, 20)
Status.Font = Enum.Font.Highway
Status.FontSize = Enum.FontSize.Size14
Status.Text = "off"
Status.TextColor3 = Color3.new(0.666667, 0, 0)
Status.TextScaled = true
Status.TextSize = 14
Status.TextStrokeColor3 = Color3.new(0.180392, 0, 0.431373)
Status.TextWrapped = true
Status.TextXAlignment = Enum.TextXAlignment.Left

Credit.Name = "Credit"
Credit.Parent = BG
Credit.BackgroundColor3 = Color3.new(1, 1, 1)
Credit.BackgroundTransparency = 1
Credit.Position = UDim2.new(0.195238099, 0, 0.866141737, 0)
Credit.Size = UDim2.new(0, 128, 0, 17)
Credit.Font = Enum.Font.SourceSans
Credit.FontSize = Enum.FontSize.Size18
Credit.Text = "Created by KingLuna"
Credit.TextColor3 = Color3.new(1, 1, 1)
Credit.TextSize = 16
Credit.TextStrokeColor3 = Color3.new(0.196078, 0.196078, 0.196078)
Credit.TextStrokeTransparency = 0
Credit.TextWrapped = true

Toggle.MouseButton1Click:connect(function()
    if Status.Text == "off" then
        Clipon = true
        Status.Text = "on"
        Status.TextColor3 = Color3.new(0,185,0)
        Stepped = game:GetService("RunService").Stepped:Connect(function()
            if not Clipon == false then
                for a, b in pairs(Workspace:GetChildren()) do
                if b.Name == Plr.Name then
                for i, v in pairs(Workspace[Plr.Name]:GetChildren()) do
                if v:IsA("BasePart") then
                v.CanCollide = false
                end end end end
            else
                Stepped:Disconnect()
            end
        end)
    elseif Status.Text == "on" then
        Clipon = false
        Status.Text = "off"
        Status.TextColor3 = Color3.new(170,0,0)
    end
end)

end)
local Section = Tab:NewSection("Fly")
Section:NewButton("Fly", "ButtonInfo", function()
    -- Bring to you by 7alexv7
-- Enjoy the script!
 
-- Instances:
 
local FlyGui = Instance.new("ScreenGui")
local Frame = Instance.new("Frame")
local TextButton = Instance.new("TextButton")
local TextLabel = Instance.new("TextLabel")
 
--Properties:
 
FlyGui.Name = "FlyGui"
FlyGui.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")
 
Frame.Parent = FlyGui
Frame.BackgroundColor3 = Color3.fromRGB(80, 80, 80)
Frame.BorderSizePixel = 0
Frame.Position = UDim2.new(0.0685602352, 0, 0.168769717, 0)
Frame.Size = UDim2.new(0.264544547, 0, 0.100000024, 0)
 
TextButton.Parent = Frame
TextButton.BackgroundColor3 = Color3.fromRGB(66, 66, 66)
TextButton.BorderSizePixel = 0
TextButton.Position = UDim2.new(0.06324628, 0, 0.400667697, 0)
TextButton.Size = UDim2.new(0.871157169, 0, 0.495614201, 0)
TextButton.Font = Enum.Font.ArialBold
TextButton.Text = "Fly"
TextButton.TextColor3 = Color3.fromRGB(255, 255, 255)
TextButton.TextScaled = true
TextButton.TextSize = 14.000
TextButton.TextStrokeTransparency = 0.000
TextButton.TextWrapped = true
 
TextLabel.Parent = Frame
TextLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel.Size = UDim2.new(0, 86, 0, 24)
TextLabel.Font = Enum.Font.Oswald
TextLabel.Text = "Made by 7alexv7"
TextLabel.TextColor3 = Color3.fromRGB(0, 0, 0)
TextLabel.TextScaled = true
TextLabel.TextSize = 14.000
TextLabel.TextWrapped = true
 
-- Scripts:
 
local function NQWSTGE_fake_script() -- Frame.Fly 
    local script = Instance.new('LocalScript', Frame)
 
    local plr = script.Parent.Parent.Parent.Parent
    repeat wait() until plr and plr.Character and plr.Character:findFirstChild("HumanoidRootPart") and plr.Character:findFirstChild("Humanoid") 
    local mouse = game.Players.LocalPlayer:GetMouse()  
    repeat wait() until mouse
    
    local torso = plr.Character.HumanoidRootPart 
    local flying = false
    local deb = true 
    local ctrl = {f = 0, b = 0, l = 0, r = 0} 
    local lastctrl = {f = 0, b = 0, l = 0, r = 0} 
    local maxspeed = 1000 
    local speed = 50
    function Fly() 
    local bg = Instance.new("BodyGyro", torso) 
    bg.P = 9e4 
    bg.maxTorque = Vector3.new(9e9, 9e9, 9e9) 
    bg.cframe = torso.CFrame 
    local bv = Instance.new("BodyVelocity", torso) 
    bv.velocity = Vector3.new(0,0.1,0) 
    bv.maxForce = Vector3.new(9e9, 9e9, 9e9) 
    repeat wait() 
    plr.Character.Humanoid.PlatformStand = true 
    if ctrl.l + ctrl.r ~= 0 or ctrl.f + ctrl.b ~= 0 then 
    speed = speed+.5+(speed/maxspeed) 
    if speed > maxspeed then 
    speed = maxspeed 
    end 
    elseif not (ctrl.l + ctrl.r ~= 0 or ctrl.f + ctrl.b ~= 0) and speed ~= 0 then 
    speed = speed-1 
    if speed < 0 then 
                    speed = 0
                else
                    speed = 50
    end 
    end 
    if (ctrl.l + ctrl.r) ~= 0 or (ctrl.f + ctrl.b) ~= 0 then 
    bv.velocity = ((game.Workspace.CurrentCamera.CoordinateFrame.lookVector * (ctrl.f+ctrl.b)) + ((game.Workspace.CurrentCamera.CoordinateFrame * CFrame.new(ctrl.l+ctrl.r,(ctrl.f+ctrl.b)*.2,0).p) - game.Workspace.CurrentCamera.CoordinateFrame.p))*speed 
    lastctrl = {f = ctrl.f, b = ctrl.b, l = ctrl.l, r = ctrl.r} 
    elseif (ctrl.l + ctrl.r) == 0 and (ctrl.f + ctrl.b) == 0 and speed ~= 0 then 
    bv.velocity = ((game.Workspace.CurrentCamera.CoordinateFrame.lookVector * (lastctrl.f+lastctrl.b)) + ((game.Workspace.CurrentCamera.CoordinateFrame * CFrame.new(lastctrl.l+lastctrl.r,(lastctrl.f+lastctrl.b)*.2,0).p) - game.Workspace.CurrentCamera.CoordinateFrame.p))*speed 
    else 
    bv.velocity = Vector3.new(0,0.1,0) 
    end 
    bg.cframe = game.Workspace.CurrentCamera.CoordinateFrame * CFrame.Angles(-math.rad((ctrl.f+ctrl.b)*50*speed/maxspeed),0,0) 
    until not flying 
    ctrl = {f = 0, b = 0, l = 0, r = 0} 
    lastctrl = {f = 0, b = 0, l = 0, r = 0} 
        
    bg:Destroy() 
    bv:Destroy() 
        plr.Character.Humanoid.PlatformStand = false 
        speed = 50
    end 
    
    mouse.KeyDown:connect(function(key) 
    if key:lower() == "e" then 
            if flying then flying = false 
                speed = 50
    else 
    flying = true 
    Fly()
    
    end 
    elseif key:lower() == "w" then 
    ctrl.f = 1 
    elseif key:lower() == "s" then 
    ctrl.b = -1 
    elseif key:lower() == "a" then 
    ctrl.l = -1 
    elseif key:lower() == "d" then 
    ctrl.r = 1 
    end 
    end) 
    mouse.KeyUp:connect(function(key) 
    if key:lower() == "w" then 
    ctrl.f = 0 
    elseif key:lower() == "s" then 
    ctrl.b = 0 
    elseif key:lower() == "a" then 
    ctrl.l = 0 
    elseif key:lower() == "d" then 
    ctrl.r = 0 
    end 
    end)
    
    plr.Character.Humanoid.StateChanged:Connect(function(o,n)
        if n == Enum.HumanoidStateType.Running then
            ctrl.f = 1
        else
            ctrl.f = 0
        end
    
    end)
    script.Parent.TextButton.MouseButton1Click:Connect(function()
        if flying then
            flying = false
            speed = 50
        else
            flying = true
            Fly()
        end
    end)
    
end
coroutine.wrap(NQWSTGE_fake_script)()
local function RAQA_fake_script() -- Frame.Buttons 
    local script = Instance.new('LocalScript', Frame)
 
    local Trigger = script.Parent.MiniTrext
    local IsMini = false
    function CreateTween(Instance,Style,Direction,Time,table,RepeatCount,CanRepeat,Delay)
        local ts = game:GetService("TweenService")
        local TweenInfo = TweenInfo.new(Time,Style,Direction,RepeatCount,CanRepeat,Delay)
        local Tween = ts:Create(Instance,TweenInfo,table)
        repeat wait() until Tween ~= nil
        return Tween
        
    end
    Trigger.MouseButton1Click:Connect(function()
        if IsMini then
            CreateTween(script.Parent,Enum.EasingStyle.Quad,Enum.EasingDirection.Out,0.5,{Size = UDim2.new(0.265, 0,0.1, 0)},0,false,0.1):Play()
            IsMini = false
            Trigger.Text = "-"
        else
            CreateTween(script.Parent,Enum.EasingStyle.Quad,Enum.EasingDirection.Out,0.5,{Size = UDim2.new(0.265, 0,0.042, 0)},0,false,0.1):Play()
            IsMini = true
            Trigger.Text = "+"
        end
    end)
    script.Parent.Delete.MouseButton1Click:Connect(function()
        script.Parent.Parent:Destroy()
    end)
end
coroutine.wrap(RAQA_fake_script)()
local function TKVUMP_fake_script() -- Frame.Drag Gui 
    local script = Instance.new('LocalScript', Frame)
 
    local UserInputService = game:GetService("UserInputService")
    
    local gui = script.Parent
    
    local dragging
    local dragInput
    local dragStart
    local startPos
    
    local function update(input)
        local delta = input.Position - dragStart
        gui.Position = UDim2.new(startPos.X.Scale, startPos.X.Offset + delta.X, startPos.Y.Scale, startPos.Y.Offset + delta.Y)
    end
    
    gui.InputBegan:Connect(function(input)
        if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
            dragging = true
            dragStart = input.Position
            startPos = gui.Position
            
            input.Changed:Connect(function()
                if input.UserInputState == Enum.UserInputState.End then
                    dragging = false
                end
            end)
        end
    end)
    
    gui.InputChanged:Connect(function(input)
        if input.UserInputType == Enum.UserInputType.MouseMovement or input.UserInputType == Enum.UserInputType.Touch then
            dragInput = input
        end
    end)
    
    UserInputService.InputChanged:Connect(function(input)
        if input == dragInput and dragging then
            update(input)
        end
    end)
end
coroutine.wrap(TKVUMP_fake_script)()
end)
local Tab = Window:NewTab("InfiniteYieldHub")
local Section = Tab:NewSection("InfiniteYieldHub")
Section:NewButton("InfiniteYieldHub", "ButtonInfo", function()
    loadstring(game:HttpGet(('https://raw.githubusercontent.com/EdgeIY/infiniteyield/master/source'),true))()
    end)
    local Tab = Window:NewTab("Teleport")
    local Section = Tab:NewSection("Telepor")
    Section:NewButton("Spawn", "ButtonInfo", function()
    game:GetService("Workspace")["Sosatel_337"].HumanoidRootPart.CFrame = CFrame.new(101, 12, 30)
end)
    Section:NewButton("Base 1", "ButtonInfo", function()
    game:GetService("Workspace")["Sosatel_337"].HumanoidRootPart.CFrame = CFrame.new(66, 4, 350)
end)
 Section:NewButton("Base 2", "ButtonInfo", function()
    game:GetService("Workspace")["Sosatel_337"].HumanoidRootPart.CFrame = CFrame.new(167, 4, 350)
    end)
  Section:NewButton("Base 3", "ButtonInfo", function()
game:GetService("Workspace")["Sosatel_337"].HumanoidRootPart.CFrame = CFrame.new(224, 4, 280)
end)
   Section:NewButton("Base 4", "ButtonInfo", function()
game:GetService("Workspace")["Sosatel_337"].HumanoidRootPart.CFrame = CFrame.new(280, 4, 130)
end)
     Section:NewButton("Base 5", "ButtonInfo", function()
game:GetService("Workspace")["Sosatel_337"].HumanoidRootPart.CFrame = CFrame.new(227, 4, -100)
        end)
     Section:NewButton("Base 6", "ButtonInfo", function()
game:GetService("Workspace")["Sosatel_337"].HumanoidRootPart.CFrame = CFrame.new(231, 4, -260)
     end)
     Section:NewButton("Base 7", "ButtonInfo", function()
game:GetService("Workspace")["Sosatel_337"].HumanoidRootPart.CFrame = CFrame.new(131, 4, -325)
end)
     Section:NewButton("Base 8", "ButtonInfo", function()
game:GetService("Workspace")["Sosatel_337"].HumanoidRootPart.CFrame = CFrame.new(32, 4, -325)
end)
     Section:NewButton("Base 9", "ButtonInfo", function()
game:GetService("Workspace")["Sosatel_337"].HumanoidRootPart.CFrame = CFrame.new(-15, 4, -220)
     end)
     Section:NewButton("Base 10", "ButtonInfo", function()
game:GetService("Workspace")["Sosatel_337"].HumanoidRootPart.CFrame = CFrame.new(-33, 4, 120)
end)
     Section:NewButton("Base 11", "ButtonInfo", function()
        game:GetService("Workspace")["Sosatel_337"].HumanoidRootPart.CFrame = CFrame.new(-33, 4, 240)
end)
