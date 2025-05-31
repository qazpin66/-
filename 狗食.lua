local Lengui = loadstring(game:HttpGet("https://raw.githubusercontent.com/qazpin66/-/refs/heads/main/ui.txt"))()     
local window = Cloudlib:new("云脚本V1.2.2 [Beta]")

local creds = window:tip("人物",'4483345998')

local tip = creds:section("设置",true)

tip:Label("欢迎使用痛脚本")
tip:Label("作者QQ：3150463602")
tip:Label("作者：痛")
tip:Label("脚本持续更新中")
tip:Label("帮助者:鹤")

local creds = window:Tab("人物",'4483345998')

local Tab = creds:section("通用",true)

Tab:Slider('速度', 'Walkspeed Slider', 16, 16, 1000,false, function(Value)
    game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = Value
end)

Tab:Slider('跳跃', 'JumpPower Slider', 50, 50, 1000,false, function(Value)
    game.Players.LocalPlayer.Character.Humanoid.JumpPower = Value
end)

Tab:Button("键盘脚本",function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/advxzivhsjjdhxhsidifvsh/mobkeyboard/main/main.txt", true))()
end)
Tab:Toggle("夜视", "text", false, function(Value)
if Value then
		    game.Lighting.Ambient = Color3.new(1, 1, 1)
		else
		    game.Lighting.Ambient = Color3.new(0, 0, 0)
		end
end)
Tab:Toggle("穿墙", "text", false, function(Value)
if Value then
      Noclip = true
      Stepped = game.RunService.Stepped:Connect(function()
        if Noclip == true then
          for a, b in pairs(game.Workspace:GetChildren()) do
            if b.Name == game.Players.LocalPlayer.Name then
              for i, v in pairs(game.Workspace[game.Players.LocalPlayer.Name]:GetChildren()) do
                if v:IsA("BasePart") then
                  v.CanCollide = false
                end
              end
            end
          end
         else
          Stepped:Disconnect()
        end
      end)
     else
      Noclip = false
    end
end)
Tab:Button("飞行脚本可隐藏",function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/CloudX-ScriptsWane/ScriptsDache/main/%E9%A3%9E%E8%A1%8C.lua", true))()
end)
Tab:Button("工具点击传送",function()
mouse = game.Players.LocalPlayer:GetMouse()
                tool = Instance.new("Tool")
                tool.RequiresHandle = false
                tool.Name = "点击传送"
                tool.Activated:connect(function()
                local pos = mouse.Hit+Vector3.new(0,2.5,0)
                pos = CFrame.new(pos.X,pos.Y,pos.Z)
                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = pos
                end)
                tool.Parent = game.Players.LocalPlayer.Backpack
end)
Tab:Toggle("还是一个开关", "text", false, function(value)
print("value")
end)
Tab:Button("工具",function()
loadstring(game:HttpGet("https://cdn.wearedevs.net/scripts/BTools.txt"))()
end)
Tab:Button("ESP gui",function()
loadstring(game:HttpGet(('https://raw.githubusercontent.com/zachisfunny/esp-unversal/main/script'),true))()
end)
Tab:Button("反AFK",function()
wait(0.5)
    local bb=game:service'VirtualUser'
    game:service'Players'.LocalPlayer.Idled:connect(function()
    bb:CaptureController()
    bb:ClickButton2(Vector2.new())
    end)
 
    print("Antiafk enabled")
end)
Tab:Button("反踢出",function()
local vu = game:GetService("VirtualUser")
            game:GetService("Players").LocalPlayer.Idled:connect(function()
                    vu:Button2Down(Vector2.new(0,0),workspace.CurrentCamera.CFrame)
                    wait(1)
                vu:Button2Up(Vector2.new(0,0),workspace.CurrentCamera.CFrame)
            end)
end)