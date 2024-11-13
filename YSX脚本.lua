local OrionLib = loadstring(game:HttpGet("https://raw.githubusercontent.com/shlexware/Orion/main/source"))()
local Window = OrionLib:MakeWindow({Name = "傻猫脚本", HidePremium = false, IntroText = "傻猫脚本脚本"})

local about = Window:MakeTab({
    Name = "账号信息",
    Icon = "rbxassetid://4483345998",
    PremiumOnly = false
})

about:Label("你的账号年龄:"..player.AccountAge.."天")
about:Label("你的注入器:"..identifyexecutor())
about:Label("你的用户名:"..game.Players.LocalPlayer.Character.Name)
about:Label("你现在的服务器名称:"..game:GetService("MarketplaceService"):GetProductInfo(game.PlaceId).Name)
about:Label("你现在的服务器id:"..game.GameId)
about:Label("你的用户ID:"..game.Players.LocalPlayer.UserId)
about:Label("获取客户端ID:"..game:GetService("RbxAnalyticsService"):GetClientId())

local about = Window:MakeTab({
    Name = "公告",
    Icon = "rbxassetid://4483345998",
    PremiumOnly = false
})

about:AddParagraph("该脚本免费")
about:AddParagraph("作者:月双喜 ")
about:AddParagraph("师傅：鹤")
about:AddParagraph("禁止倒卖")
about:AddParagraph("每天优化更新")
about:AddParagraph("更新日志：null")
about:AddParagraph("感谢支持")

local Tab =Window:MakeTab({
	Name = "关于作者",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})

Tab:AddButton({
	Name = "复制作者QQ",
	Callback = function()
     setclipboard("1579104375")
  	end
})

Tab:AddButton({
	Name = "复制我师傅QQ",
	Callback = function()
     setclipboard("3769797457")
  	end
})

local Tab = Window:MakeTab({
    Name = "YSX",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})

Tab:AddButton({
	Name = "键盘",
	Callback = function()
    loadstring(game:HttpGet(('https://raw.githubusercontent.com/manimcool21/Keyboard-FE/main/Protected%20(3).lua'),true))()
end
})

Tab:AddButton({
	Name = "俄亥俄州",
	Callback = function()
    loadstring(game:HttpGet("https://pastebin.com/raw/hkvHeHed",true))()
end
})

Tab:AddButton({
	Name = "战争大亨",
	Callback = function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/megamoeus/UI-Engine-V2/main/OWTPublic"))()
end
})

Tab:AddButton({
	Name = "自然灾害",
	Callback = function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/2dgeneralspam1/scripts-and-stuff/master/scripts/LoadstringUjHI6RQpz2o8", true))()
end
})

Tab:AddButton({
	Name = "飞行",
	Callback = function()
    loadstring("\108\111\97\100\115\116\114\105\110\103\40\103\97\109\101\58\72\116\116\112\71\101\116\40\40\39\104\116\116\112\115\58\47\47\103\105\115\116\46\103\105\116\104\117\98\117\115\101\114\99\111\110\116\101\110\116\46\99\111\109\47\109\101\111\122\111\110\101\89\84\47\98\102\48\51\55\100\102\102\57\102\48\97\55\48\48\49\55\51\48\52\100\100\100\54\55\102\100\99\100\51\55\48\47\114\97\119\47\101\49\52\101\55\52\102\52\50\53\98\48\54\48\100\102\53\50\51\51\52\51\99\102\51\48\98\55\56\55\48\55\52\101\98\51\99\53\100\50\47\97\114\99\101\117\115\37\50\53\50\48\120\37\50\53\50\48\102\108\121\37\50\53\50\48\50\37\50\53\50\48\111\98\102\108\117\99\97\116\111\114\39\41\44\116\114\117\101\41\41\40\41\10\10")()
end
})

Tab:AddButton({
	Name = "无敌的透视",
	Callback = function()
    loadstring(game:HttpGet('https://raw.githubusercontent.com/Lucasfin000/SpaceHub/main/UESP'))()
end>
}) 
