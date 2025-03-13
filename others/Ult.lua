local Players = game:GetService("Players")

-- Função para criar um BillboardGui para exibir o valor do Ultimate
local function createUltimateLabel(character)
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

-- Função para atualizar o label com o valor do Ultimate
local function updateUltimateLabel(player, label)
    game:GetService("RunService").Heartbeat:Connect(function()
        local ultimateValue = player:GetAttribute("Ultimate") or 0
        ultimateValue = math.floor(ultimateValue) -- Arredonda o valor para o número inteiro mais próximo
        label.Text = "Ult: " .. tostring(ultimateValue) .. "%"
    end)
end

-- Configura os labels de Ultimate para cada jogador
local function setupUltimateLabels()
    for _, player in pairs(Players:GetPlayers()) do
        player.CharacterAdded:Connect(function(character)
            local label = createUltimateLabel(character)
            updateUltimateLabel(player, label)
        end)

        if player.Character then
            local label = createUltimateLabel(player.Character)
            updateUltimateLabel(player, label)
        end
    end
end

setupUltimateLabels()

-- Configura os labels de Ultimate para novos jogadores
Players.PlayerAdded:Connect(function(player)
    player.CharacterAdded:Connect(function(character)
        local label = createUltimateLabel(character)
        updateUltimateLabel(player, label)
    end)
end)

-- Variável para controlar a exibição do label de Ultimate
local showUltimate = false

-- Criando um toggle para mostrar o Ultimate dos players
local UltimateToggle = PlayersTab:CreateToggle({
    Name = "Show Ultimate",
    CurrentValue = false,
    Flag = "ToggleUltimate",
    Callback = function(Value)
        showUltimate = Value
        if showUltimate then
            setupUltimateLabels()
        else
            -- Código para remover os labels de Ultimate
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

--[[
-- como criar um toggle usando o library

local Toggle = Tab:CreateToggle({
   Name = "Toggle Example",
   CurrentValue = false,
   Flag = "Toggle1", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
   Callback = function(Value)
   -- The function that takes place when the toggle is pressed
   -- The variable (Value) is a boolean on whether the toggle is true or false
   end,
})

]]--