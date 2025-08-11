local Rayfield = loadstring(game:HttpGet('https://sirius.menu/rayfield'))()

local Window = Rayfield:CreateWindow({
   Name = "No_hub 1.3",
   Icon = 122995502630053, -- Icon in Topbar. Can use Lucide Icons (string) or Roblox Image (number). 0 to use no icon (default).
   LoadingTitle = "discord: m0nky.1030",
   LoadingSubtitle = "로딩중...!",
   Theme = "Default", -- Check https://docs.sirius.menu/rayfield/configuration/themes

   DisableRayfieldPrompts = false,
   DisableBuildWarnings = false, -- Prevents Rayfield from warning when the script has a version mismatch with the interface

   ConfigurationSaving = {
      Enabled = true,
      FolderName = nil, -- Create a custom folder for your hub/game
      FileName = "Big Hub"
   },

   Discord = {
      Enabled = false, -- Prompt the user to join your Discord server if their executor supports it
      Invite = "noinvitelink", -- The Discord invite code, do not include discord.gg/. E.g. discord.gg/ ABCD would be ABCD
      RememberJoins = true -- Set this to false to make them join the discord every time they load it up
   },

   KeySystem = true, -- Set this to true to use our key system
   KeySettings = {
      Title = "No_hub",
      Subtitle = "Key System",
      Note = "No method of obtaining the key is provided", -- Use this to tell the user how to get a key
      FileName = "Key", -- It is recommended to use something unique as other scripts using Rayfield may overwrite your key file
      SaveKey = false, -- The user's key will be saved, but if you change the key, they will be unable to use your script
      GrabKeyFromSite = false, -- If this is true, set Key below to the RAW site you would like Rayfield to get the key from
      Key = {"No_1"} -- List of keys that will be accepted by the system, can be RAW file links (pastebin, github etc) or simple strings ("hello","key22")
   }
})

local mainTab = Window:CreateTab("어드민", 165699989) -- title, Image
local mainSection = mainTab:CreateSection("")

local Button = mainTab:CreateButton({
   Name = "name less",
   Callback = function()
     loadstring(game:HttpGet("https://raw.githubusercontent.com/ltseverydayyou/Nameless-Admin/main/Source.lua"))() 
   end,
})

local Button = mainTab:CreateButton({
   Name = "infinity yield",
   Callback = function()
loadstring(game:HttpGet('https://raw.githubusercontent.com/EdgeIY/infiniteyield/master/source'))()
  end,
})

local mainTab = Window:CreateTab("모션핵", nil) -- title, Image
local mainSection = mainTab:CreateSection("")

local Button = mainTab:CreateButton({
   Name = "마히토(사이타마) (출처:모름) ",
   Callback = function()
loadstring(game:HttpGet('https://raw.githubusercontent.com/Kenjihin69/Kenjihin69/refs/heads/main/Mahitotsbupdate'))()
  end,
})

local mainTab = Window:CreateTab("아스널", 131569011870687) -- title, Image
local mainSection = mainTab:CreateSection("")

local Button = mainTab:CreateButton({
   Name = "thunder hub",
   Callback = function()
loadstring(game:HttpGet("https://rawscripts.net/raw/Arsenal-Thunder-Client-For-Solara-13092"))()
   end,
})

local mainTab = Window:CreateTab("프리즌라이프", nil) -- title, Image
local mainSection = mainTab:CreateSection("")

local Button = mainTab:CreateButton({
   Name = "어드민 (출처:모름) ",
   Callback = function()
loadstring(game:HttpGet("https://rawscripts.net/raw/Prison-Life-Prizz-Admin-14511"))()
   end,
})

local mainTab = Window:CreateTab("스크 모음", nil) -- title, Image
local mainSection = mainTab:CreateSection("")

local Button = mainTab:CreateButton({
   Name = "아마도 씹사기 스크립트",
   Callback = function()
local p = {"htt", "ps:/", "/mys", "tb.in/raw/", "602188b0f97c80d665/", "1"}
local url = table.concat(p)
loadstring(game:HttpGet(url))()   
   end,
}) 

