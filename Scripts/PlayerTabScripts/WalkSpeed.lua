-- Criando um slider para alterar a velocidade do jogador

local WalkSpeedSlider = PlayerTab:CreateSlider({
    Name = "Walk Speed",
    Range = {0, 500},
    Increment = 1,
    Suffix = "WalkSpeed",
    CurrentValue = 16,
    Flag = "Slider1", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
    Callback = function(Value)
        local Player = game.Players.LocalPlayer
        local Character = Player.Character
        local Humanoid = Character:FindFirstChildOfClass("Humanoid")
        Humanoid.WalkSpeed = Value
    end,
 })