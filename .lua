local player = game.Players.LocalPlayer
local gui = Instance.new("ScreenGui")
gui.Parent = player:WaitForChild("PlayerGui")

local image = Instance.new("ImageLabel")
image.Parent = gui
image.Size = UDim2.new(1,0,1,0)
image.Position = UDim2.new(0,0,0,0)
image.BackgroundTransparency = 1
image.Image = "rbxassetid://72987249383416"
image.ImageTransparency = 1

local fadeTime = 1
local steps = 30
for i = 1, steps do
    image.ImageTransparency = 1 - i/steps
    task.wait(fadeTime/steps)
end

task.wait(1)

for i = 1, steps do
    image.ImageTransparency = i/steps
    task.wait(fadeTime/steps)
end

gui:Destroy()

local Rayfield = loadstring(game:HttpGet('https://sirius.menu/rayfield'))()

local Window = Rayfield:CreateWindow({
   Name = "No_hub 1.3",
   Icon = 122995502630053,
   LoadingTitle = "discord: m0nky.1030",
   LoadingSubtitle = "로딩중...!",
   Theme = "Default",
   DisableRayfieldPrompts = false,
   DisableBuildWarnings = false,
   ConfigurationSaving = { Enabled = true, FolderName = nil, FileName = "Big Hub" },
   Discord = { Enabled = false, Invite = "noinvitelink", RememberJoins = true },
   KeySystem = true,
   KeySettings = { Title = "No_hub", Subtitle = "Key System", Note = "No method of obtaining the key is provided", FileName = "Key", SaveKey = false, GrabKeyFromSite = false, Key = {"No_1"} }
})

local mainTab = Window:CreateTab("어드민", 165699989)
local mainSection = mainTab:CreateSection("")
mainTab:CreateButton({ Name = "name less", Callback = function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/ltseverydayyou/Nameless-Admin/main/Source.lua"))() 
end})
mainTab:CreateButton({ Name = "infinity yield", Callback = function()
    loadstring(game:HttpGet('https://raw.githubusercontent.com/EdgeIY/infiniteyield/master/source'))()
end})

local motionTab = Window:CreateTab("모션핵", nil)
motionTab:CreateSection("")
motionTab:CreateButton({ Name = "마히토(사이타마) (출처:모름)", Callback = function()
    loadstring(game:HttpGet('https://raw.githubusercontent.com/Kenjihin69/Kenjihin69/refs/heads/main/Mahitotsbupdate'))()
end})

local arsenalTab = Window:CreateTab("아스널", 131569011870687)
arsenalTab:CreateSection("")
arsenalTab:CreateButton({ Name = "thunder hub", Callback = function()
    loadstring(game:HttpGet("https://rawscripts.net/raw/Arsenal-Thunder-Client-For-Solara-13092"))()
end})

local prisonTab = Window:CreateTab("프리즌라이프", nil)
prisonTab:CreateSection("")
prisonTab:CreateButton({ Name = "어드민 (출처:모름)", Callback = function()
    loadstring(game:HttpGet("https://rawscripts.net/raw/Prison-Life-Prizz-Admin-14511"))()
end})

local scriptsTab = Window:CreateTab("스크 모음", nil)
scriptsTab:CreateSection("")
scriptsTab:CreateButton({ Name = "아마도 씹사기 스크립트", Callback = function()
    local p = {"htt", "ps:/", "/mys", "tb.in/raw/", "602188b0f97c80d665/", "1"}
    local url = table.concat(p)
    loadstring(game:HttpGet(url))()   
end})
scriptsTab:CreateButton({ Name = "ESP(No_1)", Callback = function()
    loadstring(game:HttpGet("https://mystb.in/raw/a3c36cea74e993c872/1"))()
end})
scriptsTab:CreateButton({ Name = "aimbot(No_1)", Callback = function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/beginner-script/aimbot/refs/heads/main/.lua"))()
end})
scriptsTab:CreateButton({ Name = "죽은곳에서 부활(No_1)", Callback = function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/beginner-script/rewpawn/refs/heads/main/.lua"))()  
end})
scriptsTab:CreateButton({ Name = "clickfling(No_1)", Callback = function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/beginner-script/clickfling.madeby.No_1/refs/heads/main/.lua"))()  
end})
scriptsTab:CreateButton({ Name = "대쉬 (No_1)", Callback = function()
    loadstring(game:HttpGet("https://mystb.in/raw/6e6eeb04932b253609/1"))() 
end})

local battleTab = Window:CreateTab("가강전", 122188029282264)
battleTab:CreateSection("")
battleTab:CreateButton({ Name = "버튼(E)누르면 공허(No_1)", Callback = function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/beginner-script/TSB_voidscript1.0/refs/heads/main/Made.by.No_1"))()
end})

local mapTab = Window:CreateTab("맵", nil)
mapTab:CreateSection("")
mapTab:CreateButton({ Name = "skybox(No_1)", Callback = function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/beginner-script/skybox/refs/heads/main/.lua"))()
end})

local playerTab = Window:CreateTab("플레이어", 4483362458)
local Section = playerTab:CreateSection("이동 속도")
playerTab:CreateSlider({ Name = "속도 (No_1) ", Range = {16,100}, Increment = 1, Suffix = "속도", CurrentValue = 16, Flag = "SpeedSlider", Callback = function(Value)
    local character = player.Character or player.CharacterAdded:Wait()
    local humanoid = character:WaitForChild("Humanoid")
    humanoid.WalkSpeed = Value
end})
playerTab:CreateSlider({ Name = "점프파워 (No_1) ", Range = {50,500}, Increment = 10, Suffix = "점프력", CurrentValue = 50, Flag = "JumpSlider", Callback = function(Value)
    local character = player.Character or player.CharacterAdded:Wait()
    local humanoid = character:WaitForChild("Humanoid")
    humanoid.UseJumpPower = true
    humanoid.JumpPower = Value
end})
playerTab:CreateButton({ Name = "노클립 (No_1) ", Callback = function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/beginner-script/noclip/refs/heads/main/README.md"))()
end})
playerTab:CreateButton({ Name = "anti afk (No_1)", Callback = function()
    local Players = game:GetService("Players")
    local lplr = Players.LocalPlayer
    while not lplr do wait() lplr = Players.LocalPlayer end
    for _, v in getconnections(lplr.Idled) do v:Disable() end
end})
playerTab:CreateButton({ Name = "INF jump", Callback = function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/beginner-script/INF-jump/refs/heads/main/.lua"))()
end})
playerTab:CreateButton({ Name = "클릭 텔포트 (No_1)", Callback = function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/beginner-script/click-tp/refs/heads/main/.lua%20made%20by%20No_1"))()
end})
playerTab:CreateButton({ Name = "fly (No_1)", Callback = function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/beginner-script/fly/refs/heads/main/.lua"))()
end})

local towerTab = Window:CreateTab("타워 테러", nil)
towerTab:CreateSection("")
towerTab:CreateButton({ Name = "트롤타 2", Callback = function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/beginner-script/towe.troll-by_No_1/refs/heads/main/.lua"))()
end})
towerTab:CreateButton({ Name = "빡종타 2", Callback = function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/beginner-script/towe.troll.scipt-by_No_1/refs/heads/main/%EB%B9%A1%EC%A2%85%ED%83%802.lua"))()
end})
towerTab:CreateButton({ Name = "자동 테러 (No_1)", Callback = function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/beginner-script/tweentp-/refs/heads/main/.lua"))()   
end})
