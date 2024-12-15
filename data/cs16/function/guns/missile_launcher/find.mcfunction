#declare score_holder $max The highest entity score
scoreboard players set $max cs16.temp 0

tag @a add missile_target
# Assign unique score to each entity
execute as @a[tag=missile_target] store result score @s cs16.temp run scoreboard players add $max cs16.temp 1

#declare score_holder $filter The rule by which to filter entities
scoreboard players set $filter cs16.temp 0

function cs16:guns/missile_launcher/internal/filter/iteration

execute as @e[tag=missile_target] run effect give @s glowing 1 1 true