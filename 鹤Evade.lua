local WorkspacePlayers = game:GetService("Workspace").Game.Players
local Players = game:GetService('Players')
local localplayer = Players.LocalPlayer

local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/9Strew/roblox/main/proc/jans"))()
local Esp = loadstring(game:HttpGet("https://raw.githubusercontent.com/9Strew/roblox/main/proc/kiriotesp"))()
Esp.Enabled = false
Esp.Tracers = false
Esp.Boxes = false

local Window = Library:CreateWindow("Evade脚本：鹤汉化", Vector2.new(500, 300), Enum.KeyCode.RightShift)
local Evade = Window:CreateTab("基础")
local Gamee = Window:CreateTab("游戏")
local Configs = Window:CreateTab("设置")

local EvadeSector = Evade:CreateSector("重生", "left")
local Visuals = Evade:CreateSector("视觉效果", "right")
local Credits = Evade:CreateSector("开发和公告", "left")
local Farms = Evade:CreateSector("农场", "right")

local Gamesec = Gamee:CreateSector("重生", "right")
local World = Gamee:CreateSector("视觉", "left")

getgenv().Settings = {
    moneyfarm = false,
    afkfarm = false,
    NoCameraShake = false,
    Downedplayeresp = false,
    AutoRespawn = false,
    Speed = 1450,
    Jump = 3,
    reviveTime = 3,
    DownedColor = Color3.fromRGB(255,0,0),
    PlayerColor = Color3.fromRGB(255,170,0),
}



local WalkSpeed = EvadeSector:AddSlider("Speed", 1450, 1450, 12000, 100, function(Value)
    Settings.Speed = Value
end)


local JumpPower = EvadeSector:AddSlider("JumpPower", 3, 3, 20, 1, function(Value)
    Settings.Jump = Value
end)


World:AddButton("全亮", function()
   	Game.Lighting.Brightness = 4
	Game.Lighting.FogEnd = 100000
	Game.Lighting.GlobalShadows = false
    Game.Lighting.ClockTime = 12
end)

World:AddToggle("取消屏幕抖动", false, function(State)
    Settings.NoCameraShake = State
end)

Gamesec:AddToggle('快速恢复', false, function(State)
    if State then
        workspace.Game.Settings:SetAttribute("ReviveTime", 2.2)
    else
        workspace.Game.Settings:SetAttribute("ReviveTime", Settings.reviveTime)
    end
end)

EvadeSector:AddToggle('自动重生', false, function(State)
    Settings.AutoRespawn = State
end)

EvadeSector:AddButton('↑↑上面两个没有不用管↑↑',function()
    game:GetService("ReplicatedStorage").Events.Respawn:FireServer()
end)

Farms:AddToggle('金钱农场', false, function(State)
    Settings.moneyfarm = State
end)

Farms:AddToggle('afk农场', false, function(State)
    Settings.afkfarm = State
end)


Visuals:AddToggle('启用ESP', false, function(State)
    Esp.Enabled = State
end)

Visuals:AddToggle('机器人ESP', false, function(State)
    Esp.NPCs = State
end)

Visuals:AddToggle('倒地ESP', false, function(State)
    Settings.Downedplayeresp = State
end)

Visuals:AddToggle('框边', false, function(State)
    Esp.Boxes = State
end)

Visuals:AddToggle('跟踪', false, function(State)
    Esp.Tracers = State
end)

Visuals:AddToggle('玩家', false, function(State)
    Esp.Players = State
end)

Visuals:AddToggle('距离', false, function(State)
    Esp.Distance = State
end)

Visuals:AddColorpicker("颜色", Color3.fromRGB(255,170,0), function(Color)
    Settings.PlayerColor = Color
end)

Visuals:AddColorpicker("倒地的颜色", Color3.fromRGB(255,255,255), function(Color)
    Settings.DownedColor = Color
end)


Credits:AddLabel("作者：鹤")
Credits:AddLabel("感谢支持，支持就是动力")
Credits:AddLabel("免费脚本，圈钱死妈")
Credits:AddLabel("群号：951177681")
Configs:CreateConfigSystem()

local FindAI = function()
    for _,v in pairs(WorkspacePlayers:GetChildren()) do
        if not Players:FindFirstChild(v.Name) then
            return v
        end
    end
end


