scoreboard players add @s cs16.player.reloading_delay 1

scoreboard players operation $temp temp = @s cs16.player.reloading_delay

scoreboard players operation $s temp = @s cs16.gun.reload_time
scoreboard players operation $s temp -= $temp temp
scoreboard players operation $ms temp = $s temp
scoreboard players operation $s temp /= $20 const

scoreboard players operation $ms temp *= $10 const
scoreboard players operation $ms temp /= $20 const
scoreboard players operation $ms temp %= $10 const
execute if score $temp temp matches 0 run scoreboard players add @s cs16.actionbar 1

execute if score $s temp matches 1.. run title @s[] actionbar [{"text":"Reloading ","color":"yellow"},{"score":{"name": "$s","objective": "temp"}},":",{"score":{"name": "$ms","objective": "temp"}}]
execute if score $s temp matches 0 run title @s[] actionbar [{"text":"Reloading 0:","color":"yellow"},{"score":{"name": "$ms","objective": "temp"}}]

execute if score @s cs16.actionbar matches 4.. run scoreboard players set @s cs16.actionbar 0

execute if score @s cs16.player.reloading_delay > @s cs16.gun.reload_time run function cs16:player/reload/exe