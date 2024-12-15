scoreboard players operation @s entity.id = $connection entity.id
scoreboard players set @s cs16.grenade.hitx 0
scoreboard players set @s cs16.grenade.hity 0
scoreboard players set @s cs16.grenade.hitz 0
execute store result entity @s Item.components.minecraft:custom_data.id int 1.0 run scoreboard players add grenade=id cs16.grenade.id 1
tag @s remove new