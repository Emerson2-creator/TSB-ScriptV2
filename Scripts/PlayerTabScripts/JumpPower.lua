 -- Criando um slider para alterar o pulo do jogador

 local JumpPowerSlider = PlayerTab:CreateSlider({
    Name = "Jump Power",
    Range = {0, 500},
    Increment = 1,
    Suffix = "JumpPower",
    CurrentValue = 50,
    Flag = "Slider2", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
    Callback = function(Value)
        local Player = game.Players.LocalPlayer
        local Character = Player.Character
        local Humanoid = Character:FindFirstChildOfClass("Humanoid")
        Humanoid.JumpPower = Value
    end,
 })