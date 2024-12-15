execute unless score @s cs16.entity.block_placer.empty matches 1 at @s if block ~ ~ ~ air run scoreboard players set @s cs16.entity.block_placer.empty 1
execute if score @s cs16.entity.block_placer.empty matches 1 run scoreboard players add @s cs16.entity.block_placer.delay 1
execute if score @s cs16.entity.block_placer.delay matches 1 run tag @s remove breakable
execute if score @s cs16.entity.block_placer.delay matches 200.. run function cs16:entities/marker/block_placer/place_block
