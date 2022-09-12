loadstring(game:HttpGet("https://raw.githubusercontent.com/0Void2391/random-stuff/main/anti%20kick"))()
local DiscordLib =
    loadstring(game:HttpGet "https://raw.githubusercontent.com/bloodball/-back-ups-for-libs/main/discord")()

local win = DiscordLib:Window("Made by 0_Void#4435, Release 1.2")

local welcometab = win:Server("Home", "")
local Welcome = welcometab:Channel("Welcome")

Welcome:Label("Welcome to Obby GUI")

Welcome:Label("You'll find everything that you need for obbys here")

Welcome:Label("Some scripts could not work at their best in r15")
 
Welcome:Label("Every script here and the ui weren't made by me")

Welcome:Label("Proper credits can be found in the last section")

Welcome:Label("The script is in beta so things are subject to change.")

Welcome:Label("If you're a creator and want your script removed contact me")

Welcome:Label("My Discord: 0_Void#8895")

Welcome:Label("Have fun!")

local Contact = welcometab:Channel("Contact me")

Contact:Label("My Discord: 0_Void#4435")

local Changelog = welcometab:Channel("Change Log")

Changelog:Label("Added Godmode")

Changelog:Label("Changed Inf jump to a Button because i can't make it toggleable")
Changelog:Label("Added RGB Keystrokes (very pog)")

local Modules = win:Server("Modules", "")
local localchannel = Modules:Channel("Local Player")
local speaker = game.Players.LocalPlayer
local gCoreGui = game:GetService('CoreGui') local gPlayers = game:GetService('Players') local gLighting = game:GetService('Lighting') local Player = gPlayers.LocalPlayer
local Mouse = Player:GetMouse() local char = Player.Character local LP = gPlayers.LocalPlayer local gPlayers = game:GetService("Players") local _players = game:GetService('Players')
local plr = speaker
localchannel:Button("Fly", function()
iyflyspeed = 1.3
function sFLY() -- from rocky2u cmdscript
	repeat wait() until LP and LP.Character and LP.Character:FindFirstChild('HumanoidRootPart') and LP.Character:FindFirstChild('Humanoid')
	repeat wait() until Mouse
	
	local T = LP.Character.HumanoidRootPart
	local CONTROL = {F = 0, B = 0, L = 0, R = 0}
	local lCONTROL = {F = 0, B = 0, L = 0, R = 0}
	local SPEED = 0
	

	local function FLY()
		FLYING = true
		local BG = Instance.new('BodyGyro', T)
		local BV = Instance.new('BodyVelocity', T)
		BG.P = 9e4
		BG.maxTorque = Vector3.new(9e9, 9e9, 9e9)
		BG.cframe = T.CFrame
		BV.velocity = Vector3.new(0, 0.1, 0)
		BV.maxForce = Vector3.new(9e9, 9e9, 9e9)
		spawn(function()
		repeat wait()
		LP.Character.Humanoid.PlatformStand = true
		if CONTROL.L + CONTROL.R ~= 0 or CONTROL.F + CONTROL.B ~= 0 then
		SPEED = 50
		elseif not (CONTROL.L + CONTROL.R ~= 0 or CONTROL.F + CONTROL.B ~= 0) and SPEED ~= 0 then
		SPEED = 0
		end
if (CONTROL.L + CONTROL.R) ~= 0 or (CONTROL.F + CONTROL.B) ~= 0 then
BV.velocity = ((workspace.CurrentCamera.CoordinateFrame.lookVector * (CONTROL.F + CONTROL.B)) + ((workspace.CurrentCamera.CoordinateFrame * CFrame.new(CONTROL.L + CONTROL.R, (CONTROL.F + CONTROL.B) * 0.2, 0).p) - workspace.CurrentCamera.CoordinateFrame.p)) * SPEED
lCONTROL = {F = CONTROL.F, B = CONTROL.B, L = CONTROL.L, R = CONTROL.R}
elseif (CONTROL.L + CONTROL.R) == 0 and (CONTROL.F + CONTROL.B) == 0 and SPEED ~= 0 then
BV.velocity = ((workspace.CurrentCamera.CoordinateFrame.lookVector * (lCONTROL.F + lCONTROL.B)) + ((workspace.CurrentCamera.CoordinateFrame * CFrame.new(lCONTROL.L + lCONTROL.R, (lCONTROL.F + lCONTROL.B) * 0.2, 0).p) - workspace.CurrentCamera.CoordinateFrame.p)) * SPEED
else
BV.velocity = Vector3.new(0, 0.1, 0)
end
	BG.cframe = workspace.CurrentCamera.CoordinateFrame
			until not FLYING
			CONTROL = {F = 0, B = 0, L = 0, R = 0}
			lCONTROL = {F = 0, B = 0, L = 0, R = 0}
			SPEED = 0
			BG:destroy()
			BV:destroy()
			LP.Character.Humanoid.PlatformStand = false
		end)
	end
	Mouse.KeyDown:connect(function(KEY)
		if KEY:lower() == 'w' then
			CONTROL.F = iyflyspeed
		elseif KEY:lower() == 's' then
			CONTROL.B = -iyflyspeed
		elseif KEY:lower() == 'a' then
			CONTROL.L = -iyflyspeed 
		elseif KEY:lower() == 'd' then 
			CONTROL.R = iyflyspeed
		end
	end)
	Mouse.KeyUp:connect(function(KEY)
		if KEY:lower() == 'w' then
			CONTROL.F = 0
		elseif KEY:lower() == 's' then
			CONTROL.B = 0
		elseif KEY:lower() == 'a' then
			CONTROL.L = 0
		elseif KEY:lower() == 'd' then
			CONTROL.R = 0
		end
	end)
	FLY()
end

sFLY()
end)

