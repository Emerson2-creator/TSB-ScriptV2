-- Este Script está em BETA, então pode conter bugs
-- importando a biblioteca de GUI atraves de um loadstring
-- O script estara em ingles, pois a biblioteca de GUI esta em ingles
-- Este gui é um hack para o jogo The Strongest Battlegrounds
-- Executor usado: AtlantisV3
-- este gui é para o Roblox escrito com lua/luau
local Rayfield = loadstring(game:HttpGet(
    'https://raw.githubusercontent.com/Emerson2-creator/Universal-GUI-Script/refs/heads/main/RealCode'))()

--[Variaveis]--
local Players = game:GetService("Players")
local RunService = game:GetService("RunService")

local LocalPlayer = Players.LocalPlayer
local Character = LocalPlayer.Character or LocalPlayer.CharacterAdded:Wait()
local HumanoidRootPart = Character:WaitForChild("HumanoidRootPart")

-- Cframe Speed Variables
local Speed = 50
local SpeedEnabled = false

-- Criando um window/configuração da GUI

local Window = Rayfield:CreateWindow({
    Name = "The Strongest Battlegrounds Hub",
    Icon = 0, -- Icon in Topbar. Can use Lucide Icons (string) or Roblox Image (number). 0 to use no icon (default).
    LoadingTitle = "The Strongest Battlegrounds",
    LoadingSubtitle = "By Emerson",
    Theme = "DarkBlue", -- Check https://docs.sirius.menu/rayfield/configuration/themes

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


-- Explicação do codigo inteiro.
-- Esse codigo está cortado, mas o codigo mãe esta no Gui.lua


--[[

    -- A players tab é uma tab que vai conter configurações que vai permitir ao usuario do gui ver informações sobre os players, por enquanto esta tab esta em beta, erros podem ocorrer principalmente com o Show Info About Players.

    -- Players tab conteudo:
    [
    -- Show Info About Players toggle vai mostrar informações sobre os players, como perssonagem, ult, etc.
    -- Color Picker vai permitir ao usuario alterar a cor do texto das informações dos players
    -- ESP toggle vai mostrar um esp nos players
    -- Tracers toggle vai mostrar um tracer nos players
    -- Tracer Color Picker vai permitir ao usuario alterar a cor do tracer
    -- ESP Color Picker vai permitir ao usuario alterar a cor do esp

    -- Em breve vai ter mais configurações, mas por enquanto é isso.
    ]

]] --


-- Criando uma nova Tab. Tab players, essa tab vai mostrar informações sobre os player, como perssonagem, ult, etc.

local SpeedTab = Window:CreateTab("Player", 10747373176) -- Title, Image

--[Criando um slider para alterar o walkspeed]--
local WalkSpeedSlider = SpeedTab:CreateSlider({
    Name = "Walk Speed",
    Range = { 16, 150 },
    Increment = 10,
    Suffix = "WalkSdeed",
    CurrentValue = 10,
    Flag = "WalkSpeed", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
    Callback = function(Value)
        Humanoid.WalkSpeed = Value
    end,
})

--[Criando um slider para alterar o CFRAME Walk speed]--

-- Função para controlar o CFrame Speed
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
SpeedTab:CreateSlider({
    Name = "CFrame Walk Speed",
    Range = { 1, 10 }, -- Intervalo de valores do slider
    Increment = 1,     -- Incremento do slider
    Suffix = "Speed",
    CurrentValue = Speed,
    Flag = "CFrameSpeed", -- Identificador único
    Callback = function(Value)
        Speed = Value
    end
})

-- Criando um botão de toggle para ativar/desativar o CFrame Speed
SpeedTab:CreateToggle({
    Name = "Enable CFrame Speed",
    CurrentValue = false,
    Flag = "EnableCFrameSpeed", -- Identificador único
    Callback = function(Value)
        SpeedEnabled = Value
        if SpeedEnabled then
            SpeedControl()
        end
    end
})

-- Criando um dropdown para selecionar o método de alteração de velocidade
SpeedTab:CreateDropdown({
    Name = "Speed Method",
    Options = { "WalkSpeed", "CFrame" },
    CurrentOption = { "WalkSpeed" },
    MultipleOptions = false,
    Flag = "SpeedMethod",                 -- Identificador único
    Callback = function(Options)
        local selectedMethod = Options[1] -- Obtém a opção selecionada
        if selectedMethod == "WalkSpeed" then
            -- Configura para usar o método padrão WalkSpeed
            SpeedEnabled = false       -- Desativa o CFrame Speed se estiver ativo
            Humanoid.WalkSpeed = Speed -- Define o WalkSpeed para o valor atual do slider
        elseif selectedMethod == "CFrame" then
            -- Configura para usar o método CFrame
            SpeedEnabled = true
            SpeedControl() -- Ativa o controle de CFrame Speed
        end
    end,
})

-- Atualizando o Character e HumanoidRootPart quando o jogador resetar
LocalPlayer.CharacterAdded:Connect(function(NewCharacter)
    Character = NewCharacter
    HumanoidRootPart = Character:WaitForChild("HumanoidRootPart")
    if SpeedEnabled then
        SpeedControl()
    end
end)
