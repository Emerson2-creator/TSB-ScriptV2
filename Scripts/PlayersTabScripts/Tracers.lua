-- Criando um toggle com um script Tracers para mostrar os players (Pasta: Scripts/PlayersTabScripts/Tracers.lua)
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