execute unless score @s cs16.gun.dropped.pickup_delay matches 5.. run scoreboard players add @s cs16.gun.dropped.pickup_delay 1
# execute store success score @s[tag=primary,scores={cs16.gun.dropped.pickup_delay=5}] cs16.gun.dropped.status if entity @p[distance=..1,limit=1,tag=!checked_p,gamemode=!spectator]
# execute store success score @s[tag=secondary,scores={cs16.gun.dropped.pickup_delay=5}] cs16.gun.dropped.status if entity @p[distance=..1,limit=1,tag=!checked_s,gamemode=!spectator]
# execute store success score @s[tag=grenade,scores={cs16.gun.dropped.pickup_delay=5}] cs16.gun.dropped.status if entity @p[distance=..1,limit=1,tag=!checked_s,gamemode=!spectator]

# execute if entity @s[tag=primary,scores={cs16.gun.dropped.pickup_delay=5}] run function cs16:guns/dropped/primary
# execute if entity @s[tag=secondary,scores={cs16.gun.dropped.pickup_delay=5}] run function cs16:guns/dropped/secondary
# execute if entity @s[tag=grenade,scores={cs16.gun.dropped.pickup_delay=5}] run function cs16:guns/dropped/grenade

# execute if entity @s[scores={cs16.gun.dropped.pickup_delay=5..}] run function cs16:guns/dropped/primary
# execute if entity @s[scores={cs16.gun.dropped.pickup_delay=5..}] run function cs16:guns/dropped/secondary
# execute if entity @s[scores={cs16.gun.dropped.pickup_delay=5..}] run function cs16:guns/dropped/grenade

execute if entity @s[scores={cs16.gun.dropped.pickup_delay=5..}] run function cs16:guns/dropped/give
