local Nevlib_Nameselected = Instance.new("ScreenGui")
local LoadingScreen = Instance.new("Frame")
local UICorner = Instance.new("UICorner")
local LoadingIcon = Instance.new("ImageLabel")
local LoadingLibNameSelected = Instance.new("TextLabel")
local Powered = Instance.new("TextLabel")

--Properties:

Nevlib_Nameselected.Name = "Nevlib_Nameselected"
Nevlib_Nameselected.Parent = game.Players.LocalPlayer:FindFirstChild("PlayerGui")
Nevlib_Nameselected.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

LoadingScreen.Name = "LoadingScreen"
LoadingScreen.Parent = Nevlib_Nameselected
LoadingScreen.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
LoadingScreen.BorderColor3 = Color3.fromRGB(0, 0, 0)
LoadingScreen.BorderSizePixel = 0
LoadingScreen.Position = UDim2.new(0.395466387, 0, 0.303398073, 0)
LoadingScreen.Size = UDim2.new(0, 255, 0, 225)

UICorner.Parent = LoadingScreen

LoadingIcon.Name = "LoadingIcon"
LoadingIcon.Parent = LoadingScreen
LoadingIcon.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
LoadingIcon.BackgroundTransparency = 1.000
LoadingIcon.BorderColor3 = Color3.fromRGB(0, 0, 0)
LoadingIcon.BorderSizePixel = 0
LoadingIcon.Position = UDim2.new(0.305882365, 0, 0.275555551, 0)
LoadingIcon.Size = UDim2.new(0, 100, 0, 100)
LoadingIcon.Image = "rbxassetid://14976970435"
LoadingIcon.ImageRectOffset = Vector2.new(146, 724)
LoadingIcon.ImageRectSize = Vector2.new(144, 144)

LoadingLibNameSelected.Name = "LoadingLibNameSelected"
LoadingLibNameSelected.Parent = LoadingScreen
LoadingLibNameSelected.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
LoadingLibNameSelected.BackgroundTransparency = 1.000
LoadingLibNameSelected.BorderColor3 = Color3.fromRGB(0, 0, 0)
LoadingLibNameSelected.BorderSizePixel = 0
LoadingLibNameSelected.Size = UDim2.new(0, 255, 0, 50)
LoadingLibNameSelected.Font = Enum.Font.Ubuntu
LoadingLibNameSelected.Text = "Nev Library"
LoadingLibNameSelected.TextColor3 = Color3.fromRGB(255, 255, 255)
LoadingLibNameSelected.TextSize = 30.000
LoadingLibNameSelected.TextWrapped = true

Powered.Name = "Powered"
Powered.Parent = LoadingScreen
Powered.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Powered.BackgroundTransparency = 1.000
Powered.BorderColor3 = Color3.fromRGB(0, 0, 0)
Powered.BorderSizePixel = 0
Powered.Position = UDim2.new(0, 0, 0.879999995, 0)
Powered.Size = UDim2.new(0, 255, 0, 27)
Powered.Font = Enum.Font.SourceSans
Powered.Text = "Powered by: Nev Library"
Powered.TextColor3 = Color3.fromRGB(255, 255, 255)
Powered.TextSize = 20.000
Powered.TextWrapped = true
