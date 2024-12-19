scoreboard players reset @s pve.levelup_health
scoreboard players reset @s pve.levelup_speed
scoreboard players reset @s pve.levelup_loot



scoreboard players add @s pve.speed_level 5
scoreboard players set $temp0 temp 100
scoreboard players operation $temp0 temp += @s pve.speed_level 
execute store result storage cs16:temp levels.speed float 0.001 run scoreboard players get $temp0 temp
function pve:level_up/apply_speed with storage cs16:temp levels
scoreboard players remove @s pve.levelup_points 1
execute if score @s pve.levelup_points matches 1.. run function pve:level_up/repeat