execute unless score @s cs16.gun.dropped.pickup_delay matches 5.. run scoreboard players add @s cs16.gun.dropped.pickup_delay 1

execute if entity @s[scores={cs16.gun.dropped.pickup_delay=5..}] run function cs16:guns/dropped/give
