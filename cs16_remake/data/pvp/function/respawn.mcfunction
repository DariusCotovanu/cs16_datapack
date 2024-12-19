#execute at @s run spreadplayers ~ ~ 5 25 false @s
tag @s remove respawn_cooldown
gamemode survival @s[tag=survival]
gamemode creative @s[tag=creative]
gamemode adventure @s[tag=adventure]
kill @e[type=block_display,predicate=cs16:entity_player]
execute store result score @s cs16.player.health run attribute @s max_health get 100
effect give @s instant_health 1 100