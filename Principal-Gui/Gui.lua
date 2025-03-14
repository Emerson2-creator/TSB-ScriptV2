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


-- Criando uma nova Tab. Tab players, essa tab vai mostrar informações sobre os player, como perssonagem, ult, etc.
local PlayersTab = Window:CreateTab("Players", 10723415903) -- Title, Image

-- Criando uma section sobre os players

local Section = PlayersTab:CreateSection("Players Info")

local Players = game:GetService("Players")

local deviceAndPingEnabled = false
local playerLabels = {} -- Tabela para armazenar os labels de cada jogador

local DeviceAndPingToggle = PlayersTab:CreateToggle({
    Name = "Show Info About Players (Bugs can happen)",
    CurrentValue = false,
    Flag = "ShowInfoAboutPlayers",
    Callback = function(Value)
        deviceAndPingEnabled = Value
        if deviceAndPingEnabled then
            -- Código para ativar o label de dispositivo e ping
            local Players = game:GetService("Players")

            local characterTypes = {"Hunter", "Cyborg", "Bald", "KJ", "Purple", "Ninja", "Blade", "Batter", "Esper"}

            local function getCharacterType(player)
                for _, characterType in ipairs(characterTypes) do
                    if player:GetAttribute("Character") == characterType then
                        return characterType
                    end
                end
                return "Unknown"
            end

            local function createDeviceAndPingLabel(character)
                -- Remover qualquer GUI existente antes de adicionar um novo
                local head = character:FindFirstChild("Head")
                if head then
                    for _, gui in pairs(head:GetChildren()) do
                        if gui:IsA("BillboardGui") then
                            gui:Destroy()
                        end
                    end
                end

                local billboardGui = Instance.new("BillboardGui")
                billboardGui.Size = UDim2.new(0, 100, 0, 50)
                billboardGui.StudsOffset = Vector3.new(0, 7, 0) -- Ajusta a posição acima do jogador
                billboardGui.AlwaysOnTop = true

                local label = Instance.new("TextLabel")
                label.Size = UDim2.new(1, 0, 1, 0)
                label.BackgroundTransparency = 1
                label.TextColor3 = Color3.new(1, 1, 1) -- Cor do texto
                label.TextScaled = true
                label.Parent = billboardGui

                billboardGui.Parent = head

                return label
            end

            local function updateDeviceAndPingLabel(player, label)
                game:GetService("RunService").Heartbeat:Connect(function()
                    local ping = player:GetAttribute("Ping") or 0
                    ping = math.floor(ping)
                    local isMobile = player:GetAttribute("Mobile")
                    local deviceType = isMobile and "Mobile" or "PC"
                    local characterType = getCharacterType(player)
                    local ultimateValue = player:GetAttribute("Ultimate") or 0
                    ultimateValue = math.floor(ultimateValue) -- Arredonda o valor do Ultimate para o número inteiro mais próximo
                    label.Text = "Ping: " .. tostring(ping) .. " ms | Device: " .. deviceType .. " | Character: " .. characterType .. " | Ult: " .. tostring(ultimateValue) .. "%"
                end)
            end

            -- Função para configurar os labels para todos os jogadores
            local function setupDeviceAndPingLabels()
                for _, player in pairs(Players:GetPlayers()) do
                    player.CharacterAdded:Connect(function(character)
                        local label = createDeviceAndPingLabel(character)
                        playerLabels[player] = label
                        updateDeviceAndPingLabel(player, label)
                    end)

                    if player.Character then
                        local label = createDeviceAndPingLabel(player.Character)
                        playerLabels[player] = label
                        updateDeviceAndPingLabel(player, label)
                    end
                end

                -- Adiciona detecção de morte para o jogador local
                local localPlayer = game.Players.LocalPlayer
                localPlayer.CharacterAdded:Connect(function(character)
                    local humanoid = character:FindFirstChildOfClass("Humanoid")
                    if humanoid then
                        humanoid.Died:Connect(function()
                            if playerLabels[localPlayer] then
                                playerLabels[localPlayer]:Destroy()
                                playerLabels[localPlayer] = nil
                            end
                        end)
                    end
                end)

                if localPlayer.Character then
                    local humanoid = localPlayer.Character:FindFirstChildOfClass("Humanoid")
                    if humanoid then
                        humanoid.Died:Connect(function()
                            if playerLabels[localPlayer] then
                                playerLabels[localPlayer]:Destroy()
                                playerLabels[localPlayer] = nil
                            end
                        end)
                    end
                end
            end

            setupDeviceAndPingLabels()

            Players.PlayerAdded:Connect(function(player)
                player.CharacterAdded:Connect(function(character)
                    local label = createDeviceAndPingLabel(character)
                    playerLabels[player] = label
                    updateDeviceAndPingLabel(player, label)
                end)
            end)
        else
            -- Código para desativar o label de dispositivo e ping
            for _, label in pairs(playerLabels) do
                if label then
                    label:Destroy()
                end
            end
            playerLabels = {} -- Limpa a tabela de labels
        end
    end,
})

