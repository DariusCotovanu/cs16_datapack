execute store result score $result temp run random value 0..3

execute if score $result temp matches 0 at @s run playsound cs16:m249 voice @a ~ ~ ~ 2 1
execute if score $result temp matches 1 at @s run playsound cs16:m249 voice @a ~ ~ ~ 2 .9
execute if score $result temp matches 2 at @s run playsound cs16:m249 voice @a ~ ~ ~ 2 1.1
execute if score $result temp matches 3 at @s run playsound cs16:m249 voice @a ~ ~ ~ 2 .8
execute at @s facing entity @s eyes as @a[distance=16..50] at @s positioned ^ ^ ^5 run playsound cs16:m249 voice @s ~ ~ ~ 0.15 1
execute at @s facing entity @s eyes as @a[distance=50.01..128] at @s positioned ^ ^ ^5 run playsound cs16:m249 voice @s ~ ~ ~ 0.05 1
