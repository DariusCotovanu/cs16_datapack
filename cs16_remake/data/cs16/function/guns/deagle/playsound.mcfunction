execute store result score $result temp run random value 0..2
execute if score $result temp matches 0 at @s run playsound cs16:deagle voice @a ~ ~ ~ 1 .95
execute if score $result temp matches 1 at @s run playsound cs16:deagle voice @a ~ ~ ~ 1 1
execute if score $result temp matches 2 at @s run playsound cs16:deagle voice @a ~ ~ ~ 1 1.05
execute at @s facing entity @s eyes as @a[distance=16..32] at @s positioned ^ ^ ^5 run playsound cs16:deagle voice @s ~ ~ ~ 0.2 1
execute at @s facing entity @s eyes as @a[distance=32.01..64] at @s positioned ^ ^ ^5 run playsound cs16:deagle voice @s ~ ~ ~ 0.05 1