

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
    player.CharacterAdded:Connect(function(character)
        if ESPEnabled then
            createESP(player)
        end
    end)
end)

-- Recria o ESP para todos os jogadores quando o toggle é ativado
local function setupESPForAllPlayers()
    for _, player in pairs(Players:GetPlayers()) do
        player.CharacterAdded:Connect(function(character)
            if ESPEnabled then
                createESP(player)
            end
        end)

        if player.Character then
            createESP(player)
        end
    end
end

local ESP = PlayersTab:CreateToggle({
    Name = "ESP",
    CurrentValue = false,
    Flag = "ESP",
    Callback = function(Value)
        toggleESP(Value)
        if Value then
            setupESPForAllPlayers()
        end
    end
})

local ESPColorPicker = PlayersTab:CreateColorPicker({
    Name = "ESP Color",
    Color = ESPColor,
    Flag = "ESPColorPicker",
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