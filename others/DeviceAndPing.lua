local Players = game:GetService("Players")

-- Função para criar um BillboardGui para exibir o ping e o tipo de dispositivo
local function createDeviceAndPingLabel(character)
    local billboardGui = Instance.new("BillboardGui")
    billboardGui.Size = UDim2.new(0, 100, 0, 50)
    billboardGui.StudsOffset = Vector3.new(0, 3, 0) -- Ajusta a posição acima do jogador
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

-- Atualiza o ping e o tipo de dispositivo em tempo real
local function updateDeviceAndPingLabel(player, label)
    game:GetService("RunService").Heartbeat:Connect(function()
        local ping = player:GetAttribute("Ping") or 0
        ping = math.floor(ping) -- Arredonda o ping para o número inteiro mais próximo
        local isMobile = player:GetAttribute("Mobile")
        local deviceType = isMobile and "Mobile" or "PC"
        label.Text = "Ping: " .. tostring(ping) .. " ms | Device: " .. deviceType
    end)
end

-- Cria e atualiza o label para cada jogador
local function setupDeviceAndPingLabels()
    for _, player in pairs(Players:GetPlayers()) do
        player.CharacterAdded:Connect(function(character)
            local label = createDeviceAndPingLabel(character)
            updateDeviceAndPingLabel(player, label)
        end)

        -- Se o personagem já estiver carregado
        if player.Character then
            local label = createDeviceAndPingLabel(player.Character)
            updateDeviceAndPingLabel(player, label)
        end
    end
end

-- Configura os labels quando o script é executado
setupDeviceAndPingLabels()

-- Configura os labels para novos jogadores
Players.PlayerAdded:Connect(function(player)
    player.CharacterAdded:Connect(function(character)
        local label = createDeviceAndPingLabel(character)
        updateDeviceAndPingLabel(player, label)
    end)
end)
