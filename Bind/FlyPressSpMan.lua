local moving = false
local player = game.Players.LocalPlayer
local character = player.Character or player.CharacterAdded:Wait()
local humanoidRootPart = character:WaitForChild("HumanoidRootPart")
local humanoid = character:WaitForChild("Humanoid")
local runService = game:GetService("RunService")
local movementSpeed = 100

-- Mantém a animação
local animation = Instance.new("Animation")
animation.AnimationId = "rbxassetid://78547941116306"
local animator = humanoid:FindFirstChildOfClass("Animator") or humanoid:WaitForChild("Animator")
local animationTrack

local function moveBasedOnCamera()
    while moving do
        local camera = workspace.CurrentCamera -- Obtém a câmera atual
        local lookVector = camera.CFrame.LookVector -- Direção em que a câmera está olhando
        
        -- Movimento horizontal e vertical
        local forwardDirection = Vector3.new(lookVector.X, 0, lookVector.Z).Unit
        local verticalDirection = math.clamp(lookVector.Y, -1, 1) -- Controle do eixo Y

        -- Alinha o corpo do jogador com a direção da câmera
        humanoidRootPart.CFrame = CFrame.new(humanoidRootPart.Position, humanoidRootPart.Position + lookVector)

        -- Define a velocidade do jogador
        humanoidRootPart.Velocity = (forwardDirection * movementSpeed) + Vector3.new(0, verticalDirection * movementSpeed, 0)
        
        runService.Stepped:Wait()
    end
end

-- Função para ativar o voo
local function activateFly()
    moving = true
    -- Reproduz a animação de voo
    animationTrack = animator:LoadAnimation(animation)
    animationTrack:Play()
    moveBasedOnCamera()
end

-- Função para desativar o voo
local function deactivateFly()
    moving = false
    -- Para a animação de voo
    if animationTrack then
        animationTrack:Stop()
    end
end

-- Conexões de Input
local userInputService = game:GetService("UserInputService")

userInputService.InputBegan:Connect(function(input, gameProcessed)
    if gameProcessed then return end
    if input.KeyCode == Enum.KeyCode.LeftControl then
        activateFly()
    end
end)

userInputService.InputEnded:Connect(function(input, gameProcessed)
    if input.KeyCode == Enum.KeyCode.LeftControl then
        deactivateFly()
    end
end)
