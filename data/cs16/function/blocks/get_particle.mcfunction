loot spawn ~ ~ ~ mine ~ ~ ~ minecraft:netherite_pickaxe[minecraft:enchantments={levels:{silk_touch:1}}]
data modify storage cs16:temp particle.block.name set from entity @e[type=item,sort=nearest,limit=1] Item.id
kill @e[type=item,sort=nearest,limit=1,distance=..1]

function cs16:blocks/play_particle with storage cs16:temp particle.block