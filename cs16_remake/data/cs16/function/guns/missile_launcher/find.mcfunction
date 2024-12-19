#declare score_holder $max The highest entity score
scoreboard players set $max temp 0

tag @a add missile_target
# Assign unique score to each entity
execute as @a[tag=missile_target] store result score @s temp run scoreboard players add $max temp 1

#declare score_holder $filter The rule by which to filter entities
scoreboard players set $filter temp 0

function cs16:guns/missile_launcher/internal/filter/iteration

execute as @e[tag=missile_target] run effect give @s glowing 1 1 true