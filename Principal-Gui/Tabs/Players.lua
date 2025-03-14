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
local PlayersTab = Window:CreateTab("Players", 10723415903) -- Title, Image

-- Criando uma section sobre os players

local Section = PlayersTab:CreateSection("Players Info")

-- variavel que vai armazenar os players

local Players = game:GetService("Players")

-- variavel que vai armazenar se as informações dos players esta ativo ou não

local InfoPlayersEnabled = false

-- variavel que vai armazenar os labels de cada jogador

local playerLabels = {} -- Tabela para armazenar os labels de cada jogador

-- Criando um toggle para mostrar as informações dos players

local DeviceAndPingToggle = PlayersTab:CreateToggle({
    Name = "Show Info About Players (Bugs can happen)",
    CurrentValue = false,
    Flag = "ShowInfoAboutPlayers",
    Callback = function(Value)

        -- variavel que vai armazenar se o device e ping esta ativo ou não

        InfoPlayersEnabled = Value

        -- Criando um if para verificar se o toggle esta ativo ou não

        if InfoPlayersEnabled then
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

            -- Criando uma função para criar o label de informações dos players

            local function createInfoPlayersLabel(character)
                -- Remover qualquer GUI existente antes de adicionar um novo
                local head = character:FindFirstChild("Head")
                if head then
                    for _, gui in pairs(head:GetChildren()) do
                        if gui:IsA("BillboardGui") then
                            gui:Destroy()
                        end
                    end
                end

                -- Criando um billboard gui para mostrar as informações dos players

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

            -- Criando uma função para atualizar o label de informações dos players

            local function updateInfoPlayersLabel(player, label)
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

            -- Criando uma função para configurar os labels para todos os jogadores

            -- Função para configurar os labels para todos os jogadores
            local function setupInfoPlayersLabels()
                for _, player in pairs(Players:GetPlayers()) do
                    player.CharacterAdded:Connect(function(character)
                        local label = createInfoPlayersLabel(character)
                        playerLabels[player] = label
                        updateInfoPlayersLabel(player, label)
                    end)

                    if player.Character then
                        local label = createInfoPlayersLabel(player.Character)
                        playerLabels[player] = label
                        updateInfoPlayersLabel(player, label)
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

                -- Criando um if para verificar se o jogador local tem um personagem

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

            setupInfoPlayersLabels()

            Players.PlayerAdded:Connect(function(player)
                player.CharacterAdded:Connect(function(character)
                    local label = createInfoPlayersLabel(character)
                    playerLabels[player] = label
                    updateInfoPlayersLabel(player, label)
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