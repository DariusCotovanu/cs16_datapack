
function cs16:player/actionbar

execute if entity @s[scores={deaths=1..},nbt={Health:20f}] run function cs16:player/handlers/on_respawn

execute if score @s[] cs16.player.threw_grenade matches 1.. at @s run function cs16:grenade/f0

execute if score @s cs16.player.fired_gun matches 1 run function cs16:guns/model
execute if score @s cs16.player.fired_gun matches 1.. run scoreboard players remove @s cs16.player.fired_gun 1


execute store result score prev cs16.gun.uid run scoreboard players get @s cs16.gun.uid
execute store result score @s cs16.gun.uid run data get entity @s SelectedItem.components.minecraft:custom_data.gun.uid
execute if score @s cs16.gun.uid matches -1 run function cs16:guns/give_id
execute unless score @s cs16.gun.uid = prev cs16.gun.uid run function cs16:player/handlers/on_gun_change


execute if score @s cs16.player.reloading matches 1 run function cs16:player/reload/main

execute if score @s cs16.player.using_gun matches 0 run function cs16:player/recoil/delay
scoreboard players set @s cs16.player.using_gun 0

execute if score @s cs16.player.gun_use_delay matches 1.. run scoreboard players remove @s cs16.player.gun_use_delay 1


scoreboard players set @s drop 0
execute at @s[] as @e[type=item_display,tag=dropped_gun,sort=nearest,distance=..1] at @s run function cs16:guns/dropped/main

execute if predicate td:holding_wrench as @e[type=marker,distance=..15] at @s run particle electric_spark ~.5 ~.5 ~.5