local GetDownedPlr = function()
    for i,v in pairs(WorkspacePlayers:GetChildren()) do
        if v:GetAttribute("Downed") then
            return v
        end
    end
end

--Shitty Auto farm 🥶💀🤡💀🤡💀🤡
local revive = function()
    local downedplr = GetDownedPlr()
    if downedplr ~= nil and downedplr:FindFirstChild('HumanoidRootPart') then
        task.spawn(function()
            while task.wait() do
                if localplayer.Character then
                    workspace.Game.Settings:SetAttribute("ReviveTime", 2.2)
                    localplayer.Character:FindFirstChild('HumanoidRootPart').CFrame = CFrame.new(downedplr:FindFirstChild('HumanoidRootPart').Position.X, downedplr:FindFirstChild('HumanoidRootPart').Position.Y + 3, downedplr:FindFirstChild('HumanoidRootPart').Position.Z)
                    task.wait()
                    game:GetService("ReplicatedStorage").Events.Revive.RevivePlayer:FireServer(tostring(downedplr), false)
                    task.wait(4.5)
                    game:GetService("ReplicatedStorage").Events.Revive.RevivePlayer:FireServer(tostring(downedplr), true)
                    game:GetService("ReplicatedStorage").Events.Revive.RevivePlayer:FireServer(tostring(downedplr), true)
                    game:GetService("ReplicatedStorage").Events.Revive.RevivePlayer:FireServer(tostring(downedplr), true)
                    break
                end
            end
        end)
    end
end

--Kiriot
Esp:AddObjectListener(WorkspacePlayers, {
    Color =  Color3.fromRGB(255,0,0),
    Type = "Model",
    PrimaryPart = function(obj)
        local hrp = obj:FindFirstChild('HRP')
        while not hrp do
            wait()
            hrp = obj:FindFirstChild('HRP')
        end
        return hrp
    end,
    Validator = function(obj)
        return not game.Players:GetPlayerFromCharacter(obj)
    end,
    CustomName = function(obj)
        return '[AI] '..obj.Name
    end,
    IsEnabled = "NPCs",
})

--Tysm CJStylesOrg
Esp.Overrides.GetColor = function(char)
   local GetPlrFromChar = Esp:GetPlrFromChar(char)
   if GetPlrFromChar then
       if Settings.Downedplayeresp and GetPlrFromChar.Character:GetAttribute("Downed") then
           return Settings.DownedColor
       end
   end
   return Settings.PlayerColor
end

local old
old = hookmetamethod(game,"__namecall",newcclosure(function(self,...)
    local Args = {...}
    local method = getnamecallmethod()
    if tostring(self) == 'Communicator' and method == "InvokeServer" and Args[1] == "update" then
        return Settings.Speed, Settings.Jump 
    end
    return old(self,...)
end))

task.spawn(function()
    while task.wait() do
        if Settings.AutoRespawn then
             if localplayer.Character and localplayer.Character:GetAttribute("Downed") then
                game:GetService("ReplicatedStorage").Events.Respawn:FireServer()
             end
        end

        if Settings.NoCameraShake then
            localplayer.PlayerScripts.CameraShake.Value = CFrame.new(0,0,0) * CFrame.new(0,0,0)
        end
        if Settings.moneyfarm then
            if localplayer.Character and localplayer.Character:GetAttribute("Downed") then
                game:GetService("ReplicatedStorage").Events.Respawn:FireServer()
                task.wait(3)
            else
                revive()
                task.wait(1)
            end
        end
        if Settings.moneyfarm == false and Settings.afkfarm and localplayer.Character:FindFirstChild('HumanoidRootPart') ~= nil then
            localplayer.Character:FindFirstChild('HumanoidRootPart').CFrame = CFrame.new(6007, 7005, 8005)
        end
    end
end)

local GC = getconnections or get_signal_cons
	if GC then
		for i,v in pairs(GC(localplayer.Idled)) do
			if v["Disable"] then
				v["Disable"](v)
			elseif v["Disconnect"] then
				v["Disconnect"](v)
			end
		end
	else
		localplayer.Idled:Connect(function()
			local VirtualUser = game:GetService("VirtualUser")
			VirtualUser:CaptureController()
			VirtualUser:ClickButton2(Vector2.new())
		end)
	end
print("Infinite yield's Anti afk")