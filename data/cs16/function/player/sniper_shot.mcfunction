item replace entity @s weapon.mainhand from entity @s weapon.offhand
item replace entity @s weapon.offhand with air
execute store result score @s cs16.gun.uid run data get entity @s SelectedItem.components.minecraft:custom_data.gun.uid
execute unless score @s cs16.player.gun_use_delay matches 1.. at @s run function cs16:player/handlers/on_gun_use
execute if score @s cs16.player.reloading matches 0 if score @s cs16.player.gun_use_delay matches 0 at @s run tp @s ~ ~ ~ ~ ~-10
execute if score @s cs16.player.gun_use_delay matches 0 run scoreboard players set @s cs16.player.gun_use_delay 30
