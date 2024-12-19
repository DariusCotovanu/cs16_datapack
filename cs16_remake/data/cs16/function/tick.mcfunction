execute as @a run function cs16:player/main

#entities
execute as @e[type=item,tag=grenade] run function cs16:grenade/main
execute as @e[type=block_display,tag=missile] run function cs16:guns/missile_launcher/main


execute if score $transform_item_to_display cs16.global matches 1 as @e[type=item,nbt={OnGround:1b,Item:{components:{"minecraft:custom_data":{gun:{isGun:1b}}}}}] at @s run function cs16:entity/item/gun
execute as @e[type=item_display,tag=dropped_gun,predicate=cs16:tick20] run function cs16:entity/item/clear


execute as @e[type=item_display,tag=bullet_dmg,predicate=cs16:tick20] run function cs16:bullet/clear
execute as @e[type=marker,tag=block_placer,predicate=cs16:tick20] run function cs16:blocks/placer


#-----
execute as @e[type=marker,tag=flame] at @s run function cs16:guns/flame_thrower/flame

execute if score $transform_item_to_display cs16.global matches 1 as @e[type=block_display,tag=block] run function cs16:blocks/main