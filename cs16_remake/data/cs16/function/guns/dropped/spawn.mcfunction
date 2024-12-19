
execute store result entity @s Rotation[0] float 0.1 run scoreboard players get item_rotation temp
data modify entity @s item set from storage cs16:temp item
data merge entity @s {transformation:{left_rotation:[0.0f,0f,.707f,.707f],right_rotation:[0f,0f,0f,1f],translation:[0.0f,0.1f,0.0f],scale:[1.0f,1.0f,1.0f]},Tags:["dropped_gun"],Glowing:1b,glow_color_override:0}

execute store result score $gun_id temp run data get entity @s item.components.minecraft:custom_data.gun.id
execute if score $gun_id temp matches 30 run tag @s add awp
execute if entity @s[tag=awp] run data merge entity @s {transformation:{left_rotation:[0.0f,0f,0.707f,0.707f],right_rotation:[0f,0f,0f,1.0f],translation:[0.0f,0.1f,0.0f],scale:[0.6f,0.6f,0.6f]},item_display:"thirdperson_righthand"}
execute if score $gun_id temp matches 99 run tag @s add grenade