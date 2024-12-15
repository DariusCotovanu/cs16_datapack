execute store result score $result cs16.temp run random value 0..3
execute if score $result cs16.temp matches 0 at @s run playsound minecraft:entity.firework_rocket.blast player @a ~ ~ ~ 1.2 2
execute if score $result cs16.temp matches 1 at @s run playsound minecraft:entity.firework_rocket.blast player @a ~ ~ ~ 1.2 1.7
execute if score $result cs16.temp matches 2 at @s run playsound minecraft:entity.firework_rocket.blast player @a ~ ~ ~ 1.2 1.5
execute if score $result cs16.temp matches 3 at @s run playsound minecraft:entity.firework_rocket.blast player @a ~ ~ ~ 1.2 1.4