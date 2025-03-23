local Players = game:GetService("Players")

-- Função para criar um TextLabel acima da cabeça do jogador
local function createPingLabel(character)
    local billboardGui = Instance.new("BillboardGui")
    billboardGui.Name = "PingDisplay"
    billboardGui.Adornee = character:WaitForChild("Head")
    billboardGui.Size = UDim2.new(0, 100, 0, 50)
    billboardGui.StudsOffset = Vector3.new(0, 2, 0)
    billboardGui.AlwaysOnTop = true

    local textLabel = Instance.new("TextLabel")
    textLabel.Size = UDim2.new(1, 0, 1, 0)
    textLabel.BackgroundTransparency = 1
    textLabel.TextScaled = true
    textLabel.TextColor3 = Color3.new(1, 1, 1)
    textLabel.Parent = billboardGui

    billboardGui.Parent = character:WaitForChild("Head")

    return textLabel
end

-- Função para atualizar o valor do ping, dispositivo, Ultimate e Character no TextLabel
local function updatePingLabel(player, textLabel)
    local ping = player:GetAttribute("Ping")
    local device = player:GetAttribute("Mobile") and "Mobile" or "PC"
    local ultimate = player:GetAttribute("Ultimate")
    local character = player:GetAttribute("Character")
    if ping and ultimate and character then
        textLabel.Text = "Ping: " .. math.floor(ping) .. " ms\nDevice: " .. device .. "\nUltimate: " .. math.floor(ultimate) .. "%\nCharacter: " .. character
    elseif ping and ultimate then
        textLabel.Text = "Ping: " .. math.floor(ping) .. " ms\nDevice: " .. device .. "\nUltimate: " .. math.floor(ultimate) .. "%\nCharacter: N/A"
    elseif ping then
        textLabel.Text = "Ping: " .. math.floor(ping) .. " ms\nDevice: " .. device .. "\nUltimate: N/A\nCharacter: N/A"
    else
        textLabel.Text = "Ping: N/A\nDevice: " .. device .. "\nUltimate: N/A\nCharacter: N/A"
    end
end

-- Função para configurar o ping display para um jogador
local function setupPingDisplay(player)
    local character = player.Character or player.CharacterAdded:Wait()
    local textLabel = createPingLabel(character)

    game:GetService("RunService").RenderStepped:Connect(function()
        updatePingLabel(player, textLabel)
    end)

    player.CharacterAdded:Connect(function(char)
        character = char
        textLabel = createPingLabel(character)
    end)
end

-- Configura o ping display para todos os jogadores existentes
for _, player in pairs(Players:GetPlayers()) do
    setupPingDisplay(player)
end

-- Configura o ping display para novos jogadores
Players.PlayerAdded:Connect(function(player)
    setupPingDisplay(player)
end)

-- Adicionando uma notificação para o usuario do script aproveirtar o script usando uma lib especifica

local notif = loadstring(game:HttpGet("https://raw.githubusercontent.com/insanedude59/notiflib/main/main"))()


notif:Notification("Script --By Emerson","Enjoy the script :)","GothamSemibold","Gotham",5) -- title: <string> description: <string> title font: <string> description font: <string> notification show time: <number>

--[[
PARAM 1: title: <string>
PARAM 2: description: <string>
PARAM 3: title font: <string>
PARAM 4: description font: <string>
PARAM 5: notification appearance time: <number>

]]

