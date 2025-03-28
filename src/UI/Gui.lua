-- Este Script está em BETA, então pode conter bugs
-- importando a biblioteca de GUI atraves de um loadstring
-- O script estara em ingles, pois a biblioteca de GUI esta em ingles
-- Este gui é um hack para o jogo The Strongest Battlegrounds
-- Executor usado: AtlantisV3
-- este gui é para o Roblox escrito com lua/luau
local Rayfield = loadstring(game:HttpGet('https://raw.githubusercontent.com/Emerson2-creator/Universal-GUI-Script/refs/heads/main/RealCode'))()

--[variaveis]--
local Players = game:GetService("Players")
local RunService = game:GetService("RunService")

local LocalPlayer = Players.LocalPlayer
local Character = LocalPlayer.Character or LocalPlayer.CharacterAdded:Wait()
local HumanoidRootPart = Character:WaitForChild("HumanoidRootPart")

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

--[Player Tab]--

-- Criando uma nova Tab.
local PlayerTab = Window:CreateTab("Player", 10747373176) -- Title, Image

-- Criando um label para o CFrame Speed
local CframeLabel = PlayerTab:CreateLabel("Cframe speed(No Stun)", "fast-forward")

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
PlayerTab:CreateSlider({
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
PlayerTab:CreateToggle({
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

-- Criando um label para o CFrame Speed
local CframeLabel = PlayerTab:CreateLabel("Basi")