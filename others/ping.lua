-- pegando o ping do jogador local usando getAttribute

local player = game.Players.LocalPlayer
local character = player.Character or player.CharacterAdded:Wait()

-- Cria um BillboardGui
local billboardGui = Instance.new("BillboardGui")
billboardGui.Size = UDim2.new(0, 100, 0, 50)
billboardGui.StudsOffset = Vector3.new(0, 3, 0) -- Ajusta a posição acima do jogador
billboardGui.AlwaysOnTop = true

-- Cria um Label para exibir o ping
local pingLabel = Instance.new("TextLabel")
pingLabel.Size = UDim2.new(1, 0, 1, 0)
pingLabel.BackgroundTransparency = 1
pingLabel.TextColor3 = Color3.new(1, 1, 1) -- Cor do texto
pingLabel.TextScaled = true
pingLabel.Parent = billboardGui

-- Anexa o BillboardGui à cabeça do personagem
billboardGui.Parent = character:WaitForChild("Head")

-- Atualiza o ping em tempo real
game:GetService("RunService").Heartbeat:Connect(function()
    local ping = player:GetAttribute("Ping") or 0
    ping = math.floor(ping) -- Arredonda o ping para o número inteiro mais próximo
    pingLabel.Text =  tostring(ping) .. " ms"
end)

local Players = game:GetService("Players")

-- Função para criar um BillboardGui para exibir o ping
local function createPingLabel(character)
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

    billboardGui.Parent = character:WaitForChild("Head")

    return pingLabel
end

-- Atualiza o ping em tempo real
local function updatePingLabel(player, pingLabel)
    game:GetService("RunService").Heartbeat:Connect(function()
        local ping = player:GetAttribute("Ping") or 0
        ping = math.floor(ping) -- Arredonda o ping para o número inteiro mais próximo
        pingLabel.Text = tostring(ping) .. " ms"
    end)
end

-- Cria e atualiza o ping label para cada jogador
local function setupPingLabels()
    for _, player in pairs(Players:GetPlayers()) do
        player.CharacterAdded:Connect(function(character)
            local pingLabel = createPingLabel(character)
            updatePingLabel(player, pingLabel)
        end)

        -- Se o personagem já estiver carregado
        if player.Character then
            local pingLabel = createPingLabel(player.Character)
            updatePingLabel(player, pingLabel)
        end
    end
end

-- Configura os ping labels quando o script é executado
setupPingLabels()

-- Configura os ping labels para novos jogadores
Players.PlayerAdded:Connect(function(player)
    player.CharacterAdded:Connect(function(character)
        local pingLabel = createPingLabel(character)
        updatePingLabel(player, pingLabel)
    end)
end)

-- Variável para controlar a exibição do label de Ping
local showPing = false

-- Criando um toggle para mostrar o Ping dos players
local PingToggle = PlayersTab:CreateToggle({
    Name = "Show Ping",
    CurrentValue = false,
    Flag = "TogglePing",
    Callback = function(Value)
        showPing = Value
        if showPing then
            setupPingLabels()
        else
            -- Código para remover os labels de Ping
            for _, player in pairs(Players:GetPlayers()) do
                if player.Character then
                    local head = player.Character:FindFirstChild("Head")
                    if head then
                        for _, gui in pairs(head:GetChildren()) do
                            if gui:IsA("BillboardGui") and gui:FindFirstChildOfClass("TextLabel") then
                                gui:Destroy()
                            end
                        end
                    end
                end
            end
        end
    end,
})

