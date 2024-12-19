data modify storage cs16:temp item.components set from entity @s item.components
execute as @a[distance=..1,sort=nearest,limit=1] at @s run function cs16:guns/awp/spawn_item with storage cs16:temp item
playsound minecraft:entity.item.pickup player @a[distance=..15]
data remove storage cs16:temp item
