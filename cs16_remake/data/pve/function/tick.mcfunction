execute if score $wave pve.global matches 10.. run return run function pve:stop
execute as @a[tag=pve] run function pve:tick_player

execute as @e[type=skeleton,predicate=pve:skelly] run function pve:entity/enemy/tick_skeleton
kill @e[type=arrow,limit=2]

execute as @e[type=husk,predicate=pve:husk] run function pve:entity/enemy/tick_s

scoreboard players add $tick_s temp 1
execute if score $tick_s temp matches 20.. run scoreboard players set $tick_s temp 0

execute unless score $wave_completed pve.global matches 1 run function pve:check_wave_state


execute if score $test temp matches 0 at @r run function pve:spawn_enemy
execute if score $wave_completed pve.global matches 1.. run scoreboard players add $test temp 1
execute if score $wave_completed pve.global matches 1.. store result bossbar pve:enemy_left value run scoreboard players get $test temp
execute if score $test temp matches 300.. run scoreboard players set $test temp 0
schedule function pve:tick 1t