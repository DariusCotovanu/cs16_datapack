scoreboard players operation $temp0 temp = $block_pen cs16.gun.data
scoreboard players operation $temp0 temp -= $blocks_hit cs16.gun.data
scoreboard players operation @s cs16.entity.block_damage += $temp0 temp
scoreboard players add @s cs16.entity.block_damage 1
execute if score @s cs16.entity.block_damage matches 20.. at @s run function cs16:blocks/break
