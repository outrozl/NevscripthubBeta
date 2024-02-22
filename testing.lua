-- NEW UI TEST

local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/shlexware/Orion/main/source')))()

local function GetVer()
    -- Enlace que contiene solo el número de versión
    local versionURL = "https://raw.githubusercontent.com/outrozl/project/main/nevscripthub/scripts/tools/version.txt"
    
    -- Realizar una solicitud HTTP para obtener el contenido del enlace
    local response = game.HttpGet(versionURL)
    
    -- Verificar si la respuesta es válida
    if response then
        -- Extraer el número de versión del texto obtenido
        local NevVer = response:match("(%d+%.%d+%.%d+)")
        return NevVer
    else
        -- Manejar el caso en que la respuesta no sea válida
        return nil
    end
end

-- Obtener la versión
local NevVer = GetVer()

local best = {
    ["Hoho Hub V3"] = { URL = "https://raw.githubusercontent.com/acsu123/HOHO_H/main/Loading_UI", Method = 1 },
    ["Hoho Hub V2"] = { URL = "https://raw.githubusercontent.com/acsu123/HohoV2/main/OldScriptLoad", Method = 1 },
    ["Uranium X Hub"] = { URL = "https://raw.githubusercontent.com/Augustzyzx/UraniumMobile/main/UraniumKak.lua", Method = 1 },
    ["CFrame Hub"] = { URL = "https://raw.githubusercontent.com/CFrame3310/CFrameHub/main/BloxFruitV2.lua", Method = 1 },
    ["Neva Hub"] = { URL = "https://raw.githubusercontent.com/VEZ2/NEVAHUB/main/2'", Method = 1 },
    ["Makima Hub"] = { URL = "https://raw.githubusercontent.com/Piwwy0909/MakimaRemake/main/Cumback.Makima", Method = 1 },
    ["Sonic Hub"] = { URL = "https://raw.githubusercontent.com/NickelHUBB/SonicTuru/main/Protected-25.lua", Method = 1 },
    ["Zee Hub"] = { URL = "https://zKuzy.link/ZeeHub.lua", Method = 1 },
    ["Madox Hub"] = { URL = "https://raw.githubusercontent.com/Fiend1sh/FiendMain/main/MadoxHubKey", Method = 1 },
    ["2x Hub"] = { URL = "https://raw.githubusercontent.com/armch063/BF-1XLIIHUB-V3/main/README.md", Method = 1 },
    ["Unique Hub"] = { URL = "https://raw.githubusercontent.com/AkiraNus/UniquehubKak/main/FreeCr.Xenonhub", Method = 1 },
    ["Chiba Hub"] = { URL = "https://raw.githubusercontent.com/KindIhave/ChibaHubcomeback/main/Chibacomebackbeta.txt", Method = 1 },
    ["Zaque Hub"] = { URL = "https://raw.githubusercontent.com/Mei2232/ZaqueHub/main/Zaque%20Hub", Method = 1 },
    ["Glord Hub"] = { URL = "https://raw.githubusercontent.com/GGhostVN/GhostLord/main/BF", Method = 1 },
    ["Blck Hub"] = { URL = "https://raw.githubusercontent.com/1f0yt/community/main/BLCK", Method = 1 },
    ["Loli Hub"] = { URL = "https://raw.githubusercontent.com/1f0yt/community/main/neon", Method = 1 },
    ["Alucard Hub"] = { URL = "https://raw.githubusercontent.com/JJTChannel/Alucard_hub/main/main.lua", Method = 1 },
    ["Mukuru Hub"] = { URL = "https://raw.githubusercontent.com/xQuartyx/DonateMe/main/ScriptLoader", Method = 1 },
    ["Zen Hub"] = { URL = "https://raw.githubusercontent.com/Kaizenofficiall/ZenHub/main/Loader", Method = 1 },
    ["Ripper Hub"] = { URL = "https://raw.githubusercontent.com/xDestinyx/RipperHub/main/Loader.lua", Method = 1 },
    ["Ren Hub"] = { URL = "https://raw.githubusercontent.com/UltraStuff/scripts2/main/ren", Method = 1 },
    ["Void Hub"] = { URL = "https://raw.githubusercontent.com/Efe0626/VoidHub/main/Script", Method = 1 },
    ["BlackTrap Gui"] = { URL = "https://gitlab.com/Sky2836/test/-/raw/main/Script_All_In-One", Method = 1 },
}

