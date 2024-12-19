execute if entity @s[tag=changed_gun] run function pve:set_gun_data
execute if score @s pve.deaths matches 1.. run function pve:check_if_has_respawned
function pve:check_level
execute if score @s pve.levelup_points matches 1.. run function pve:check_triggers

scoreboard players operation $temp0 temp = @s time_survived
scoreboard players operation $temp1 temp = @s time_survived
scoreboard players operation $temp1 temp *= $10 const
scoreboard players operation $temp1 temp /= $20 const
scoreboard players operation $temp0 temp /= $20 const
scoreboard players operation $temp2 temp = $temp0 temp
execute store result storage pve:time sec int 1.0 run scoreboard players operation $temp0 temp %= $60 const
execute store result storage pve:time min int 1.0 run scoreboard players operation $temp2 temp /= $60 const
execute store result storage pve:time mili int 1.0 run scoreboard players operation $temp1 temp %= $10 const
function pve:set_survive_time with storage pve:time