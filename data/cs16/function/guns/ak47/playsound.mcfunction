
playsound cs16:ak47 voice @a ~ ~ ~ 0.6
tag @s add sound
execute at @s as @a[distance=16.01..32] at @s facing entity @a[tag=sound,limit=1] eyes positioned ^ ^ ^12 run playsound cs16:ak47 voice @s ~ ~ ~ 0.2 1
execute at @s as @a[distance=32.01..128] at @s facing entity @a[tag=sound,limit=1] eyes positioned ^ ^ ^12 run playsound cs16:ak47 voice @s ~ ~ ~ 0.1 1

tag @s remove sound