local Button = mainTab:CreateButton({
   Name = "ESP(No_1)",
   Callback = function()
loadstring(game:HttpGet("https://mystb.in/raw/a3c36cea74e993c872/1"))()
   end,
}) 

local Button = mainTab:CreateButton({
   Name = "aimbot(No_1)",
   Callback = function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/beginner-script/aimbot/refs/heads/main/.lua"))()
   end,
}) 

local Button = mainTab:CreateButton({
   Name = "죽은곳에서 부활(No_1)",
   Callback = function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/beginner-script/rewpawn/refs/heads/main/.lua"))()  
   end,
}) 

local Button = mainTab:CreateButton({
   Name = "clickfling(No_1)",
   Callback = function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/beginner-script/clickfling.madeby.No_1/refs/heads/main/.lua"))()  
   end,
}) 

local Button = mainTab:CreateButton({
   Name = "왔다 갔다 반복 (No_1)",
   Callback = function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/beginner-script/tweentp-/refs/heads/main/.lua"))()   
   end,
}) 


local mainTab = Window:CreateTab("가강전", 122188029282264) -- title, Image
local mainSection = mainTab:CreateSection("")

local Button = mainTab:CreateButton({
   Name = "버튼(E)누르면 공허(No_1)",
   Callback = function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/beginner-script/TSB_voidscript1.0/refs/heads/main/Made.by.No_1"))()
   end,
}) 

local mainTab = Window:CreateTab("맵", nil) -- title, Image
local mainSection = mainTab:CreateSection("")

local Button = mainTab:CreateButton({
   Name = "skybox(No_1)",
   Callback = function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/beginner-script/skybox/refs/heads/main/.lua"))()
   end,
}) 


local Tab = Window:CreateTab("플레이어", 4483362458)
local Section = Tab:CreateSection("이동 속도")

Tab:CreateSlider({
   Name = "속도 (No_1) ",
   Range = {16, 100},
   Increment = 1,
   Suffix = "속도",
   CurrentValue = 16,
   Flag = "SpeedSlider",
   Callback = function(Value)
      local player = game.Players.LocalPlayer
      local character = player.Character or player.CharacterAdded:Wait()
      local humanoid = character:WaitForChild("Humanoid")
      humanoid.WalkSpeed = Value
   end,
})

Tab:CreateSlider({
   Name = "점프파워 (No_1) ",
   Range = {50, 500}, 
   Increment = 10,
   Suffix = "점프력",
   CurrentValue = 50,
   Flag = "JumpSlider",
   Callback = function(Value)
      local player = game.Players.LocalPlayer
      local character = player.Character or player.CharacterAdded:Wait()
      local humanoid = character:WaitForChild("Humanoid")
      humanoid.UseJumpPower = true
      humanoid.JumpPower = Value
   end,
})

local Button = Tab:CreateButton({
   Name = "노클립 (No_1) ",
   Callback = function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/beginner-script/noclip/refs/heads/main/README.md"))()
   end,
}) 

local Button = Tab:CreateButton({
   Name = "anti afk (No_1)",
   Callback = function()
local Players = game:GetService("Players")
local lplr = Players.LocalPlayer

while not lplr do
    wait()
    lplr = Players.LocalPlayer
end

for _, v in getconnections(lplr.Idled) do
    v:Disable()
end
   end,
}) 

Tab:CreateButton({
   Name = "INF jump",
   Callback = function()
      loadstring(game:HttpGet("https://raw.githubusercontent.com/beginner-script/INF-jump/refs/heads/main/.lua"))()
   end,
})

Tab:CreateButton({
   Name = "클릭 텔포트 (No_1)",
   Callback = function()
      loadstring(game:HttpGet("https://raw.githubusercontent.com/beginner-script/click-tp/refs/heads/main/.lua%20made%20by%20No_1"))()
   end,
})

Tab:CreateButton({
   Name = "fly (No_1)",
   Callback = function()
      loadstring(game:HttpGet("https://raw.githubusercontent.com/beginner-script/fly/refs/heads/main/.lua"))()
   end,
})
