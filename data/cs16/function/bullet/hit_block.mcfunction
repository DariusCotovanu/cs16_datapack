scoreboard players set $hit_block cs16.gun.data 1
execute if block ~ ~ ~ #cs16:partial run function cs16:bullet/partial/main
execute if score $hit_block cs16.gun.data matches 1 run function cs16:bullet/on_block_hit
execute if score $blocks_hit cs16.gun.data >= $block_pen cs16.gun.data run scoreboard players set $range cs16.gun.data -1