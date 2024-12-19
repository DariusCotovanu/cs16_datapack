tag @s add this
summon marker ~ ~ ~ {UUID:[I;8,0,0,231]}
data modify entity 8-0-0-0-E7 Rotation set from entity @s Rotation
$execute anchored eyes positioned ^ ^ ^.1 as 8-0-0-0-E7 rotated ~$(XZ) ~$(Y) run function pve:entity/enemy/bullet_raycast
tag @s remove this
tag @e[tag=bullet_check] remove bullet_check
tag @a[tag=bullet_miss] remove bullet_miss

kill 8-0-0-0-E7
