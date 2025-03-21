local Players = game:GetService("Players")

-- Função para criar um BillboardGui para exibir o tipo de personagem
local function createCharacterLabel(character)
    local billboardGui = Instance.new("BillboardGui")
    billboardGui.Size = UDim2.new(0, 100, 0, 50)
    billboardGui.StudsOffset = Vector3.new(0, 5, 0) -- Ajusta a posição acima do jogador
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

-- Função para atualizar o label com o tipo de personagem
local function updateCharacterLabel(player, label)
    game:GetService("RunService").Heartbeat:Connect(function()
        local characterType = player:GetAttribute("Character") or "Unknown"
        label.Text = "Character: " .. characterType
    end)
end

-- Configura os labels de personagem para cada jogador
local function setupCharacterLabels()
    for _, player in pairs(Players:GetPlayers()) do
        player.CharacterAdded:Connect(function(character)
            local label = createCharacterLabel(character)
            updateCharacterLabel(player, label)
        end)

        if player.Character then
            local label = createCharacterLabel(player.Character)
            updateCharacterLabel(player, label)
        end
    end
end

setupCharacterLabels()

-- Configura os labels de personagem para novos jogadores
Players.PlayerAdded:Connect(function(player)
    player.CharacterAdded:Connect(function(character)
        local label = createCharacterLabel(character)
        updateCharacterLabel(player, label)
    end)
end)

