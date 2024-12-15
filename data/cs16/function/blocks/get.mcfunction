execute if block ~ ~ ~ #cs16:skip run return 0
loot spawn ~ ~ ~ mine ~ ~ ~ minecraft:netherite_pickaxe[minecraft:enchantments={levels:{silk_touch:1}}]
execute store success score $success temp run data modify storage cs16:temp block.name set from entity @n[type=item,distance=...1] Item.id
kill @n[type=item,distance=..1]
execute if score $success temp matches 0 run return 0
execute align xyz summon marker run function cs16:blocks/spawn_block_placer
