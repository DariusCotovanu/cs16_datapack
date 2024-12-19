scoreboard players operation @s entity.id = $connection player.id
execute at @s run particle angry_villager
tag @p[tag=this] add using_gravity_gun
tag @s remove find_me