local mobile = {
    ["Destiny Hub"] = { URL = "https://raw.githubusercontent.com/KudoCon/DestinyHub/main/DestinyKey", Method = 1 },
    ["Atomic Hub"] = { URL = "https://raw.githubusercontent.com/ArceusXHub/atomic-hub/main/atomic-hub.lua", Method = 1 },
    ["Zamex Hub"] = { URL = "https://raw.githubusercontent.com/Sixnumz/ZamexMobile/main/Zamex_Mobile.lua", Method = 1 },
    ["Saki Hub"] = { URL = "https://sharetext.me/raw/u3if6m3hgr", Method = 1 },
    ["Speed Hub X"] = { URL = "https://raw.githubusercontent.com/ahmadsgamer2/Script--Game/main/Script%20Game", Method = 1 },
    ["Uranium X Hub"] = { URL = "https://raw.githubusercontent.com/Augustzyzx/UraniumMobile/main/UraniumKak.lua", Method = 1 },
    ["CFrame Hub"] = { URL = "https://raw.githubusercontent.com/CFrame3310/CFrameHub/main/BloxFruit_Mobile.lua", Method = 1 },
}

local utilitys = {
    ["Fruit Finder and hopper"] = { URL = "https://raw.githubusercontent.com/NickelHUBB/SonicTuru/main/BetaFruitFinder", Method = 1 },
    ["Chest Farm and hopper"] = { URL = "https://raw.githubusercontent.com/NickelHUBB/SonicTuru/main/ChestFarmOp", Method = 1 },
}

local other = {
    ["Shadow Hub"] = { URL = "https://raw.githubusercontent.com/xPeachy/ShadowHub/main/BF", Method = 1 },
    ["Playback X Hub"] = { URL = "https://raw.githubusercontent.com/NeaPchX2/Playback-X-HUB/main/Protected.lua.txt", Method = 1 },
    ["Flare Hub"] = { URL = "https://raw.githubusercontent.com/1f0yt/community/master/flares", Method = 1 },
}

local function selectMethod(method, useRaw)
    if method == 1 then
        return useRaw and game.HttpGet or function(url) return game:HttpGet(url) end
    elseif method == 2 then
        return useRaw and game.HttpGetAsync or function(url) return game:HttpGetAsync(url) end
    elseif method == 3 then
        return useRaw and loadstring(game:HttpGet(url, true)) or function(url) return loadstring(game:HttpGet(url, true))() end
    end
end

local Window = OrionLib:MakeWindow({Name = "Nev | Script Hub | BF | "..NevVer, HidePremium = false, SaveConfig = false, IntroEnabled = true, IntroText = "Nev Studios", IntroIcon = "rbxassetid://6034227139", ConfigFolder = "NevTesting"})

-- Tabs

local Tab = Window:MakeTab({
	Name = "Settings",
	Icon = "rbxassetid://6031280894",
	PremiumOnly = false
})

local BestTab = Window:MakeTab({
	Name = "Scripts",
	Icon = "rbxassetid://7733749837",
	PremiumOnly = false
})

local MobileTab = Window:MakeTab({
	Name = "Mobile Scripts",
	Icon = "rbxassetid://6034989549",
	PremiumOnly = false
})

local UtilitysTab = Window:MakeTab{
    Name = "Utility Scripts",
    Icon = "rbxassetid://7733752575"
}

local OtherTab = Window:MakeTab{
    Name = "Other",
    Icon = "rbxassetid://7733924046"
}


-- Content

local Lang = Tab:AddSection({
	Name = "Select your language below / Selecciona tu idioma abajo /"
})

local Lang2 = Tab:AddSection({
	Name = "以下から言語を選択してください / Selecione o seu idioma abaixo"
})

