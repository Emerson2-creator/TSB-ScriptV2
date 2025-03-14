local deviceAndPingEnabled = false
local playerLabels = {} -- Tabela para armazenar os labels de cada jogador

local DeviceAndPingToggle = PlayersTab:CreateToggle({
    Name = "Show Device and Ping",
    CurrentValue = false,
    Flag = "ToggleDeviceAndPing",
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

                billboardGui.Parent = character:WaitForChild("Head")

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

-- Adicionando um ColorPicker para selecionar a cor do texto das informações dos players