localchannel:Button("NoClip", function()
local Noclip = nil
local Clip = nil

function noclip()
	Clip = false
	local function Nocl()
		if Clip == false and game.Players.LocalPlayer.Character ~= nil then
			for _,v in pairs(game.Players.LocalPlayer.Character:GetDescendants()) do
				if v:IsA('BasePart') and v.CanCollide and v.Name ~= floatName then
					v.CanCollide = false
				end
			end
		end
		wait(0.21) -- basic optimization
	end
	Noclip = game:GetService('RunService').Stepped:Connect(Nocl)
end
noclip() -- to toggle noclip() and clip()
end)

localchannel:Slider("Walkspeed", 0, 100, 50, function(speed)
game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = (speed)
end)

localchannel:Slider("Jump Power", 0, 100, 50, function(jump)
game.Players.LocalPlayer.Character.Humanoid.JumpPower = (jump)
end)

localchannel:Slider("Hip Height", 0, 100, 50, function(hipheight)
function r15(plr)
	if plr.Character:FindFirstChildOfClass('Humanoid').RigType == Enum.HumanoidRigType.R15 then
		return true
	end
end
	local height
	if r15(speaker) then
		height = (hipheight) or 2.1
	else
		height = (hipheight) or 0
	end
	speaker.Character:FindFirstChildOfClass('Humanoid').HipHeight = (hipheight)
end)

