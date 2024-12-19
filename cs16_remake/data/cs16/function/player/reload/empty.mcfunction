
scoreboard players add @s cs16.gun.empty 1
execute if score @s cs16.gun.empty matches 1 at @s run playsound minecraft:block.iron_trapdoor.close player @a ~ ~ ~ 1 2
execute if score @s cs16.gun.empty matches 6.. run scoreboard players set @s cs16.gun.empty 0