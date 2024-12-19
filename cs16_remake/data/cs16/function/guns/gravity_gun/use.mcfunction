scoreboard players operation $connection player.id = @s player.id
tag @s add this
execute at @s as @e[type=#cs16:gravity_gun,tag=!gravity_gun_immune,distance=..5] run function cs16:guns/gravity_gun/search
tag @s remove this