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
