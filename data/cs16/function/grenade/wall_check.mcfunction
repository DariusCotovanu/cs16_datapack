scoreboard players remove range cs16.temp 1

execute positioned ~-.15 ~-.15 ~-.15 as @s[dx=0] positioned ~-.7 ~-.7 ~-.7 if entity @s[dx=0] run scoreboard players set walled cs16.temp 0
execute if score walled cs16.temp matches 1 if score range cs16.temp matches 1.. positioned ^ ^ ^.25 if block ~ ~ ~ #cs16:pass_thru run function cs16:grenade/wall_check