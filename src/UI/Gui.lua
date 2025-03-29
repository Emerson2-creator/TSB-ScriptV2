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
local CframeLabel = PlayerTab:CreateLabel("Basic Settings", "user-cog")

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
    CurrentValue = 50,
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

-- variaveis do Infinite Jump
local InfiniteJumpEnabled = false

-- criando um toggle para inf jump
local InfJumpToggle = PlayerTab:CreateToggle({
    Name = "Inf Jump",
    CurrentValue = false,
    Flag = "InfJump", -- Identificador único
    Callback = function(Value)

 end
})

-- Função para ativar o Infinite Jump
UserInputService.JumpRequest:Connect(function()
    if InfiniteJumpEnabled then
        LocalPlayer.Character:FindFirstChildOfClass("Humanoid"):ChangeState(Enum.HumanoidStateType.Jumping)
    end
end)

-- criando um label para o CFrame Speed
local CframeLabel = PlayerTab:CreateLabel("CFrame Speed", "user-cog")

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

local AdvancedLabel = PlayerTab:CreateLabel("Advanced settings", "user-cog")

-- Criando um toggle para No Dash Cooldown
local NoDashCooldownToggle = PlayerTab:CreateToggle({
    Name = "No Dash Cooldown",
    CurrentValue = false,
    Flag = "NoDashCooldown", -- Identificador único
    Callback = function(Value)
        -- Criando um atributo booleano no Workspace
        workspace:SetAttribute("NoDashCooldown", Value) -- Cria um atributo chamado "IsSpeedEnabled" com o valor inicial false
    end
})

-- Criando um toggle para No fatigue
local NoFatigueToggle = PlayerTab:CreateToggle({
    Name = "No Fatigue (When you have low health, you won’t slow down.)",
    CurrentValue = false,
    Flag = "NoFatigue", -- Identificador único
    Callback = function(Value)
        -- Criando um atributo booleano no Workspace
        workspace:SetAttribute("NoFatigue", Value) -- Cria um atributo chamado "IsSpeedEnabled" com o valor inicial false
    end
})
