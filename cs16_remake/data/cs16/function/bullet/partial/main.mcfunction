tp @s ~ ~ ~

scoreboard players set $hit_block cs16.gun.data 0
execute if block ~ ~ ~ #minecraft:slabs at @s run function cs16:bullet/partial/slabs
execute if block ~ ~ ~ #minecraft:stairs at @s run function cs16:bullet/partial/stairs
execute if block ~ ~ ~ #minecraft:doors at @s run function cs16:bullet/partial/doors
execute if block ~ ~ ~ #minecraft:campfires at @s run function cs16:bullet/partial/campfires
execute if block ~ ~ ~ #minecraft:walls at @s run function cs16:bullet/partial/walls
execute if block ~ ~ ~ #minecraft:trapdoors at @s run function cs16:bullet/partial/trapdoors