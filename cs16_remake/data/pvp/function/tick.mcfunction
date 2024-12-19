execute unless entity @a[tag=pvp] run return run tellraw @a[tag=is_admin] "No pvp players. Tick stopped for pvp:tick"
execute as @a[tag=pvp] run function pvp:tick_player


schedule function pvp:tick 1t