execute store result score @s player.health run scoreboard players get $result cs16.temp
tag @s add cs16
execute at @s run spreadplayers ~ ~ 4 15 under 63 false @s
data modify entity @s DeathLootTable set value ""