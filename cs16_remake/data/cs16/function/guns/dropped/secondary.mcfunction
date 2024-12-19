execute store success score hasSecondary cs16.gun.dropped.status if data entity @p[distance=..1.5,limit=1,tag=!checked_s] Inventory[{tag:{gun:{secondary:1b}}}]
execute if score hasSecondary cs16.gun.dropped.status matches 1.. run tag @p[distance=..1,limit=1,tag=!checked_s] add checked_s
execute if score hasSecondary cs16.gun.dropped.status matches 0 run function cs16:guns/pickup
execute if score hasSecondary cs16.gun.dropped.status matches 0 if entity @s[tag=!inv] run kill @s