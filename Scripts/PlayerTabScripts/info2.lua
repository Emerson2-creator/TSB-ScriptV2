local Players = game:GetService("Players")

-- Função para criar um BillboardGui para exibir o ping
local function createPingLabel(character)
    local head = character:FindFirstChild("Head")
    if head then
        -- Remover qualquer GUI existente antes de adicionar um novo
        for _, gui in pairs(head:GetChildren()) do
            if gui:IsA("BillboardGui") then
                gui:Destroy()
            end
        end

        local billboardGui = Instance.new("BillboardGui")
        billboardGui.Size = UDim2.new(0, 100, 0, 50)
        billboardGui.StudsOffset = Vector3.new(0, 3, 0) -- Ajusta a posição acima do jogador
        billboardGui.AlwaysOnTop = true

        local pingLabel = Instance.new("TextLabel")
        pingLabel.Size = UDim2.new(1, 0, 1, 0)
        pingLabel.BackgroundTransparency = 1
        pingLabel.TextColor3 = Color3.new(1, 1, 1) -- Cor do texto
        pingLabel.TextScaled = true
        pingLabel.Parent = billboardGui

        billboardGui.Parent = head

        return pingLabel
    end
end

-- Função para atualizar o ping em tempo real
local function updatePingLabel(player, pingLabel)
    game:GetService("RunService").Heartbeat:Connect(function()
        local ping = player:GetAttribute("Ping") or 0
        ping = math.floor(ping) -- Arredonda o ping para o número inteiro mais próximo
        pingLabel.Text = tostring(ping) .. " ms"
    end)
end

-- Função para configurar os labels de ping para um jogador
local function setupPingLabelForPlayer(player)
    local function onCharacterAdded(character)
        local pingLabel = createPingLabel(character)
        updatePingLabel(player, pingLabel)
    end

    player.CharacterAdded:Connect(onCharacterAdded)

    -- Se o jogador já tem um personagem, cria o label imediatamente
    if player.Character then
        onCharacterAdded(player.Character)
    end
end

-- Configura os labels de ping para todos os jogadores atuais e futuros
local function setupPingLabels()
    for _, player in pairs(Players:GetPlayers()) do
        setupPingLabelForPlayer(player)
    end

    Players.PlayerAdded:Connect(setupPingLabelForPlayer)
end

-- Configura os labels de ping quando o script é executado
setupPingLabels()





