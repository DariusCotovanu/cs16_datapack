execute store result score $result cs16.temp run random value 0..2

execute if score $result cs16.temp matches 0 at @s run playsound cs16:usp_unsil voice @a ~ ~ ~ 0.76 .95
execute if score $result cs16.temp matches 1 at @s run playsound cs16:usp_unsil voice @a ~ ~ ~ 0.6 1
execute if score $result cs16.temp matches 2 at @s run playsound cs16:usp_unsil voice @a ~ ~ ~ 0.7 1.05