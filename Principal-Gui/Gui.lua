-- Este Script está em BETA, então pode conter bugs
-- importando a biblioteca de GUI atraves de um loadstring
-- O script estara em ingles, pois a biblioteca de GUI esta em ingles
-- Este gui é um hack para o jogo The Strongest Battlegrounds
-- este gui é para o Roblox escrito com lua/luau
local Rayfield = loadstring(game:HttpGet('https://raw.githubusercontent.com/Emerson2-creator/Universal-GUI-Script/refs/heads/main/RealCode'))()

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
       FolderName = nil, -- Create a custom folder for your hub/game
       FileName = "TSB hub" -- Name of the file where the configuration will be saved
    },

    Discord = {
       Enabled = false, -- Prompt the user to join your Discord server if their executor supports it
       Invite = "noinvitelink", -- The Discord invite code, do not include discord.gg/. E.g. discord.gg/ABCD would be ABCD
       RememberJoins = true -- Set this to false to make them join the discord every time they load it up
    },

    KeySystem = false, -- Set this to true to use our key system
    KeySettings = {
       Title = "Untitled",
       Subtitle = "Key System",
       Note = "No method of obtaining the key is provided", -- Use this to tell the user how to get a key
       FileName = "Key", -- It is recommended to use something unique as other scripts using Rayfield may overwrite your key file
       SaveKey = true, -- The user's key will be saved, but if you change the key, they will be unable to use your script
       GrabKeyFromSite = false, -- If this is true, set Key below to the RAW site you would like Rayfield to get the key from
       Key = {"Hello"} -- List keys that will be accepted by the system, can be RAW file links (pastebin, github etc) or simple strings ("hello","key22")
    }
})

-- Criando uma Notificação que fala que o script foi carregado
Rayfield:Notify({
    Title = "The Strongest Battlegrounds",
    Content = "gui loaded, enjoy! :)",
    Duration = 6.5,
    Image = 4483362458,
 })

-- Criando uma Nova e primeira Tab
local PlayerTab = Window:CreateTab("Player", 10747372167) -- Title, Image

-- Criando um slider para alterar a velocidade do jogador

local WalkSpeedSlider = PlayerTab:CreateSlider({
    Name = "Walk Speed",
    Range = {0, 500},
    Increment = 1,
    Suffix = "WalkSpeed",
    CurrentValue = 16,
    Flag = "Slider1", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
    Callback = function(Value)
        local Player = game.Players.LocalPlayer
        local Character = Player.Character
        local Humanoid = Character:FindFirstChildOfClass("Humanoid")
        Humanoid.WalkSpeed = Value
    end,
 })

 -- Criando um slider para alterar o pulo do jogador

local JumpPowerSlider = PlayerTab:CreateSlider({
    Name = "Jump Power",
    Range = {0, 500},
    Increment = 1,
    Suffix = "JumpPower",
    CurrentValue = 50,
    Flag = "Slider2", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
    Callback = function(Value)
        local Player = game.Players.LocalPlayer
        local Character = Player.Character
        local Humanoid = Character:FindFirstChildOfClass("Humanoid")
        Humanoid.JumpPower = Value
    end,
 })

 -- criando um slider para alterar a gravidade do workspace
 local GravitySlider = PlayerTab:CreateSlider({
    Name = "Gravity",
    Range = {0, 500},
    Increment = 1,
    Suffix = "Gravity",
    CurrentValue = 196.2,
    Flag = "Slider3", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
    Callback = function(Value)
        game.Workspace.Gravity = Value
    end,
 })

 -- Criando um toggle para ativar e desativar o noclip

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

-- criando um input para no stun walkspeed
local NoStunWalkSpeedInput = PlayerTab:CreateInput({
    Name = "No Stun WalkSpeed (BETA) (put (-) to decrease)",
    CurrentValue = "0",
    PlaceholderText = "No Stun WalkSpeed",
    RemoveTextAfterFocusLost = false,
    Flag = "NoStunWalkSpeed",
    Callback = function(Text)
        local function isNumber(str)
            return tonumber(str) ~= nil or str == 'inf'
        end
        local tspeed = tonumber(Text)
        local hb = game:GetService("RunService").Heartbeat
        local tpwalking = true
        local player = game:GetService("Players")
        local lplr = player.LocalPlayer
        local chr = lplr.Character
        local hum = chr and chr:FindFirstChildWhichIsA("Humanoid")
        while tpwalking and hb:Wait() and chr and hum and hum.Parent do
            if hum.MoveDirection.Magnitude > 0 then
                if tspeed and isNumber(tspeed) then
                    chr:TranslateBy(hum.MoveDirection * tspeed)
                else
                    chr:TranslateBy(hum.MoveDirection)
                end
            end
        end
    end,
 })

 -- Criando um togle de mostrar o nome dos jogadores, Devices deles, e o ping