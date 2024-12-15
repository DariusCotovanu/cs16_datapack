execute as @e[type=marker,distance=..1.5,sort=nearest,limit=1] run function cs16:entities/marker/block_placer/kill
#execute as @e[dx=0,type=!player] positioned ~-.95 ~-.95 ~-.95 if entity @s[dx=0] positioned ~.9 ~.9 ~.9 run say hi
particle crit
scoreboard players remove $range cs16.gun.data 1
execute if score $range cs16.gun.data matches 1.. positioned ^ ^ ^.25 run function cs16:entities/marker/block_placer/raycast