-- Adicionando um ColorPicker para modificar a cor do texto das informações dos players

local ColorPicker = PlayersTab:CreateColorPicker({
    Name = "Color of Text",
    Color = Color3.fromRGB(255,255,255),
    Flag = "ColorPicker1", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
    Callback = function(Value)
        for _, label in pairs(playerLabels) do
            if label then
                label.TextColor3 = Value
            end
        end
    end
})

-- Criando um toggle com um script ESP para mostrar os players

local ESPEnabled = false

local ESPColor = Color3.new(1, 0, 0) -- Cor padrão vermelha

local function createESP(player)
    if player.Character then
        local highlight = Instance.new("Highlight")
        highlight.Adornee = player.Character
        highlight.FillColor = ESPColor
        highlight.FillTransparency = 0.5
        highlight.OutlineTransparency = 0
        highlight.Parent = player.Character
    end
end

local function removeESP(player)
    if player.Character then
        for _, child in pairs(player.Character:GetChildren()) do
            if child:IsA("Highlight") then
                child:Destroy()
            end
        end
    end
end

local function toggleESP(enabled)
    ESPEnabled = enabled
    for _, player in pairs(Players:GetPlayers()) do
        if player ~= game.Players.LocalPlayer then
            if ESPEnabled then
                createESP(player)
            else
                removeESP(player)
            end
        end
    end
end

Players.PlayerAdded:Connect(function(player)
    player.CharacterAdded:Connect(function()
        if ESPEnabled then
            createESP(player)
        end
    end)
end)

local ESP = PlayersTab:CreateToggle({
    Name = "ESP",
    CurrentValue = false,
    Flag = "ESP",
    Callback = function(Value)
        toggleESP(Value)
    end
})

local ESPColorPicker = PlayersTab:CreateColorPicker({
    Name = "ESP Color",
    Color = ESPColor,
    Flag = "ESPColorPicker", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
    Callback = function(Value)
        ESPColor = Value
        if ESPEnabled then
            for _, player in pairs(Players:GetPlayers()) do
                if player ~= game.Players.LocalPlayer then
                    removeESP(player)
                    createESP(player)
                end
            end
        end
    end
})

local TracersEnabled = false
local tracerLines = {}

local TracerColor = Color3.new(1, 1, 1) -- Cor padrão branca

local function createTracer(player)
    if player.Character and player.Character:FindFirstChild("HumanoidRootPart") then
        local line = Drawing.new("Line")
        line.Color = TracerColor
        line.Thickness = 2
        line.Transparency = 1
        tracerLines[player] = line
    end
end

local function removeTracer(player)
    if tracerLines[player] then
        tracerLines[player]:Remove()
        tracerLines[player] = nil
    end
end

local function updateTracers()
    local localPlayer = game.Players.LocalPlayer
    local camera = workspace.CurrentCamera

    if localPlayer.Character and localPlayer.Character:FindFirstChild("HumanoidRootPart") then
        local localRootPart = localPlayer.Character.HumanoidRootPart

        for player, line in pairs(tracerLines) do
            if player.Character and player.Character:FindFirstChild("HumanoidRootPart") then
                local rootPart = player.Character.HumanoidRootPart
                local screenPosition, onScreen = camera:WorldToViewportPoint(rootPart.Position)

                if onScreen then
                    local localScreenPosition = camera:WorldToViewportPoint(localRootPart.Position)
                    line.From = Vector2.new(localScreenPosition.X, localScreenPosition.Y)
                    line.To = Vector2.new(screenPosition.X, screenPosition.Y)
                    line.Visible = true
                else
                    line.Visible = false
                end
            else
                line.Visible = false
            end
        end
    end
end

game:GetService("RunService").RenderStepped:Connect(function()
    if TracersEnabled then
        updateTracers()
    end
end)

local function toggleTracers(enabled)
    TracersEnabled = enabled
    if TracersEnabled then
        for _, player in pairs(Players:GetPlayers()) do
            if player ~= game.Players.LocalPlayer then
                createTracer(player)
            end
        end
    else
        for _, player in pairs(Players:GetPlayers()) do
            removeTracer(player)
        end
    end
end

Players.PlayerAdded:Connect(function(player)
    player.CharacterAdded:Connect(function()
        if TracersEnabled then
            createTracer(player)
        end
    end)
end)

local TracersToggle = PlayersTab:CreateToggle({
    Name = "Tracers",
    CurrentValue = false,
    Flag = "Tracers",
    Callback = function(Value)
        toggleTracers(Value)
    end
})

local TracerColorPicker = PlayersTab:CreateColorPicker({
    Name = "Tracer Color",
    Color = TracerColor,
    Flag = "TracerColorPicker", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
    Callback = function(Value)
        TracerColor = Value
        if TracersEnabled then
            for _, line in pairs(tracerLines) do
                line.Color = TracerColor
            end
        end
    end
})

