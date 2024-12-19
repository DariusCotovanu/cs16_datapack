function cs16:guns/missile_launcher/find
execute unless entity @a[tag=missile_target,limit=1] run return run tellraw @s {"text":"No target found","color":"gray"}

scoreboard players operation $get owner.id = @s player.id
execute as @a[tag=missile_target,limit=1] run function cs16:guns/missile_launcher/spawn_missle

execute store result score @s cs16.player.gun_use_delay run data get entity @s SelectedItem.components.minecraft:custom_data.gun.use_delay
