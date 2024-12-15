execute store result score markers cs16.temp at @s if entity @e[type=marker,tag=block_placer,distance=...3]
execute if score markers cs16.temp matches 2.. at @s run kill @e[type=marker,tag=block_placer,limit=1,sort=nearest]
data modify storage cs16:temp block.name set from entity @s Tags[0]
execute store success score $success cs16.temp run data modify storage cs16:temp block.name set from storage cs16:temp check
execute if score $success cs16.temp matches 0 run data modify storage cs16:temp block.name set from entity @s Tags[1]
execute if score $success cs16.temp matches 1 run data modify storage cs16:temp block.name set from entity @s Tags[0]
execute at @s run function cs16:entities/marker/block_placer/place_block1 with storage cs16:temp block
scoreboard players set @s cs16.entity.block_placer.delay 0
scoreboard players set @s cs16.entity.block_placer.empty 0
execute at @s as @a[distance=...5] run spreadplayers ~ ~ 0 1 false @s