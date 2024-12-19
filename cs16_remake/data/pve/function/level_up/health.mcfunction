scoreboard players reset @s pve.levelup_health
scoreboard players reset @s pve.levelup_speed
scoreboard players reset @s pve.levelup_loot



scoreboard players add @s pve.health_level 2
scoreboard players set $temp0 temp 20
scoreboard players operation $temp0 temp += @s pve.health_level 
execute store result storage cs16:temp levels.health int 1.0 run scoreboard players get $temp0 temp
function pve:level_up/apply_health with storage cs16:temp levels
scoreboard players remove @s pve.levelup_points 1
execute if score @s pve.levelup_points matches 1.. run function pve:level_up/repeat
