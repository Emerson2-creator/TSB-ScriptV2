-- Notificação de que fala para usar o script em uma alt account
-- i higly recommend using this script in an alt account, because it is a free script and it can be detected by the game, so use it at your own risk.
local StarterGui = game:GetService("StarterGui")

-- Função para enviar uma notificação
local function sendNotification(title, text, duration)
    StarterGui:SetCore("SendNotification", {
        Title = title; -- Título da notificação
        Text = text; -- Texto da notificação
        Duration = duration or 5; -- Duração da notificação (em segundos)
    })
end

-- Exemplo de uso
sendNotification("Strongest Hub", "I highly using this script in an alt account \n be careful.", 5)


-- Função para criar uma parte gigante antes do void
local function createVoidProtection()
    -- Configurações da parte
    local partSize = Vector3.new(10000, 10, 10000) -- Aumentando a espessura (Y = 10)
    local partPosition = Vector3.new(0, -500, 0) -- Posição da parte (ajuste a altura conforme necessário)
    local partTransparency = 0.5 -- Transparência da parte
    local partColor = Color3.fromRGB(255, 0, 0) -- Cor da parte (vermelho claro)

    -- Criando a parte
    local voidPart = Instance.new("Part")
    voidPart.Size = partSize
    voidPart.Position = partPosition
    voidPart.Anchored = true -- A parte não se move
    voidPart.CanCollide = true -- Jogadores podem colidir com a parte
    voidPart.Transparency = partTransparency
    voidPart.Color = partColor
    voidPart.Name = "VoidProtection"
    voidPart.Parent = workspace -- Adiciona a parte ao Workspace
end

-- Chamando a função para criar a proteção do void
createVoidProtection()

-- Fluent UI Library
local Fluent = loadstring(game:HttpGet("https://github.com/dawid-scripts/Fluent/releases/latest/download/main.lua"))()
-- Config do UI
local Options = Fluent.Options

