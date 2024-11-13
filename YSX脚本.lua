local OrionLib = loadstring(game:HttpGet("https://raw.githubusercontent.com/shlexware/Orion/main/source"))()
local Window = OrionLib:MakeWindow({Name = "YSX脚本", HidePremium = false, IntroText = "YXS本脚本"})

local about = Window:MakeTab({
    Name = "公告",
    Icon = "rbxassetid://4483345998",
    PremiumOnly = false
})

about:AddParagraph("该脚本免费")
about:AddParagraph("作者:月双喜")
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
    Name = "通用",
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
	Name = "飞行",
	Callback = function()
    loadstring(game:HttpGet("https://pastebin.com/raw/UVAj0uWu"))()
end
})

Tab:AddButton({
	Name = "透视",
	Callback = function()
    loadstring(game:HttpGet('https://raw.githubusercontent.com/Lucasfin000/SpaceHub/main/UESP'))()
end
})

local Tab = Window:MakeTab({
    Name = "自然灾害",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})

Tab:AddButton({
	Name = "自然灾害",
	Callback = function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/2dgeneralspam1/scripts-and-stuff/master/scripts/LoadstringUjHI6RQpz2o8", true))()
end
})

local Tab = Window:MakeTab({
    Name = "战争大亨",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})

Tab:AddButton({
	Name = "战争大亨1",
	Callback = function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/megamoeus/UI-Engine-V2/main/OWTPublic"))()
end
})
