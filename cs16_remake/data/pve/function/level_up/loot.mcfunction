scoreboard players reset @s pve.levelup_health
scoreboard players reset @s pve.levelup_speed
scoreboard players reset @s pve.levelup_loot


scoreboard players add @s pve.loot_level 1
function pve:set_gun_data

scoreboard players remove @s pve.levelup_points 1
execute if score @s pve.levelup_points matches 1.. run function pve:level_up/repeat
