execute unless entity @s[scores={player.id=1..}] run function cs16:player/init
function cs16:player/actionbar

execute if entity @s[tag=using_gravity_gun] run function cs16:guns/gravity_gun/main
execute if entity @s[scores={cs16.player.threw_grenade=1..}] at @s run function cs16:grenade/f0


#Detect if gun has been changed
execute store result score prev cs16.gun.uid run scoreboard players get @s cs16.gun.uid
execute store result score @s cs16.gun.uid run data get entity @s SelectedItem.components.minecraft:custom_data.gun.uid
execute if score @s cs16.gun.uid matches -1 run function cs16:guns/give_id
execute unless score @s cs16.gun.uid = prev cs16.gun.uid run function cs16:player/on/gun_change


execute if score @s cs16.player.reloading matches 1 run function cs16:player/reload/main
execute if entity @s[tag=recoil_delay] run function cs16:player/recoil/delay

execute if entity @s[scores={cs16.player.gun_use_delay=1..}] run scoreboard players remove @s cs16.player.gun_use_delay 1

execute if score $transform_item_to_display cs16.global matches 1 at @s[predicate=cs16:sneaking] as @e[type=item_display,tag=dropped_gun,sort=nearest,distance=..2] at @s run function cs16:guns/dropped/main