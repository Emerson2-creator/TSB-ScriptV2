-- Este Script está em BETA, então pode conter bugs
-- importando a biblioteca de GUI atraves de um loadstring
-- O script estara em ingles, pois a biblioteca de GUI esta em ingles
-- Este gui é um hack para o jogo The Strongest Battlegrounds
-- Executor usado: AtlantisV3
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

]]--


-- Criando uma nova Tab. Tab players, essa tab vai mostrar informações sobre os player, como perssonagem, ult, etc.

local PlayerTab = Window:CreateTab("Player", 10747373176) -- Title, Image

local tool = Instance.new("Tool")
tool.Name = "Run Tool"
tool.Parent = game.Players.LocalPlayer.Backpack
tool.RequiresHandle = false

local moving = false
local player = game.Players.LocalPlayer
local character = player.Character or player.CharacterAdded:Wait()
local humanoidRootPart = character:WaitForChild("HumanoidRootPart")
local humanoid = character:WaitForChild("Humanoid")
local runService = game:GetService("RunService")
local movementSpeed = 125

local animation = Instance.new("Animation")
animation.AnimationId = "rbxassetid://18897115785"
local animator = humanoid:FindFirstChildOfClass("Animator") or humanoid:WaitForChild("Animator")
local animationTrack

local function moveForward()
    while moving do
        local forwardDirection = humanoidRootPart.CFrame.LookVector
        humanoidRootPart.Velocity = forwardDirection * movementSpeed
        runService.Stepped:Wait()
    end
end

tool.Equipped:Connect(function()
    moving = true
    animationTrack = animator:LoadAnimation(animation)
    animationTrack:Play()
    moveForward()
end)

tool.Unequipped:Connect(function()
    moving = false
    if animationTrack then
        animationTrack:Stop()
    end
end)

local Keybind = PlayerTab:CreateKeybind({
    Name = "Run Keybind",
    CurrentKeybind = "C",
    HoldToInteract = true,
    Flag = "RunKeybind", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
    Callback = function(Keybind)
        if Keybind then
            moving = true
            animationTrack = animator:LoadAnimation(animation)
            animationTrack:Play()
            moveForward()
        else
            moving = false
            if animationTrack then
                animationTrack:Stop()
            end
        end
    end,
})