--[[
    Este script é responsável por mostrar informações dos jogadores em cima de suas cabeças.
    As informações que serão mostradas são:
    - Ping
    - Dispositivo (Mobile ou PC)
    - Ultimate
    - Personagem

    Este script foi feito por Emerson
]]--

--[Variaveis]--
local Players = game:GetService("Players")
local Player = game.Players.LocalPlayer
local Character = Player.Character or Player.CharacterAdded:Wait()


--[Função que vai criar o TextLabel em cima da cabeça dos jogadores]--
local function InfoLabel(character)
    --[Criação do BillboardGui]--
    local BillboardGui = Instance.new("BillboardGui") -- Criando o BillboardGui
    BillboardGui.Name = "InfoDisplay" -- Nomeando o BillboardGui
    BillboardGui.Adornee = character:WaitForChild("Head") -- Anexando o BillboardGui à cabeça do jogador
    BillboardGui.Size = UDim2.new(0, 100, 0, 50) -- Tamanho do BillboardGui
    BillboardGui.StudsOffset = Vector3.new(0, 2, 0) -- Definindo a posição do BillboardGui
    BillboardGui.AlwaysOnTop = true -- Deixando o BillboardGui sempre visível
    BillboardGui.Parent = character:WaitForChild("Head")
    
    --[Criação do TextLabel]--
    local TextLabel = Instance.new("TextLabel") -- Criando o TextLabel
    TextLabel.Size = UDim2.new(1, 0, 1, 0) -- Definindo o tamanho do TextLabel
    TextLabel.Size = UDim2.new(1, 0, 1, 0) -- Definindo o tamanho do TextLabel
    TextLabel.BackgroundTransparency = 1 -- Deixando o TextLabel sem transparencia
    TextLabel.TextScaled = true -- Deixando o TextLabel escalavel
    TextLabel.TextColor3 = Color3.new(1, 0, 0) -- Definindo a cor do texto para branco
    TextLabel.Parent = BillboardGui -- Definindo o Parent do TextLabel

    return TextLabel -- Retornando o TextLabel
end

--[Função que vai definir as informações no TextLabel]--
local function UpdateInfoLabel(Player, TextLabel)
    -- [Pegando os atributos do jogador]--
    local Ping = Player:GetAttribute("Ping")
    local Device = Player:GetAttribute("Mobile") and "Mobile" or "PC"
    local Ultimate = Player:GetAttribute("Ultimate")
    local CharacterMoveset = Player:GetAttribute("Character")

    -- [Atualizando o texto do TextLabel com base nos atributos disponíveis]--
    if Ping and Ultimate and CharacterMoveset then -- Se o Ping, Ultimate e CharacterMoveset existirem
        TextLabel.Text = "Ping: " .. math.floor(Ping) .. " ms\nDevice: " .. Device .. "\nUltimate: " .. math.floor(Ultimate) .. "%\nCharacter: " .. CharacterMoveset
    elseif Ping and Ultimate then -- Se o Ping e Ultimate existirem
        TextLabel.Text = "Ping: " .. math.floor(Ping) .. " ms\nDevice: " .. Device .. "\nUltimate: " .. math.floor(Ultimate) .. "%\nCharacter: N/A"
    elseif Ping then -- Se o Ping existir
        TextLabel.Text = "Ping: " .. math.floor(Ping) .. " ms\nDevice: " .. Device .. "\nUltimate: N/A\nCharacter: N/A"
    else -- Se não existir nada
        TextLabel.Text = "Ping: N/A\nDevice: " .. Device .. "\nUltimate: N/A\nCharacter: N/A"
    end
end

--[Função que vai configurar o TextLabel para um jogador]--
local function SetupInfoDisplay(Player)
    local Character = Player.Character or Player.CharacterAdded:Wait() -- Pegando o personagem do jogador
    local TextLabel = InfoLabel(Character) -- Criando o TextLabel

    game:GetService("RunService").RenderStepped:Connect(function() -- Conectando o evento RenderStepped
        UpdateInfoLabel(Player, TextLabel) -- Atualizando o TextLabel
    end)

    Player.CharacterAdded:Connect(function(Char) -- Conectando o evento CharacterAdded
        Character = Char -- Atualizando o personagem
        TextLabel = InfoLabel(Character) -- Criando o TextLabel
    end)
end

--[Configurando o TextLabel para todos os jogadores existentes]--
for _, Player in pairs(Players:GetPlayers()) do
    SetupInfoDisplay(Player)
end

--[Configurando o TextLabel para novos jogadores]--
Players.PlayerAdded:Connect(function(Player)
    SetupInfoDisplay(Player)
end)