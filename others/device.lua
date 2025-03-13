local Players = game:GetService("Players")

-- Função para criar um BillboardGui para exibir o tipo de dispositivo
local function createDeviceLabel(character)
    local billboardGui = Instance.new("BillboardGui")
    billboardGui.Size = UDim2.new(0, 100, 0, 50)
    billboardGui.StudsOffset = Vector3.new(0, 3, 0) -- Ajusta a posição acima do jogador
    billboardGui.AlwaysOnTop = true

    local deviceLabel = Instance.new("TextLabel")
    deviceLabel.Size = UDim2.new(1, 0, 1, 0)
    deviceLabel.BackgroundTransparency = 1
    deviceLabel.TextColor3 = Color3.new(1, 1, 1) -- Cor do texto
    deviceLabel.TextScaled = true
    deviceLabel.Parent = billboardGui

    billboardGui.Parent = character:WaitForChild("Head")

    return deviceLabel
end

-- Atualiza o tipo de dispositivo em tempo real
local function updateDeviceLabel(player, deviceLabel)
    game:GetService("RunService").Heartbeat:Connect(function()
        local isMobile = player:GetAttribute("Mobile")
        local deviceType = isMobile and "Mobile" or "PC"
        deviceLabel.Text = "Device: " .. deviceType
    end)
end

-- Cria e atualiza o device label para cada jogador
local function setupDeviceLabels()
    for _, player in pairs(Players:GetPlayers()) do
        player.CharacterAdded:Connect(function(character)
            local deviceLabel = createDeviceLabel(character)
            updateDeviceLabel(player, deviceLabel)
        end)

        -- Se o personagem já estiver carregado
        if player.Character then
            local deviceLabel = createDeviceLabel(player.Character)
            updateDeviceLabel(player, deviceLabel)
        end
    end
end

-- Configura os device labels quando o script é executado
setupDeviceLabels()

-- Configura os device labels para novos jogadores
Players.PlayerAdded:Connect(function(player)
    player.CharacterAdded:Connect(function(character)
        local deviceLabel = createDeviceLabel(character)
        updateDeviceLabel(player, deviceLabel)
    end)
end)
