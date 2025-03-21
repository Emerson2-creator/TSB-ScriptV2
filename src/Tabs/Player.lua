
-- Criando uma Nova e primeira Tab
--[[

    -- PlayerTab é uma tab que vai conter todos os as configurações do jogador o jogador vai poder alterar a velocidade, pulo, gravidade e etc. Alguma configurações pode dar erros, agumas coisas estão em beta
   
    
    -- PlayerTab contedo:
    [
    -- Walk speed slider vai mudar a velocidade do jogador
    -- jump power slider vai mudar a força do pulo do jogador
    -- gravity slider vai mudar a gravidade do workspace
    -- noclip toggle vai ativar e desativar o noclip
    -- no stun walkspeed input vai mudar a velocidade do jogador no stun
    ]
    
 ]]--





local PlayerTab = Window:CreateTab("Player", 10747372167) -- Title, Image

-- Criando um slider para alterar a velocidade do jogador (Pasta: Scripts/PlayerTabScripts/WalkSpeed.lua)

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

 -- Criando um slider para alterar o pulo do jogador (Pasta: Scripts/PlayerTabScripts/JumpPower.lua)

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

 -- criando um slider para alterar a gravidade do workspace (Pasta: Scripts/PlayerTabScripts/Gravity.lua)
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

 -- Criando uma function noclip (Pasta: Scripts/PlayerTabScripts/Noclip.lua)

local Noclip = nil
local Clip = nil

local floatName = "YourFloatName" -- Replace "YourFloatName" with the actual name you intend to use

function noclip()
    Clip = false
    local function Nocl()
        if Clip == false and game.Players.LocalPlayer.Character ~= nil then
            for _,v in pairs(game.Players.LocalPlayer.Character:GetDescendants()) do
                if v:IsA('BasePart') and v.CanCollide and v.Name ~= floatName then
                    v.CanCollide = false
                end
            end
        end
        wait(0.21) -- basic optimization
    end
    Noclip = game:GetService('RunService').Stepped:Connect(Nocl)
end

function clip()
    if Noclip then Noclip:Disconnect() end
    Clip = true
end

-- Toggle to enable/disable noclip (Pasta: Scripts/PlayerTabScripts/Noclip.lua)

local NoclipToggle = PlayerTab:CreateToggle({
    Name = "Noclip", -- Toggle name
    CurrentValue = false, -- Initial value
    Flag = "ToggleNoclip", -- Flag is the identifier for the config file
    Callback = function(Value)
        if Value then
            noclip()
        else
            clip()
        end
    end,
})

-- criando um input para no stun walkspeed (Pasta: Scripts/PlayerTabScripts/NoStunWalkSpeed.lua)

local NoStunWalkSpeedInput = PlayerTab:CreateInput({
    Name = "No Stun WalkSpeed (BETA) (put (-) to decrease)",
    CurrentValue = "0",
    PlaceholderText = "No Stun WalkSpeed",
    RemoveTextAfterFocusLost = false,
    Flag = "NoStunWalkSpeed",
    Callback = function(Text)
        local function isNumber(str)
            return tonumber(str) ~= nil or str == 'inf'
        end
        local tspeed = tonumber(Text)
        local hb = game:GetService("RunService").Heartbeat
        local tpwalking = true
        local player = game:GetService("Players")
        local lplr = player.LocalPlayer
        local chr = lplr.Character
        local hum = chr and chr:FindFirstChildWhichIsA("Humanoid")
        while tpwalking and hb:Wait() and chr and hum and hum.Parent do
            if hum.MoveDirection.Magnitude > 0 then
                if tspeed and isNumber(tspeed) then
                    chr:TranslateBy(hum.MoveDirection * tspeed)
                else
                    chr:TranslateBy(hum.MoveDirection)
                end
            end
        end
    end,
 })