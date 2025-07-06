
local MyModule = require(game.ReplicatedStorage.MyModule)

local Players = game:GetService("Players")

Players.PlayerAdded:Connect(function(player)
    MyModule.InitializePlayerHealth(player, 100)
    wait(2)
    MyModule.TakeDamage(player, 20)
    wait(2)
    MyModule.Heal(player, 10)
    wait(2)
    MyModule.TakeDamage(player, 90)
end)


