execute store result score $result temp run random value 0..2
execute if score $result temp matches 0 at @s run playsound cs16:glock18-2 voice @a ~ ~ ~ 1 .95
execute if score $result temp matches 1 at @s run playsound cs16:glock18-2 voice @a ~ ~ ~ 1 1
execute if score $result temp matches 2 at @s run playsound cs16:glock18-2 voice @a ~ ~ ~ 1 1.05