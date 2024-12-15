execute store result score hasPrimary cs16.gun.dropped.status if data entity @p[distance=..1.5,limit=1] Inventory[{tag:{gun:{primary:1b}}}]
execute if score hasPrimary cs16.gun.dropped.status >= @p cs16.player.max_primary run tag @p[distance=..1.5,limit=1] add checked_p
execute if score hasPrimary cs16.gun.dropped.status < @p cs16.player.max_primary if entity @s[tag=!awp] run function cs16:guns/pickup
execute if score hasPrimary cs16.gun.dropped.status < @p cs16.player.max_primary if entity @s[tag=awp] run function cs16:guns/awp/pickup
execute if score hasPrimary cs16.gun.dropped.status < @p cs16.player.max_primary if entity @s[tag=!inv] run kill @s