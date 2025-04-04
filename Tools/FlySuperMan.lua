local tool = Instance.new("Tool")
tool.Name = "Fly"
tool.Parent = game.Players.LocalPlayer.Backpack
tool.RequiresHandle = false

local moving = false
local player = game.Players.LocalPlayer
local character = player.Character or player.CharacterAdded:Wait()
local humanoidRootPart = character:WaitForChild("HumanoidRootPart")
local humanoid = character:WaitForChild("Humanoid")
local runService = game:GetService("RunService")
local movementSpeed = 125

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

tool.Equipped:Connect(function()
    moving = true
    -- Reproduz a animação quando a ferramenta é equipada
    animationTrack = animator:LoadAnimation(animation)
    animationTrack:Play()
    moveBasedOnCamera()
end)

tool.Unequipped:Connect(function()
    moving = false
    -- Para a animação quando a ferramenta é desequipada
    if animationTrack then
        animationTrack:Stop()
    end
end)
