--(Módulo para los caballos)
local MountsModule = {}
print("MountsModule cargado correctamente")

-- Configuración básica del caballo
MountsModule.HorseSpeed = {
    Walk = 10,  -- Velocidad al caminar
    Trot = 16,  -- Velocidad al trotar
    Gallop = 30 -- Velocidad al galopar
}
MountsModule.StaminaMax = 100
MountsModule.StaminaRegen = 5

-- Función para crear un caballo
function MountsModule:CreateHorse(player)
    local horse = Instance.new("Model")
    horse.Name = player.Name .. "_Horse"
    
    local humanoid = Instance.new("Humanoid", horse)
    humanoid.WalkSpeed = self.HorseSpeed.Walk

    local humanoidRootPart = Instance.new("Part", horse)
    humanoidRootPart.Name = "HumanoidRootPart"
    humanoidRootPart.Size = Vector3.new(2, 3, 4)
    
    -- Hacer que el caballo siga al jugador (esto se mejorará después)
    horse.Parent = game.Workspace
    return horse
end

return MountsModule

