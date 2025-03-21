-- variavel que vai armazenar os players

local Players = game:GetService("Players")

-- variavel que vai armazenar se as informações dos players esta ativo ou não

local InfoPlayersEnabled = t

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