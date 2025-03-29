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

--[Rayfield Library]--
local Rayfield = loadstring(game:HttpGet('https://raw.githubusercontent.com/Emerson2-creator/Universal-GUI-Script/refs/heads/main/RealCode'))()

--[variaveis]--
local Players = game:GetService("Players")
local RunService = game:GetService("RunService")

local LocalPlayer = Players.LocalPlayer
local Character = LocalPlayer.Character or LocalPlayer.CharacterAdded:Wait()
local HumanoidRootPart = Character:WaitForChild("HumanoidRootPart")

-- Criando um window/configuração da GUI
local Window = Rayfield:CreateWindow({
    Name = "Strongest Hub",
    Icon = 0, -- Icon in Topbar. Can use Lucide Icons (string) or Roblox Image (number). 0 to use no icon (default).
    LoadingTitle = "The Strongest Battlegrounds",
    LoadingSubtitle = "By Emerson",
    Theme = "Amethyst", -- Check https://docs.sirius.menu/rayfield/configuration/themes

    DisableRayfieldPrompts = false,
    DisableBuildWarnings = false, -- Prevents Rayfield from warning when the script has a version mismatch with the interface

    ConfigurationSaving = {
        Enabled = false,
        FolderName = nil,    -- Create a custom folder for your hub/game
        FileName = "TSB hub" -- Name of the file where the configuration will be saved
    },

    Discord = {
        Enabled = false,         -- Prompt the user to join your Discord server if their executor supports it
        Invite = "noinvitelink", -- The Discord invite code, do not include discord.gg/. E.g. discord.gg/ABCD would be ABCD
        RememberJoins = true     -- Set this to false to make them join the discord every time they load it up
    },

    KeySystem = false, -- Set this to true to use our key system
    KeySettings = {
        Title = "Untitled",
        Subtitle = "Key System",
        Note = "No method of obtaining the key is provided", -- Use this to tell the user how to get a key
        FileName = "Key",                                    -- It is recommended to use something unique as other scripts using Rayfield may overwrite your key file
        SaveKey = true,                                      -- The user's key will be saved, but if you change the key, they will be unable to use your script
        GrabKeyFromSite = false,                             -- If this is true, set Key below to the RAW site you would like Rayfield to get the key from
        Key = { "Hello" }                                    -- List keys that will be accepted by the system, can be RAW file links (pastebin, github etc) or simple strings ("hello","key22")
    }
})

-- Criando uma Notificação que fala que o script foi carregado
Rayfield:Notify({
    Title = "The Strongest Battlegrounds",
    Content = "gui loaded, enjoy! :)",
    Duration = 6.5,
    Image = 4483362458,
})


--[TABS]--
local PlayerTab = Window:CreateTab("Player", 10747373176)--[Player tab: Local player settings]--
local CombatTab = Window:CreateTab("Combat", 10747373426)--[Exploits tab: Exploits settings]--
local Visual = Window:CreateTab("Visual", 10723346959)--[Visuals tab: Visual settings]--
local TeleportTab = Window:CreateTab("Teleport", 10734886004)--[Teleport tab: Teleport to places]--

--[Player Tab]--

-- Criando um label para as configurações básicas
local BasicSTlabel = PlayerTab:CreateLabel("Basic Settings", "user-cog")

-- Criando um slider para ajustar o WalkSpeed
local WalkSpeedSlider = PlayerTab:CreateSlider({
    Name = "WalkSpeed",
    Range = {16, 200}, -- Intervalo de valores do slider
    Increment = 1, -- Incremento do slider
    Suffix = "Speed",
    CurrentValue = 16,
    Flag = "WalkSpeed", -- Identificador único
    Callback = function(Value)
        Character.Humanoid.WalkSpeed = Value
    end
})