localchannel:Button("Inf Jump", function()
Mouse.KeyDown:Connect(function(Key)

if Key == " " then
		game.Players.LocalPlayer.Character:FindFirstChildOfClass('Humanoid'):ChangeState(3)


localchannel:Button("Float, press e to enable/disable", function()
local testsquadAIR    = {
   Airwalk    = Enum.KeyCode.E;
}

local ContextAction = Game:GetService("ContextActionService")
local RunService    = Game:GetService("RunService")

local function ForEach(t, f)
   for Index, Value in pairs(t) do
       f(Value, Index)
   end
end _G.ForEach=ForEach;
local function Create(ClassName)
   local Object = Instance.new(ClassName)
   return function(Properties)
       ForEach(Properties, function(Value, Property)
           Object[Property] = Value
       end)
       return Object
   end
end _G.Create=Create;

do
   local airwalkState     = false
   local currentPart    = nil
   RunService.RenderStepped:connect(function()
       if airwalkState then
           if not currentPart then
               game.StarterGui:SetCore("SendNotification", {
Title = "Enabled";
Text = "",
Duration = 5; -- how long the notification should in secounds
})
               currentPart = Create "Part" {
                   Parent = workspace.CurrentCamera;
                   Name = "AWP";
                   Transparency = 1;
                   Size = Vector3.new(2, 1, 2);
                   Anchored = true;
               }
           end
           local character = game.Players.LocalPlayer.Character
           if character then
               currentPart.CFrame = character.HumanoidRootPart.CFrame - Vector3.new(0, 3.6, 0)
           end
       else
           if currentPart then
               game.StarterGui:SetCore("SendNotification", {
Title = "Disabled";
Text = "",
Duration = 5; -- how long the notification should in secounds
})
               currentPart:Destroy()
               currentPart = nil
           end        
       end
   end)
      ContextAction:BindAction("Airwalk", function(_, InputState)
       if InputState == Enum.UserInputState.Begin then
           print()
           airwalkState = not airwalkState
       end
   end, false, testsquadAIR.Airwalk)
end
end)
localchannel:Button("Click tp tool", function ()
	
mouse = game.Players.LocalPlayer:GetMouse()
tool = Instance.new("Tool")
tool.RequiresHandle = false
tool.Name = "Click Teleport"
tool.Activated:connect(function()
local pos = mouse.Hit+Vector3.new(0,2.5,0)
pos = CFrame.new(pos.X,pos.Y,pos.Z)
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = pos
end)
tool.Parent = game.Players.LocalPlayer.Backpack
end)
localchannel:Button("GodMode Gui", function ()
	local TargetFEKill = Instance.new("ScreenGui")
local Main = Instance.new("Frame")
local TextLabel = Instance.new("TextLabel")
local TextLabel_2 = Instance.new("TextLabel")
local Kill = Instance.new("TextButton")
local Target = Instance.new("TextBox")
local God = Instance.new("TextButton")
local Exit = Instance.new("TextButton")

-- Properties
TargetFEKill.Name = "FE God"
TargetFEKill.Parent = game.CoreGui

Main.Name = "Main"
Main.Parent = TargetFEKill
Main.BackgroundColor3 = Color3.new(0.92549, 0.941177, 0.945098)
Main.BorderSizePixel = 0
Main.Position = UDim2.new(0.553832114, 0, 0.375494063, 0)
Main.Size = UDim2.new(0, 252, 0, 255)
Main.Selectable = true
Main.Draggable = true
Main.Active = true

TextLabel.Parent = Main
TextLabel.BackgroundColor3 = Color3.new(0.741176, 0.764706, 0.780392)
TextLabel.BorderSizePixel = 0
TextLabel.Size = UDim2.new(0, 252, 0, 36)
TextLabel.Font = Enum.Font.Cartoon
TextLabel.Text = " FE Toggable God mode"
TextLabel.TextColor3 = Color3.new(0, 0, 0)
TextLabel.TextSize = 14
TextLabel.TextXAlignment = Enum.TextXAlignment.Left

TextLabel_2.Parent = Main
TextLabel_2.BackgroundColor3 = Color3.new(0.584314, 0.647059, 0.65098)
TextLabel_2.BorderSizePixel = 0
TextLabel_2.Position = UDim2.new(0, 0, 0.141176477, 0)
TextLabel_2.Size = UDim2.new(0, 252, 0, 10)
TextLabel_2.Font = Enum.Font.Cartoon
TextLabel_2.Text = ""
TextLabel_2.TextColor3 = Color3.new(0, 0, 0)
TextLabel_2.TextSize = 14
TextLabel_2.TextXAlignment = Enum.TextXAlignment.Left

God.Name = "God"
God.Parent = Main
God.BackgroundColor3 = Color3.new(0.741176, 0.764706, 0.780392)
God.BorderSizePixel = 0
God.Position = UDim2.new(0.204365075, 0, 0.46274507, 0)
God.Size = UDim2.new(0, 149, 0, 33)
God.Font = Enum.Font.Cartoon
God.Text = "FE God"
God.TextColor3 = Color3.new(0, 0, 0)
God.TextSize = 14

Exit.Name = "Exit"
Exit.Parent = Main
Exit.BackgroundColor3 = Color3.new(1, 1, 1)
Exit.BackgroundTransparency = 1
Exit.Position = UDim2.new(0.837301612, 0, 0, 0)
Exit.Size = UDim2.new(0, 41, 0, 36)
Exit.Font = Enum.Font.Cartoon
Exit.Text = "X"
Exit.TextColor3 = Color3.new(0, 0, 0)
Exit.TextSize = 14

function GetPlayer(String)
local Found = {}
local strl = String:lower()
if strl == "all" then
for i,v in pairs(game.Players:GetPlayers()) do
table.insert(Found,v)
end
elseif strl == "others" then
for i,v in pairs(game.Players:GetPlayers()) do
if v.Name ~= game.Players.LocalPlayer.Name then
table.insert(Found,v)
end
end
else
for i,v in pairs(game.Players:GetPlayers()) do
if v.Name:lower():sub(1, #String) == String:lower() then
table.insert(Found,v)
end
end
end
return Found
end

local plr = game:GetService("Players").LocalPlayer
local human = plr.Character:FindFirstChildOfClass("Humanoid")
local humclone
local fold = Instance.new("Folder",game)
local godded = false
fold.Name = "fegodguistorage"

plr.CharacterAdded:Connect(function()
print("New character detected.")
wait()
human = plr.Character:FindFirstChildOfClass("Humanoid")
for _,v in next, fold:GetChildren() do
v:Destroy()
end
godded = false
end)

God.MouseButton1Click:connect(function()
if godded == false then
godded = true
God.BackgroundColor3 = Color3.fromRGB(212, 0, 0)
humclone = Instance.new("Humanoid")
human.Parent = fold
humclone.Parent = plr.Character
else
if godded == true then
godded = false
God.BackgroundColor3 = Color3.fromRGB(189, 195, 199)
humclone:Destroy()
human.Parent = plr.Character
end
end
end)
end)
localchannel:Button("Reset", function()
local plr = game.Players.LocalPlayer
	local char = plr.Character
	if char:FindFirstChildOfClass("Humanoid") then char:FindFirstChildOfClass("Humanoid"):ChangeState(15) end
	char:ClearAllChildren()
	local newChar = Instance.new("Model")
	newChar.Parent = workspace
	plr.Character = newChar
	wait()
	plr.Character = char
	newChar:Destroy()
end)
localchannel:Button("Refresh", function()
function respawn(plr)
	local char = plr.Character
	if char:FindFirstChildOfClass("Humanoid") then char:FindFirstChildOfClass("Humanoid"):ChangeState(15) end
	char:ClearAllChildren()
	local newChar = Instance.new("Model")
	newChar.Parent = workspace
	plr.Character = newChar
	wait()
	plr.Character = char
	newChar:Destroy()
end
	local Human = plr.Character and plr.Character:FindFirstChildOfClass("Humanoid", true)
	local pos = Human and Human.RootPart and Human.RootPart.CFrame
	local pos1 = workspace.CurrentCamera.CFrame
	respawn(plr)
	task.spawn(function()
		plr.CharacterAdded:Wait():WaitForChild("Humanoid").RootPart.CFrame, workspace.CurrentCamera.CFrame = pos, wait() and pos1
	end)
end)
local Exclusives = Modules:Channel("Exclusives")
Exclusives:Button("Tas", function ()
DiscordLib:Notification("Notification", "Check printed messages for binds", "Okay!")
getgenv().Spectate = "One"
getgenv().Create = "Two"
getgenv().Test = "Three"
getgenv().Pause = "E"
getgenv().Backward = "F"
getgenv().Forward = "G"
getgenv().FrameBackward = "F"
getgenv().FrameForward = "G"
getgenv().Clear = "Six"
getgenv().CollisionToggle = "X"
getgenv().CollisionViewer = "C"
getgenv().VelocityToggle = "V"
getgenv().Confirm = "LeftControl"
getgenv().ClearConfirm = "RightControl"
getgenv().FrameAdvance = "R"
print("Spectate is 1")
print("Create is 2")
print("Test is 3")
print("Backward and Frame Backward is F")
print("Forward and Frame Forward is G")
print("Clear is 6")
print("Collision Toggle is X")
print("Collision Viewer is C")
print("Velocity Toggle is V")
print("Confirm is LeftCtrl")
print("ClearConfirm is RightCtrl")
print("Frame Advance is R")
loadstring(game:HttpGet("https://raw.githubusercontent.com/0Void2391/Roblox-tas/main/tas.lua"))()
end)

Exclusives:Button("RGB Keystrokes", function ()
loadstring(game:HttpGet(('https://raw.githubusercontent.com/darzisme/justhax/main/keystrokes.lua'),true))()
end)
