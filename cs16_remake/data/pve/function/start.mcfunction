execute unless score $wave pve.global matches 0 run return 0
tag @a add pve 
gamerule doMobLoot true
function pve:load
bossbar set pve:enemy_left players @a[tag=pve]
tellraw @a {"text":"Get ready!\nFirst wave is about to spawn in 5 seconds.","color":"green"}
scoreboard players set $test temp 300
execute as @a run function pve:on_respawn
schedule function pve:tick 5s