-- Criando um slider para ajustar o JumpPower
local JumpHeightSlider = PlayerTab:CreateSlider({
    Name = "JumpHeight",
    Range = {7.2, 200}, -- Intervalo de valores do slider
    Increment = 1, -- Incremento do slider
    Suffix = "Jump",
    CurrentValue = 7.2,
    Flag = "JumpHeight", -- Identificador único
    Callback = function(Value)
        Character.Humanoid.JumpHeight = Value
        --desativando o jump power
        Character.Humanoid.UseJumpPower = false
        -- se o valor do jump height for 7.2, reativando o jump power
        if Value == 7.2 then
            Character.Humanoid.UseJumpPower = true
        end
    end
})

-- Criando um slider para ajustar a gravidade
local GravitySlider = PlayerTab:CreateSlider({
    Name = "Gravity",
    Range = {0, 196.2}, -- Intervalo de valores do slider
    Increment = 1, -- Incremento do slider
    Suffix = "Gravity",
    CurrentValue = 196.2,
    Flag = "Gravity", -- Identificador único
    Callback = function(Value)
        workspace.Gravity = Value
    end
})

-- Criando uma function noclip
local Noclip = nil
local Clip = nil

local floatName = "YourFloatName" -- Replace "YourFloatName" with the actual name you intend to use

function noclip()
    Clip = false
    local function Nocl()
        if Clip == false and game.Players.LocalPlayer.Character ~= nil then
            for _,v in pairs(game.Players.LocalPlayer.Character:GetDescendants()) do
                if v:IsA('BasePart') and v.CanCollide and v.Name ~= floatName then
                    v.CanCollide = false
                end
            end
        end
        wait(0.21) -- basic optimization
    end
    Noclip = game:GetService('RunService').Stepped:Connect(Nocl)
end

function clip()
    if Noclip then Noclip:Disconnect() end
    Clip = true
end

-- Toggle to enable/disable noclip

local NoclipToggle = PlayerTab:CreateToggle({
    Name = "Noclip", -- Toggle name
    CurrentValue = false, -- Initial value
    Flag = "ToggleNoclip", -- Flag is the identifier for the config file
    Callback = function(Value)
        if Value then
            noclip()
        else
            clip()
        end
    end,
})

-- criando um slider para ajustar o FOV
local FOVSlider = PlayerTab:CreateSlider({
    Name = "FOV",
    Range = {70, 120}, -- Intervalo de valores do slider
    Increment = 1, -- Incremento do slider
    Suffix = "FOV",
    CurrentValue = 70,
    Flag = "FOV", -- Identificador único
    Callback = function(Value)
        workspace.CurrentCamera.FieldOfView = Value
    end
})

local CombatLabel = CombatTab:CreateLabel("Combat settings", "users")

-- Criando um toggle para No Dash Cooldown
local NoDashCooldownToggle = CombatTab:CreateToggle({
    Name = "No Dash Cooldown",
    CurrentValue = false,
    Flag = "NoDashCooldown", -- Identificador único
    Callback = function(Value)
        -- Criando um atributo booleano no Workspace
        workspace:SetAttribute("NoDashCooldown", Value) -- Cria um atributo chamado "IsSpeedEnabled" com o valor inicial false
    end
})

-- Criando um toggle para No fatigue
local NoFatigueToggle = CombatTab:CreateToggle({
    Name = "No Fatigue (When you have low health, you won’t slow down.)",
    CurrentValue = false,
    Flag = "NoFatigue", -- Identificador único
    Callback = function(Value)
        -- Criando um atributo booleano no Workspace
        workspace:SetAttribute("NoFatigue", Value) -- Cria um atributo chamado "IsSpeedEnabled" com o valor inicial false
    end
})

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

-- Criando o slider para ajustar o CFrame Speed
CombatTab:CreateSlider({
    Name = "CFrame Speed",
    Range = {0, 10}, -- Intervalo de valores do slider
    Increment = 0.1, -- Incremento do slider
    Suffix = "Speed",
    CurrentValue = Speed,
    Flag = "CFrameSpeed", -- Identificador único
    Callback = function(Value)
        Speed = Value
    end
})

