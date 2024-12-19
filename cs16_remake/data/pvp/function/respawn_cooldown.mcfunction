scoreboard players remove @s pvp.respawn_cooldown 1
spectate @n[type=block_display,predicate=cs16:entity_player,limit=1]
scoreboard players operation $temp0 temp = @s pvp.respawn_cooldown
scoreboard players operation $temp0 temp %= $5 const
execute if score $temp0 temp matches 0 as @n[type=block_display,predicate=cs16:entity_player,limit=1] run function pvp:track_player
execute if score @s pvp.respawn_cooldown matches ..1 run function pvp:respawn