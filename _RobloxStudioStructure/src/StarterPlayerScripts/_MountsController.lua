--(Control del sistema de caballos)
local Players = game:GetService("Players")
local ReplicatedStorage = game:GetService("ReplicatedStorage")
local UserInputService = game:GetService("UserInputService")

local MountsModule = require(ReplicatedStorage.Modules.MountsModule)

local player = Players.LocalPlayer
local character = player.Character or player.CharacterAdded:Wait()
local ridingHorse = nil

-- Manejar llamada del caballo con la tecla "H"
UserInputService.InputBegan:Connect(function(input, gameProcessed)
	if gameProcessed then return end

	if input.KeyCode == Enum.KeyCode.H then
		print("Llamando al caballo...")
		ridingHorse = MountsModule:CreateHorse(player)
	end
end)

-- Montar el caballo con la tecla "E"
UserInputService.InputBegan:Connect(function(input, gameProcessed)
	if gameProcessed or not ridingHorse then return end

	if input.KeyCode == Enum.KeyCode.E then
		print("Montando el caballo...")
		character.HumanoidRootPart.Position = ridingHorse.HumanoidRootPart.Position + Vector3.new(0, 2, 0)
		character.Parent = ridingHorse
	end
end)
