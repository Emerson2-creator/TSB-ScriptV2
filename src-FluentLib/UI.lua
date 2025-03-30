
-- Fluent UI Library
local Fluent = loadstring(game:HttpGet("https://github.com/dawid-scripts/Fluent/releases/latest/download/main.lua"))()
-- Config do UI
local Options = Fluent.Options

-- Crianção do UI
local Window = Fluent:CreateWindow({
    Title = "Strongest Hub " .. Fluent.Version,
    SubTitle = "by Emerson",
    TabWidth = 160,
    Size = UDim2.fromOffset(580, 460),
    Acrylic = true,                        -- The blur may be detectable, setting this to false disables blur entirely
    Theme = "Dark",
    MinimizeKey = Enum.KeyCode.LeftControl -- Used when theres no MinimizeKeybind
})

--[Tabs]--

local Tabs = {
    Player = Window:AddTab({ Title = "Player", Icon = "user-cog" }),
    Teleport = Window:AddTab({ Title = "Teleport", Icon = "map-pin" }),
    Scripts = Window:AddTab({ Title = "Scripts", Icon = "file-code" }),
    Settings = Window:AddTab({ Title = "Settings", Icon = "settings" })
}

--[Config do UI]--
local SaveManager = loadstring(game:HttpGet("https://raw.githubusercontent.com/dawid-scripts/Fluent/master/Addons/SaveManager.lua"))()
local InterfaceManager = loadstring(game:HttpGet("https://raw.githubusercontent.com/dawid-scripts/Fluent/master/Addons/InterfaceManager.lua"))()

SaveManager:SetLibrary(Fluent)
InterfaceManager:SetLibrary(Fluent)

InterfaceManager:BuildInterfaceSection(Tabs.Settings)
SaveManager:BuildConfigSection(Tabs.Settings)

--[Variaveis]--
local Player = game.Players.LocalPlayer
local Character = Player.Character or Player.CharacterAdded:Wait()
local humanoid = Character:WaitForChild("Humanoid")
local RunService = game:GetService("RunService")
local HumanoidRootPart = Character:WaitForChild("HumanoidRootPart")

--[Player]--

-- Cframe Speed
-- Cframe speed variables
local Speed = 1
local SpeedEnabled = false

--- Função para controlar o CFrame Speed
local function SpeedControl()
    while SpeedEnabled do
        RunService.RenderStepped:Wait()
        if Character and Character:FindFirstChild("HumanoidRootPart") then
            local MoveDirection = Character.Humanoid.MoveDirection
            if MoveDirection.Magnitude > 0 then
                Character.HumanoidRootPart.CFrame = Character.HumanoidRootPart.CFrame + MoveDirection * Speed / 10
            end
        end
    end
end

-- Cframe Speed Slider
Tabs.Player:AddSlider("Slider",
    {
        Title = "CFrame Speed",
        Description = "Change your CFrame Speed",
        Default = 1,
        Min = 0.1,
        Max = 30,
        Rounding = 0.1,
        Callback = function(Value)
            Speed = Value
        end
    })

-- Cframe Speed Toggle
Tabs.Player:AddToggle("Toggle",
    {
        Title = "CFrame Speed",
        Description = "Enable/Disable CFrame Speed",
        Default = false,
        Callback = function(Value)
            SpeedEnabled = Value
            if SpeedEnabled then
                SpeedControl()
            end
        end
    })

-- Atualizando o Character e HumanoidRootPart quando o jogador resetar
Player.CharacterAdded:Connect(function(NewCharacter)
    Character = NewCharacter
    
    if SpeedEnabled then
        SpeedControl()
    end
end)

-- Jump Height Slider
Tabs.Player:AddSlider("Slider",
    {
        Title = "Jump Height",
        Description = "Change your Jump Height",
        Default = 7.2,
        Min = 7.2,
        Max = 200,
        Rounding = 1,
        Callback = function(Value)
            -- Desativando o JumpPower
            Character.Humanoid.UseJumpPower = false
            -- Definindo o JumpHeight
            Character.Humanoid.JumpHeight = Value
            if Value == 7.2 then
                Character.Humanoid.UseJumpPower = true
            end
        end
})

-- Gravity Slider
Tabs.Player:AddSlider("Slider",
    {
        Title = "Gravity",
        Description = "Change the Gravity",
        Default = 196.2,
        Min = 0,
        Max = 196.2,
        Rounding = 1,
        Callback = function(Value)
            -- Definindo a Gravidade
            workspace.Gravity = Value
        end
})

-- Fov Slider
Tabs.Player:AddSlider("Slider",
    {
        Title = "FOV",
        Description = "Change the FOV",
        Default = 70,
        Min = 70,
        Max = 120,
        Rounding = 1,
        Callback = function(Value)
            -- Definindo o FOV
            workspace.CurrentCamera.FieldOfView = Value
        end
})

-- No Dash Cooldown Toggle
Tabs.Player:AddToggle("Toggle2",
{
        Title = "No Dash Cooldown",
        Description = "Remove the Dash Cooldown, work only in pc",
        Default = false,
        Callback = function(Value)
            -- Criando o atributo NoDashCooldown
            workspace:SetAttribute("NoDashCooldown", Value)
            workspace:SetAttribute("NoCooldown", Value)
            workspace:SetAttribute("NoStun", Value)
        end
})


-- No Fatigue Toggle
Tabs.Player:AddToggle("Toggle3",
{
        Title = "No Fatigue",
        Description = "When you have low health, you will not be slow",
        Default = false,
        Callback = function(Value)
            -- Criando o atributo NoFatigue
            workspace:SetAttribute("NoFatigue", Value)
        end
})

--[Teleport]--

Tabs.Teleport:AddButton({
    Title = "Teleport to Spawn",
    Description = "Teleport to Spawn",
    Callback = function()
        HumanoidRootPart.CFrame = CFrame.new(1079, 155, 23003)
    end
})

--[Scripts]--

-- Infinite Yield
Tabs.Scripts:AddButton({
    Title = "Infinite Yield",
    Description = "Infinite Yield Admin Script",
    Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/EdgeIY/infiniteyield/master/source"))();
    end
})

-- Nameless
Tabs.Scripts:AddButton({
    Title = "Nameless Admin",
    Description = "Nameless Admin Script",
    Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/FilteringEnabled/NamelessAdmin/main/Source"))();
    end
})

-- Dex Explorer
Tabs.Scripts:AddButton({
    Title = "Dex Explorer",
    Description = "Dex Explorer Script",
    Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/infyiff/backup/main/dex.lua"))();
    end
})