-- Crianção do UI
local Window = Fluent:CreateWindow({
    Title = "Strongest Hub (BETA)" .. Fluent.Version,
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
    Visuals = Window:AddTab({ Title = "Visuals", Icon = "eye" }),
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
        Description = "Remove the Dash Cooldown",
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

-- Fling

-- Variáveis para controlar o estado do fling
local flingActive = false
local flingConnection

-- Função para ativar o fling
local function activateFling()
    flingActive = true
    local Player = game.Players.LocalPlayer
    local Character = Player.Character or Player.CharacterAdded:Wait()
    local HumanoidRootPart = Character:FindFirstChild("HumanoidRootPart")
    local velocity, moveDirection = nil, 0.1

    -- Loop para aplicar o fling
    flingConnection = game:GetService("RunService").Heartbeat:Connect(function()
        if not Character or not HumanoidRootPart then
            Character = Player.Character
            HumanoidRootPart = Character and Character:FindFirstChild("HumanoidRootPart")
        end

        if HumanoidRootPart then
            velocity = HumanoidRootPart.Velocity
            HumanoidRootPart.Velocity = velocity * 10000 + Vector3.new(0, 10000, 0)
            game:GetService("RunService").RenderStepped:Wait()
            HumanoidRootPart.Velocity = velocity
            game:GetService("RunService").Stepped:Wait()
            HumanoidRootPart.Velocity = velocity + Vector3.new(0, moveDirection, 0)
            moveDirection = -moveDirection
        end
    end)
end

-- Função para desativar o fling
local function deactivateFling()
    flingActive = false

    -- Desconectar o loop do fling
    if flingConnection then
        flingConnection:Disconnect()
        flingConnection = nil
    end

    -- Resetar a rotação e velocidade do HumanoidRootPart
    local Player = game.Players.LocalPlayer
    local Character = Player.Character
    local HumanoidRootPart = Character and Character:FindFirstChild("HumanoidRootPart")

    if HumanoidRootPart then
        HumanoidRootPart.Velocity = Vector3.new(0, 0, 0) -- Para a velocidade
        HumanoidRootPart.RotVelocity = Vector3.new(0, 0, 0) -- Para a rotação
        HumanoidRootPart.CFrame = CFrame.new(HumanoidRootPart.Position) -- Remove qualquer rotação
    end
end

-- Fling Toggle
Tabs.Player:AddToggle("ToggleFling", {
    Title = "Fling",
    Description = "Fling other players, but they need to touch you",
    Default = false,
    Callback = function(Value)
        if Value then
            activateFling()
        else
            deactivateFling()
        end
    end
})

-- Cframe Speed
-- Cframe speed variables
local Speed = 0.5
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

-- Cframe Speed Input
Tabs.Player:AddInput("Input", {
    Title = "CFrame Speed",
    Description = "Set your CFrame Speed",
    Default = tostring(Speed), -- Converte o valor inicial para string
    Placeholder = "Enter Speed (don't put to much)",
    Numeric = true, -- Permite apenas números
    Finished = true, -- Chama o callback apenas ao pressionar Enter
    Callback = function(Value)
        local numericValue = tonumber(Value) -- Converte o valor para número
        if numericValue then
            Speed = numericValue -- Atualiza a velocidade
        else
            print("Invalid input: Please enter a numeric value.")
        end
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

--[Teleport]--

-- Teleport to Player
-- Variável para armazenar o nome do jogador selecionado
local selectedPlayerName = nil

-- Função para atualizar a lista de jogadores dinamicamente
local function updatePlayerList()
    local playerList = {}
    for _, player in pairs(game.Players:GetPlayers()) do
        table.insert(playerList, player.Name)
    end
    return playerList
end

-- Input para escrever o nome do jogador
Tabs.Teleport:AddInput("PlayerInput", {
    Title = "Teleport to Player",
    Description = "put the player name",
    Default = "", -- Valor inicial vazio
    Placeholder = "Enter player name",
    Numeric = false, -- Permite texto
    Finished = true, -- Chama o callback apenas ao pressionar Enter
    Callback = function(Value)
        selectedPlayerName = Value -- Atualiza o nome do jogador selecionado
        print("Selected player:", selectedPlayerName)
    end
})

-- Atualizar a lista de jogadores dinamicamente quando um jogador entra ou sai
game.Players.PlayerAdded:Connect(function()
    print("Player joined. Updating player list...")
    updatePlayerList()
end)

game.Players.PlayerRemoving:Connect(function()
    print("Player left. Updating player list...")
    updatePlayerList()
end)

-- Botão para teleportar para o jogador selecionado
Tabs.Teleport:AddButton({
    Title = "Teleport to Player",
    Description = "Teleport to the entered player",
    Callback = function()
        if selectedPlayerName then
            local targetPlayer = game.Players:FindFirstChild(selectedPlayerName)
            if targetPlayer and targetPlayer.Character and targetPlayer.Character:FindFirstChild("HumanoidRootPart") then
                HumanoidRootPart.CFrame = targetPlayer.Character.HumanoidRootPart.CFrame
                print("Teleported to", selectedPlayerName)
            else
                print("Player not found or not valid!")
            end
        else
            print("No player name entered!")
        end
    end
})

-- Atualizando o Character e HumanoidRootPart quando o jogador resetar
Player.CharacterAdded:Connect(function(NewCharacter)
    Character = NewCharacter
    HumanoidRootPart = Character:WaitForChild("HumanoidRootPart")
end)

-- Teleport to Atomic Room
Tabs.Teleport:AddButton({
    Title = "Atomic Room",
    Description = "Teleport to Atomic Room",
    Callback = function()
        if HumanoidRootPart then
            HumanoidRootPart.CFrame = CFrame.new(1079, 155, 23003)
        end
        
    end
})

-- Teleport to Death Counter room -92, 29, 20347
Tabs.Teleport:AddButton({
    Title = "Death Counter Room",
    Description = "Teleport to Death Counter Room",
    Callback = function()
        if HumanoidRootPart then
            HumanoidRootPart.CFrame = CFrame.new(-92, 29, 20347)
        end
    end
})

-- Teleport to Void 0, -492, 0
Tabs.Teleport:AddButton({
    Title = "Void",
    Description = "kill players but not you",
    Callback = function()
        if HumanoidRootPart then
            HumanoidRootPart.CFrame = CFrame.new(0, -492, 0)
        end
    end
})

-- Teleport to Baseplate 968, 20, 23088
Tabs.Teleport:AddButton({
    Title = "Baseplate",
    Description = "Teleport to Baseplate",
    Callback = function()
        if HumanoidRootPart then
            HumanoidRootPart.CFrame = CFrame.new(968, 20, 23088)
        end
    end
})

-- Teleport to middle of map 148, 441, 27
Tabs.Teleport:AddButton({
    Title = "Middle of Map",
    Description = "Teleport to middle of map",
    Callback = function()
        if HumanoidRootPart then
            HumanoidRootPart.CFrame = CFrame.new(148, 441, 27)
        end
    end
})

-- Teleport to moutain 1 266, 699, 458
Tabs.Teleport:AddButton({
    Title = "Mountain 1",
    Description = "Teleport to Mountain 1",
    Callback = function()
       if HumanoidRootPart then
            HumanoidRootPart.CFrame = CFrame.new(266, 699, 458)
        end
    end
})

-- Teleport to moutain 2 551, 630, -265
Tabs.Teleport:AddButton({
    Title = "Mountain 2",
    Description = "Teleport to Mountain 2",
    Callback = function()
        if HumanoidRootPart then
            HumanoidRootPart.CFrame = CFrame.new(551, 630, -265)
        end
    end
})

-- Teleport to moutain 3 -107, 642, -328
Tabs.Teleport:AddButton({
    Title = "Mountain 3",
    Description = "Teleport to Mountain 3",
    Callback = function()
        if HumanoidRootPart then
            HumanoidRootPart.CFrame = CFrame.new(-107, 642, -328)
        end
    end
})

-- Teleport to trap 1 378, 440, 448
Tabs.Teleport:AddButton({
    Title = "Trap 1",
    Description = "Teleport to Trap 1",
    Callback = function()
        HumanoidRootPart.CFrame = CFrame.new(378, 440, 448)
    end
})

-- Teleport to trap 2 287, 440, 481
Tabs.Teleport:AddButton({
    Title = "Trap 2",
    Description = "Teleport to Trap 2",
    Callback = function()
        if HumanoidRootPart then
            HumanoidRootPart.CFrame = CFrame.new(287, 440, 481)
        end
    end
})

-- Teleport to corner 1 -226, 440, -415 
Tabs.Teleport:AddButton({
    Title = "Corner 1",
    Description = "Teleport to Corner 1",
    Callback = function()
        if HumanoidRootPart then
            HumanoidRootPart.CFrame = CFrame.new(-226, 440, -415)
        end
    end
})

-- Teleport to corner 2 526, 440, 481
Tabs.Teleport:AddButton({
    Title = "Corner 2",
    Description = "Teleport to Corner 2",
    Callback = function()
        if HumanoidRootPart then
            HumanoidRootPart.CFrame = CFrame.new(526, 440, 481)
        end
    end
})

--[Visuals]--

-- Players Info Script

-- botão para carrgar o script de players info
Tabs.Visuals:AddButton({
    Title = "Players Info",
    Description = "Show players Ping, Ultimate, Device, and Character",
    Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/Emerson2-creator/Scripts-Roblox/refs/heads/main/Scripts/InfoPlayerTab.lua"))()
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