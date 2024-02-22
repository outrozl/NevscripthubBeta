
-- NEW UI TEST

local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/shlexware/Orion/main/source')))()

local function GetVer()
    local versionURL = "https://raw.githubusercontent.com/outrozl/project/main/nevscripthub/scripts/tools/version.txt"
    
    local response = game.HttpGet(versionURL)
    
    if response then
        local NevVer = response:match("(%d+%.%d+%.%d+)")
        return NevVer
    else
        return nil
    end
end

-- Get Version
local NevVer = GetVer()

local Window = OrionLib:MakeWindow({Name = "Nev Script Hub | "..NevVer, HidePremium = false, SaveConfig = false, IntroEnabled = true, IntroText = "Nev Studios", IntroIcon = "rbxassetid://6034227139", ConfigFolder = "NevTesting"})

-- Tabs

local Tab = Window:MakeTab({
	Name = "Config",
	Icon = "rbxassetid://6031280894",
	PremiumOnly = false
})

-- Content


-- UI Loaded notify

OrionLib:MakeNotification({
    Name = "Nev | Script Hub | "..NevVer,
    Content = "Script loaded successfully!",
    Image = "rbxassetid://4483345998",
    Time = 5
})

-- Init

OrionLib:Init()
