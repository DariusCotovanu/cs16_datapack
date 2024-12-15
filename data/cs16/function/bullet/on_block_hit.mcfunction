function cs16:bullet/get_block_face
execute summon item_display run function cs16:entities/block_display/summon
scoreboard players add $blocks_hit cs16.gun.data 2
scoreboard players operation dmgHead cs16.gun.data /= $2 const
scoreboard players operation dmgChest cs16.gun.data /= $2 const
scoreboard players operation dmgLegs cs16.gun.data /= $2 const
execute if score dmgHead cs16.gun.data matches 0 run scoreboard players set $range cs16.gun.data 0
function cs16:blocks/get_particle
execute store result score $result temp if entity @e[type=marker,tag=block_placer]

execute if score $result temp matches ..1600 align xyz unless entity @n[type=marker,tag=block_destroyer,tag=block,distance=...1] run return run function cs16:blocks/get
execute align xyz as @n[type=marker,tag=block_destroyer,tag=block,distance=...1] run function cs16:blocks/check_block_damage
