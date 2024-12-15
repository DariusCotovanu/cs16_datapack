
scoreboard players add @s cs16.gun.empty 1
execute if score @s cs16.gun.empty matches 1 at @s run playsound minecraft:block.iron_trapdoor.close player @a ~ ~ ~ 1 2
execute if score @s cs16.gun.empty matches 6.. run scoreboard players set @s cs16.gun.empty 0
execute if score @s cs16.gun.id matches 3 run data modify storage cs16:temp gunData.model set value 10032


function cs16:guns/set_model with storage cs16:temp gunData
