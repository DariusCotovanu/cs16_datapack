execute as @a run function cs16:player/main

#entities
execute as @e[type=item,tag=grenade] run function cs16:grenade/main
scoreboard players add @e[tag=damage_dealt,type=text_display] cs16.entity.kill_delay 1
kill @e[type=text_display,tag=damage_dealt,scores={cs16.entity.kill_delay=10..}]
execute as @e[type=block_display,tag=missile] run function cs16:guns/missile_launcher/main


#execute as @e[type=item,nbt={OnGround:1b,Item:{components:{"minecraft:custom_data":{gun:{isGun:1b}}}}}] at @s run function cs16:entities/item/gun



scoreboard players add @e[type=item_display,tag=bullet_dmg] cs16.bullet.kill_delay 1
kill @e[type=item_display,tag=bullet_dmg,scores={cs16.bullet.kill_delay=500..}]
#-----

execute as @e[type=marker,tag=flame] at @s run function cs16:guns/flame_thrower/flame

execute as @e[type=skeleton,predicate=cs16:skelly] run function cs16:entities/enemy/tick_skeleton
kill @e[type=arrow,limit=2]

execute as @e[type=husk,predicate=cs16:husk] run function cs16:entities/enemy/tick_s
execute if score $tick_s cs16.temp matches 0 run scoreboard players add @e[type=item_display,tag=dropped_gun] cs16.entity.kill_delay 1
execute if score $tick_s cs16.temp matches 0 run kill @e[type=item_display,tag=dropped_gun,scores={cs16.entity.kill_delay=240..}]
scoreboard players add $tick_s cs16.temp 1
execute if score $tick_s cs16.temp matches 20.. run scoreboard players set $tick_s cs16.temp 0

execute if score $test temp matches 0 run function cs16:spawn_enemy
scoreboard players add $test temp 1

execute if score $test temp matches 3600.. run scoreboard players set $test temp 0
# effect give @a glowing
effect give @a saturation infinite 0 true

execute as @e[type=marker,tag=block_placer,predicate=cs16:tick20] run function cs16:blocks/placer
execute as @e[type=marker,tag=block_destroyer,predicate=cs16:tick20] run function cs16:blocks/destroyer