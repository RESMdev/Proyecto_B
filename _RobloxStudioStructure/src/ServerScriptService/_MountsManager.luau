--(Control de caballos)
local ReplicatedStorage = game:GetService("ReplicatedStorage")
local Players = game:GetService("Players")

local MountsModule = require(ReplicatedStorage.Modules.MountsModule)

Players.PlayerAdded:Connect(function(player)
    player.CharacterAdded:Connect(function(character)
        local horse = MountsModule:CreateHorse(player)
        horse.Parent = workspace
    end)
end)
