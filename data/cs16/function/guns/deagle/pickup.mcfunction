data modify storage cs16:temp item.tag set from entity @s item.tag
execute as @a[distance=..1.5,sort=nearest,limit=1,tag=!checked] run function cs16:guns/deagle/give