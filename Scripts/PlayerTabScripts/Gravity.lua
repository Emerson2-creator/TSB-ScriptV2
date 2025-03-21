 -- criando um slider para alterar a gravidade do workspace
 local GravitySlider = PlayerTab:CreateSlider({
    Name = "Gravity",
    Range = {0, 500},
    Increment = 1,
    Suffix = "Gravity",
    CurrentValue = 196.2,
    Flag = "Slider3", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
    Callback = function(Value)
        game.Workspace.Gravity = Value
    end,
 })