-- Variáveis de controle
local TOGGLE_KEY = Enum.KeyCode.LeftControl -- Tecla para alternar o voo
local FLYING = false -- Status do voo
local CONTROL = {F = 0, B = 0, L = 0, R = 0, Q = 0, E = 0}
local lCONTROL = {F = 0, B = 0, L = 0, R = 0, Q = 0, E = 0}
local SPEED = 50 -- Velocidade padrão
local player = game.Players.LocalPlayer
local character = player.Character or player.CharacterAdded:Wait()
local humanoid = character:WaitForChild("Humanoid")
local T = character:WaitForChild("HumanoidRootPart")
local IYMouse = player:GetMouse()

-- Animação de voo
local animation = Instance.new("Animation")
animation.AnimationId = "rbxassetid://78547941116306"
local animator = humanoid:FindFirstChildOfClass("Animator") or humanoid:WaitForChild("Animator")
local animationTrack

-- Criação da UI
local screenGui = Instance.new("ScreenGui")
screenGui.Parent = player:WaitForChild("PlayerGui")

local frame = Instance.new("Frame")
frame.Size = UDim2.new(0, 250, 0, 130)
frame.Position = UDim2.new(0.5, -125, 0.8, -65)
frame.BackgroundColor3 = Color3.new(0.1, 0.1, 0.1)
frame.Parent = screenGui
frame.Active = true
frame.Draggable = true -- Permite arrastar o UI

local flyStatusLabel = Instance.new("TextLabel")
flyStatusLabel.Size = UDim2.new(1, 0, 0.3, 0)
flyStatusLabel.Position = UDim2.new(0, 0, 0, 0)
flyStatusLabel.Text = "Fly Status: OFF"
flyStatusLabel.TextColor3 = Color3.new(1, 1, 1)
flyStatusLabel.BackgroundTransparency = 1
flyStatusLabel.Font = Enum.Font.SourceSansBold
flyStatusLabel.TextSize = 20
flyStatusLabel.Parent = frame

local speedLabel = Instance.new("TextLabel")
speedLabel.Size = UDim2.new(1, 0, 0.2, -10)
speedLabel.Position = UDim2.new(0, 0, 0.3, 0)
speedLabel.Text = "Speed: " .. SPEED
speedLabel.TextColor3 = Color3.new(1, 1, 1)
speedLabel.BackgroundTransparency = 1
speedLabel.Font = Enum.Font.SourceSans
speedLabel.TextSize = 18
speedLabel.Parent = frame

local speedInput = Instance.new("TextBox")
speedInput.Size = UDim2.new(1, -20, 0.3, -10)
speedInput.Position = UDim2.new(0, 10, 0.6, 0)
speedInput.PlaceholderText = "Set Speed"
speedInput.Text = ""
speedInput.TextColor3 = Color3.new(1, 1, 1)
speedInput.BackgroundColor3 = Color3.new(0.2, 0.2, 0.2)
speedInput.Font = Enum.Font.SourceSans
speedInput.TextSize = 18
speedInput.Parent = frame

-- Função para atualizar a UI
local function updateUI()
    flyStatusLabel.Text = "Fly Status: " .. (FLYING and "ON" or "OFF")
    speedLabel.Text = "Speed: " .. SPEED
end

-- Função para alterar o atributo S_AutoRun
local function updateAutoRun(state)
    player:SetAttribute("S_AutoRun", state)
end

-- Função FLY
local function FLY()
    FLYING = true
    updateUI()
    updateAutoRun(false) -- Desativa S_AutoRun

    -- Reproduz a animação de voo
    animationTrack = animator:LoadAnimation(animation)
    animationTrack:Play()

    local BG = Instance.new('BodyGyro')
    local BV = Instance.new('BodyVelocity')
    BG.P = 9e4
    BG.Parent = T
    BV.Parent = T
    BG.maxTorque = Vector3.new(9e9, 9e9, 9e9)
    BG.cframe = T.CFrame
    BV.velocity = Vector3.new(0, 0, 0)
    BV.maxForce = Vector3.new(9e9, 9e9, 9e9)

    task.spawn(function()
        repeat
            task.wait()
            
            -- Atualiza a velocidade com base nos controles
            BV.velocity = ((workspace.CurrentCamera.CFrame.LookVector * (CONTROL.F + CONTROL.B)) + 
                          ((workspace.CurrentCamera.CFrame.RightVector * (CONTROL.L + CONTROL.R))) +
                          Vector3.new(0, (CONTROL.Q + CONTROL.E), 0)) * SPEED

            -- Atualiza a orientação do jogador para seguir a câmera
            BG.cframe = workspace.CurrentCamera.CFrame
        until not FLYING

        BG:Destroy()
        BV:Destroy()
        CONTROL = {F = 0, B = 0, L = 0, R = 0, Q = 0, E = 0}
        lCONTROL = {F = 0, B = 0, L = 0, R = 0, Q = 0, E = 0}
        if character:FindFirstChildOfClass('Humanoid') then
            character:FindFirstChildOfClass('Humanoid').PlatformStand = false
        end
    end)
end

-- Função NOFLY
local function NOFLY()
    FLYING = false
    updateUI()
    updateAutoRun(true) -- Ativa S_AutoRun

    -- Para a animação de voo
    if animationTrack then
        animationTrack:Stop()
    end

    if character:FindFirstChildOfClass('Humanoid') then
        character:FindFirstChildOfClass('Humanoid').PlatformStand = false
    end
end

-- Função para definir a velocidade com o input
speedInput.FocusLost:Connect(function(enterPressed)
    if enterPressed then
        local newSpeed = tonumber(speedInput.Text)
        if newSpeed and newSpeed > 0 then
            SPEED = newSpeed
            updateUI()
        else
            speedInput.Text = "" -- Reseta o input se inválido
        end
    end
end)

-- Conexões de teclas
game:GetService("UserInputService").InputBegan:Connect(function(input, gameProcessed)
    if gameProcessed then return end
    if input.KeyCode == TOGGLE_KEY then
        if FLYING then
            NOFLY()
        else
            FLY()
        end
    elseif FLYING then
        if input.KeyCode == Enum.KeyCode.W then
            CONTROL.F = SPEED
        elseif input.KeyCode == Enum.KeyCode.S then
            CONTROL.B = -SPEED
        elseif input.KeyCode == Enum.KeyCode.A then
            CONTROL.L = -SPEED
        elseif input.KeyCode == Enum.KeyCode.D then
            CONTROL.R = SPEED
        elseif input.KeyCode == Enum.KeyCode.E then
            CONTROL.Q = SPEED * 2
        elseif input.KeyCode == Enum.KeyCode.Q then
            CONTROL.E = -SPEED * 2
        end
    end
end)

game:GetService("UserInputService").InputEnded:Connect(function(input, gameProcessed)
    if FLYING then
        if input.KeyCode == Enum.KeyCode.W then
            CONTROL.F = 0
        elseif input.KeyCode == Enum.KeyCode.S then
            CONTROL.B = 0
        elseif input.KeyCode == Enum.KeyCode.A then
            CONTROL.L = 0
        elseif input.KeyCode == Enum.KeyCode.D then
            CONTROL.R = 0
        elseif input.KeyCode == Enum.KeyCode.E then
            CONTROL.Q = 0
        elseif input.KeyCode == Enum.KeyCode.Q then
            CONTROL.E = 0
        end
    end
end)