-- Criando um botão de toggle para ativar/desativar o CFrame Speed
CombatTab:CreateToggle({
    Name = "CFrame toggle",
    CurrentValue = false,
    Flag = "ToggleCFrameSpeed", -- Identificador único
    Callback = function(Value)
        SpeedEnabled = Value
        if SpeedEnabled then
            SpeedControl()
        end
    end
})

-- Atualizando o Character e HumanoidRootPart quando o jogador resetar
LocalPlayer.CharacterAdded:Connect(function(NewCharacter)
    Character = NewCharacter
    HumanoidRootPart = Character:WaitForChild("HumanoidRootPart")
    if SpeedEnabled then
        SpeedControl()
    end
end)

-- Variáveis para controlar o estado do fling
local hiddenfling = false
local flingConnection

-- Função para ativar o fling
local function activateFling()
    hiddenfling = true
    local lp = Players.LocalPlayer
    local c, hrp, vel, movel = nil, nil, nil, 0.1

    -- Loop para aplicar o fling
    flingConnection = RunService.Heartbeat:Connect(function()
        c = lp.Character
        hrp = c and c:FindFirstChild("HumanoidRootPart")

        if hrp then
            vel = hrp.Velocity
            hrp.Velocity = vel * 10000 + Vector3.new(0, 10000, 0)
            RunService.RenderStepped:Wait()
            hrp.Velocity = vel
            RunService.Stepped:Wait()
            hrp.Velocity = vel + Vector3.new(0, movel, 0)
            movel = -movel
        end
    end)
end

-- Função para desativar o fling
local function deactivateFling()
    hiddenfling = false

    -- Desconectar o loop do fling
    if flingConnection then
        flingConnection:Disconnect()
        flingConnection = nil
    end

    -- Resetar a rotação e velocidade do HumanoidRootPart
    local lp = Players.LocalPlayer
    local c = lp.Character
    local hrp = c and c:FindFirstChild("HumanoidRootPart")

    if hrp then
        hrp.Velocity = Vector3.new(0, 0, 0) -- Para a velocidade
        hrp.RotVelocity = Vector3.new(0, 0, 0) -- Para a rotação
        hrp.CFrame = CFrame.new(hrp.Position) -- Remove qualquer rotação
    end
end

-- Criando o toggle no CombatTab
CombatTab:CreateToggle({
    Name = "Fling",
    CurrentValue = false,
    Flag = "ToggleFling", -- Identificador único
    Callback = function(Value)
        if Value then
            activateFling()
        else
            deactivateFling()
        end
    end
})

-- Variáveis para controlar o estado do teleport
local teleportEnabled = false
local teleportConnection

-- Função para ativar o teleport
local function activateTeleport()
    teleportEnabled = true

    -- Conectando o evento de tecla pressionada
    teleportConnection = game:GetService("UserInputService").InputBegan:Connect(function(input, gameProcessed)
        if gameProcessed then return end -- Ignorar se o jogo já processou a entrada
        if input.KeyCode == Enum.KeyCode.RightControl then
            local character = LocalPlayer.Character or LocalPlayer.CharacterAdded:Wait()
            local hrp = character:FindFirstChild("HumanoidRootPart")
            if hrp then
                hrp.CFrame = CFrame.new(132, 734, -8) -- Posição para teleportar
            end
        end
    end)

    -- Garantir que a funcionalidade persista após a morte
    LocalPlayer.CharacterAdded:Connect(function(newCharacter)
        if teleportEnabled then
            activateTeleport() -- Reativar o teleport ao reaparecer
        end
    end)
end

-- Função para desativar o teleport
local function deactivateTeleport()
    teleportEnabled = false

    -- Desconectar o evento de tecla pressionada
    if teleportConnection then
        teleportConnection:Disconnect()
        teleportConnection = nil
    end
end

