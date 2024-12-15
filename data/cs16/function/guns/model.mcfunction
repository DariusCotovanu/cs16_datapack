execute store result storage cs16:temp gunData.model int 1.0 run scoreboard players get @s cs16.gun.model
function cs16:guns/set_model with storage cs16:temp gunData
scoreboard players set @s cs16.player.fired_gun 0