Tab:AddDropdown({
	Name = "Select Lang here",
	Default = "English",
	Options = {"English", "Español", "Português", "日本語"},
	Callback = function(Value)
		if Value == "English" then
            -- nothing lolll
        elseif Value == "Español" then
            OrionLib:MakeNotification({
                Name = "Nev | Script Hub | "..NevVer,
                Content = "Espera estamos cambiando el idioma de la interfaz espere porfavor",
                Image = "rbxassetid://4483345998",
                Time = 4
            })
            wait(4)
            loadstring(game:HttpGet("https://raw.githubusercontent.com/outrozl/ProjectUIlib/main/testing.lua"))()
        elseif Value == "Português" then
            loadstring(game:HttpGet("https://raw.githubusercontent.com/outrozl/ProjectUIlib/main/testing.lua"))()
        elseif Value == "日本語" then
            loadstring(game:HttpGet("https://raw.githubusercontent.com/outrozl/ProjectUIlib/main/testing.lua"))()
        end
	end    
})

Tab:AddSlider({
	Name = "Velocity",
	Min = 0,
	Max = 500,
	Default = 16,
	Color = Color3.fromRGB(255,255,255),
	Increment = 1,
	ValueName = "Speed",
	Callback = function(Value)
		game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = Value
	end    
})

Tab:AddSlider({
	Name = "Jump Power",
	Min = 0,
	Max = 500,
	Default = 50,
	Color = Color3.fromRGB(255,255,255),
	Increment = 1,
	ValueName = "Power",
	Callback = function(Value)
        game.Players.LocalPlayer.Character.Humanoid.JumpPower = Value
	end    
})

-- SCRIPTS LOADERS

-- Función para ordenar alfabéticamente los scripts
local function alphabeticalOrder(a, b)
    -- Si la primera letra de 'a' es un número y la primera letra de 'b' no lo es, se elige la segunda letra de 'a'
    if tonumber(string.sub(a, 1, 1)) and not tonumber(string.sub(b, 1, 1)) then
        return string.sub(a, 2, 2):lower() < string.sub(b, 1, 1):lower()
    -- Si la primera letra de 'b' es un número y la primera letra de 'a' no lo es, se elige la primera letra de 'a'
    elseif tonumber(string.sub(b, 1, 1)) and not tonumber(string.sub(a, 1, 1)) then
        return string.sub(a, 1, 1):lower() < string.sub(b, 2, 2):lower()
    -- En otros casos, se compara normalmente la primera letra de cada nombre
    else
        return string.sub(a, 1, 1):lower() < string.sub(b, 1, 1):lower()
    end
end

-- Lista ordenada de nombres de scripts
local sortedScriptNames = {}
for scriptName, _ in pairs(best) do
    table.insert(sortedScriptNames, scriptName)
end
table.sort(sortedScriptNames, alphabeticalOrder)

-- Agregar botones para cada script almacenado, en orden alfabético
for _, scriptName in ipairs(sortedScriptNames) do
    local scriptData = best[scriptName]
    BestTab:AddButton{
        Name = scriptName,
        Description = nil,
        Callback = function() 
            local success, result = pcall(function()
                local loadFunction = selectMethod(scriptData.Method)
                return loadstring(loadFunction(scriptData.URL))()
            end)
            if not success then
                warn("There was an error loading the script: ", result)
                game:GetService("StarterGui"):SetCore("SendNotification",{
                    Title = "Nev | Script Hub",
                    Text = "There was an error loading the script: " .. result .. ".",
                    Icon = "rbxassetid://7734053281"
                })
            end
        end
    }
end

for _, scriptName in ipairs(sortedScriptNames) do
    local scriptData = best[scriptName]
    MobileTab:AddButton{
        Name = scriptName,
        Description = nil,
        Callback = function() 
            local success, result = pcall(function()
                local loadFunction = selectMethod(scriptData.Method)
                return loadstring(loadFunction(scriptData.URL))()
            end)
            if not success then
                warn("There was an error loading the script: ", result)
                game:GetService("StarterGui"):SetCore("SendNotification",{
                    Title = "Nev | Script Hub",
                    Text = "There was an error loading the script: " .. result .. ".",
                    Icon = "rbxassetid://7734053281"
                })
            end
        end
    }
end


-- UI Loaded notify

OrionLib:MakeNotification({
    Name = "Nev | Script Hub | "..NevVer,
    Content = "Script loaded successfully!",
    Image = "rbxassetid://4483345998",
    Time = 5
})
