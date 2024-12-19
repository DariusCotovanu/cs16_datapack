scoreboard players remove $i temp 1
execute unless block ~ ~-1 ~ #cs16:pass_thru run scoreboard players set $i temp 0
execute unless block ~ ~ ~ #cs16:pass_thru run scoreboard players set $i temp 0
execute unless block ~ ~1 ~ #cs16:pass_thru run scoreboard players set $i temp 0
execute if score $i temp matches 0 positioned ~ ~-1 ~ run return run tp @e[predicate=cs16:entity_player] ^ ^ ^-.4
execute if score $i temp matches 1.. positioned ^ ^ ^.1 run function cs16:guns/gravity_gun/raycast