scoreboard players set @s spawnBlockPlacer 0
data remove storage cs16:temp block
data modify storage cs16:temp block.name set from entity @s Inventory[{Slot:-106b}].id
execute at @s as @e[type=marker,tag=new,limit=1,sort=nearest] run function cs16:entities/marker/block_placer/get_block
