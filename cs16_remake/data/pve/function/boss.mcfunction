attribute @s minecraft:armor base set 25
attribute @s minecraft:scale base set 1.5
attribute @s minecraft:movement_speed base set 0.3
attribute @s minecraft:attack_damage base set 15
attribute @s minecraft:max_health base set 200
attribute @s minecraft:knockback_resistance base set 0.9
data modify entity @s Health set value 300f
data modify entity @s IsBaby set value false
data modify entity @s DeathLootTable set value "pve:entity/boss"
tag @s add boss
tag @s add pve_enemy
execute at @r run spreadplayers ~ ~ 2 30 under 90 false @s
