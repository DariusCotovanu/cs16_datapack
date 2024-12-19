execute if score $wave pve.global matches 10.. run return run tag @a remove pve
scoreboard players reset * pve.data
scoreboard players add $wave pve.global 1
execute store result storage pve:wave level int 1.0 run scoreboard players add $level pve.global 1
function pve:wave with storage pve:wave

scoreboard players set $level pve.global 0
execute as @a run function pve:get_player_levels
execute store result score $player_count temp if entity @a[tag=pve]
scoreboard players operation $level pve.global /= $player_count temp
scoreboard players operation $i temp = $level pve.global
function pve:spawn_recursive

function pve:entity/enemy/spawn_husk
function pve:entity/enemy/spawn_husk
function pve:entity/enemy/spawn_husk
function pve:entity/enemy/spawn_husk
function pve:entity/enemy/spawn_skelly
function pve:entity/enemy/spawn_skelly


spreadplayers ~ ~ 1 30 false @e[type=#pve:enemy,tag=bla]
execute as @e[tag=bla] run attribute @s follow_range base set 100
execute if score $level pve.global matches 8..12 as @e[tag=pve_enemy,limit=2] run function pve:entity/enemy/equip
execute if score $level pve.global matches 13.. as @e[tag=pve_enemy,limit=6] run function pve:entity/enemy/equip

scoreboard players set $wave_completed pve.global 0

execute store result bossbar pve:enemy_left max if entity @e[type=#pve:enemy]
bossbar set pve:enemy_left players @a

scoreboard players add $test temp 1
execute if score $level pve.global matches ..10 unless predicate cs16:02 run return 0
execute if score $level pve.global matches 11.. unless predicate cs16:05 run return 0
execute store result score $result temp run random value 0..2
execute if score $result temp matches 0 run return run execute summon husk run function pve:boss
execute if score $result temp matches 1 run return run execute summon blaze run function pve:boss
execute if score $result temp matches 2 run return run execute summon skeleton run function pve:boss
