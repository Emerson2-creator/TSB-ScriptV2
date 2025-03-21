local tool = Instance.new("Tool")
tool.Name = "Run Tool"
tool.Parent = game.Players.LocalPlayer.Backpack
tool.RequiresHandle = false

local moving = false
local player = game.Players.LocalPlayer
local character = player.Character or player.CharacterAdded:Wait()
local humanoidRootPart = character:WaitForChild("HumanoidRootPart")
local humanoid = character:WaitForChild("Humanoid")
local runService = game:GetService("RunService")
local movementSpeed = 125

local animation = Instance.new("Animation")
animation.AnimationId = "rbxassetid://18897115785"
local animator = humanoid:FindFirstChildOfClass("Animator") or humanoid:WaitForChild("Animator")
local animationTrack

local function moveForward()
    while moving do
        local forwardDirection = humanoidRootPart.CFrame.LookVector
        humanoidRootPart.Velocity = forwardDirection * movementSpeed
        runService.Stepped:Wait()
    end
end

tool.Equipped:Connect(function()
    moving = true
    animationTrack = animator:LoadAnimation(animation)
    animationTrack:Play()
    moveForward()
end)

tool.Unequipped:Connect(function()
    moving = false
    if animationTrack then
        animationTrack:Stop()
    end
end)

local Keybind = PlayerTab:CreateKeybind({
    Name = "Run Keybind",
    CurrentKeybind = "C",
    HoldToInteract = true,
    Flag = "RunKeybind", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
    Callback = function(Keybind)
        if Keybind then
            moving = true
            animationTrack = animator:LoadAnimation(animation)
            animationTrack:Play()
            moveForward()
        else
            moving = false
            if animationTrack then
                animationTrack:Stop()
            end
            humanoidRootPart.Velocity = Vector3.new(0, 0, 0)
        end
    end,
})