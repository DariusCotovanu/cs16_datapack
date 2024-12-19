tag @s add respawn_cooldown
tag @s[gamemode=survival] add survival
tag @s[gamemode=adventure] add adventure
tag @s[gamemode=creative] add creative
scoreboard players reset @s pvp.has_died
gamemode spectator
scoreboard players set @s pvp.respawn_cooldown 80
scoreboard players operation $connection entity.id = @s player.id
data modify storage cs16:temp Rotation set from entity @s Rotation 
execute at @s positioned ~ ~1.64 ~ summon block_display run function pvp:summon_tracker
data remove storage cs16:temp Rotation