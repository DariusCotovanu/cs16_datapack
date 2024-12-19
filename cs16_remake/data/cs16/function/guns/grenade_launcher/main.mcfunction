execute at @s rotated as @s rotated ~ ~-2 run function cs16:grenade/f1
execute at @s rotated as @s rotated ~1 ~-1 run function cs16:grenade/f1
execute at @s rotated as @s rotated ~2 ~-2 run function cs16:grenade/f1
execute at @s rotated as @s rotated ~-3 ~-3 run function cs16:grenade/f1
#execute at @s rotated as @s rotated ~-2 ~-4 run function cs16:grenade/f1
#execute at @s rotated as @s rotated ~-2.5 ~-3.6 run function cs16:grenade/f1
#execute at @s rotated as @s rotated ~1.7 ~2.3 run function cs16:grenade/f1
execute store result score @s cs16.player.gun_use_delay run data get entity @s SelectedItem.components.minecraft:custom_data.gun.use_delay