-- Criando o toggle no CombatTab
CombatTab:CreateToggle({
    Name = "Right Ctrl Teleport",
    CurrentValue = false,
    Flag = "ToggleRightCtrlTeleport", -- Identificador único
    Callback = function(Value)
        if Value then
            activateTeleport()
        else
            deactivateTeleport()
        end
    end
})



--[Teleport Tab]--

-- Criando um botão para teleportar para o Atoms posicão 1079, 155, 23003
local TeleportToAtomicRoomButton = TeleportTab:CreateButton({
    Name = "Atomic Room",
    Callback = function()
        HumanoidRootPart.CFrame = CFrame.new(1079, 155, 23003)
    end
})

---- Criando um botão para teleportar para o Death counter room posição -92, 29, 20347
local TeleportToDeathCounterButton = TeleportTab:CreateButton({
    Name = "Death Counter Room",
    Callback = function()
        HumanoidRootPart.CFrame = CFrame.new(-92, 29, 20347)
    end
})

-- Criando um botão para teleportar para a proteção do void posição 0, -492, 0
local TeleportToVoidProtectionButton = TeleportTab:CreateButton({
    Name = "Void (Kill players but not you)",
    Callback = function()
        HumanoidRootPart.CFrame = CFrame.new(0, -492, 0)
    end
})

-- Criando um botão para teleportar para o baseplate posição 968, 20, 23088
local TeleportToBaseplateButton = TeleportTab:CreateButton({
    Name = "Baseplate",
    Callback = function()
        HumanoidRootPart.CFrame = CFrame.new(968, 20, 23088)
    end
})

-- Criando um botão para teleportar para o meio do mapa pisição 148, 441, 27
local TeleportToMiddleButton = TeleportTab:CreateButton({
    Name = "Middle of the map",
    Callback = function()
        HumanoidRootPart.CFrame = CFrame.new(148, 441, 27)
    end
})

-- Criando um botão para teleportar para a montanha 1 posição 266, 699, 458
local TeleportToMountain1Button = TeleportTab:CreateButton({
    Name = "Mountain 1",
    Callback = function()
        HumanoidRootPart.CFrame = CFrame.new(266, 699, 458)
    end
})

-- Criando um botão para teleportar para a montanha 2 posição 551, 630, -265
local TeleportToMountain2Button = TeleportTab:CreateButton({
    Name = "Mountain 2",
    Callback = function()
        HumanoidRootPart.CFrame = CFrame.new(551, 630, -265)
    end
})

-- Criando um botão para teleportar para a montanha 3 posição -107, 642, -328
local TeleportToMountain3Button = TeleportTab:CreateButton({
    Name = "Mountain 3",
    Callback = function()
        HumanoidRootPart.CFrame = CFrame.new(-107, 642, -328)
    end
})

-- Criando um botão para teleportar para armadilha 1 posição 378, 440, 448
local TeleportToTrap1Button = TeleportTab:CreateButton({
    Name = "Trap 1",
    Callback = function()
        HumanoidRootPart.CFrame = CFrame.new(378, 440, 448)
    end
})

-- Criando um botão para teleportar para armadilha 2 posição 287, 440, 481
local TeleportToTrap2Button = TeleportTab:CreateButton({
    Name = "Trap 2",
    Callback = function()
        HumanoidRootPart.CFrame = CFrame.new(287, 440, 481)
    end
})

-- Criando um botão para teleportar para um canto 1 do mapa posição -226, 440, -415
local TeleportToCornerButton = TeleportTab:CreateButton({
    Name = "Corner 1",
    Callback = function()
        HumanoidRootPart.CFrame = CFrame.new(-226, 440, -415)
    end
})

-- Criando um botão para teleportar para o canto 2 do mapa posição 526, 440, 481
local TeleportToCorner2Button = TeleportTab:CreateButton({
    Name = "Corner 2",
    Callback = function()
        HumanoidRootPart.CFrame = CFrame.new(526, 440, 481)
    end
})