execute if score @s pve.prev_level < @s pve.level run function pve:levelup
scoreboard players operation @s pve.prev_level = @s pve.level