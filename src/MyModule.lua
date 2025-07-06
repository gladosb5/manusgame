local MyModule = {}

local playerHealth = {}

function MyModule.InitializePlayerHealth(player, initialHealth)
    playerHealth[player.UserId] = initialHealth
    print(player.Name .. "'s health initialized to " .. initialHealth)
end

function MyModule.TakeDamage(player, damageAmount)
    local currentHealth = playerHealth[player.UserId]
    if currentHealth then
        currentHealth = currentHealth - damageAmount
        playerHealth[player.UserId] = currentHealth
        print(player.Name .. " took " .. damageAmount .. " damage. Current health: " .. currentHealth)
        if currentHealth <= 0 then
            print(player.Name .. " has been defeated!")
            -- Potentially add game over logic here
        end
    else
        print("Error: Player health not initialized for " .. player.Name)
    end
end

function MyModule.Heal(player, healAmount)
    local currentHealth = playerHealth[player.UserId]
    if currentHealth then
        currentHealth = currentHealth + healAmount
        playerHealth[player.UserId] = currentHealth
        print(player.Name .. " healed " .. healAmount .. ". Current health: " .. currentHealth)
    else
        print("Error: Player health not initialized for " .. player.Name)
    end
end

function MyModule.GetHealth(player)
    return playerHealth[player.UserId]
end

return MyModule


