execute store result score $result temp if entity @e[type=#pve:enemy,tag=pve_enemy]
execute store result bossbar pve:enemy_left value run scoreboard players get $result temp
bossbar set pve:enemy_left name [{"text":"Enemies Left: ","color":"red"},{"score":{"name": "$result","objective": "temp"}}]
execute if score $result temp matches ..3 run effect give @e[type=#pve:enemy,tag=pve_enemy] glowing 1 0
execute if score $result temp matches 0 run effect give @a regeneration 5 2 true
execute if score $result temp matches 0 run bossbar set pve:enemy_left max 300
execute if score $result temp matches 0 run scoreboard players set $wave_completed pve.global 1
