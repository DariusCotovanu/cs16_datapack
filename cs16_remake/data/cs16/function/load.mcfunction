execute if entity 8-0-0-0-E7 run tellraw @a {"color":"dark_red","text":"ERROR! ! There's is already an entity with \nUUID: 8-0-0-0-E7.\nDatapack won't work without eliminating this entity!","bold":true}
execute if entity 8-0-0-0-E7 run tellraw @a {"color":"gold","text":"Change in code: ./function/player/init_fire_gun UUID of marker entity"}
execute if entity 8-0-0-0-E7 run tellraw @a {"color":"gold","text":"Change in code: ./function/bullet/hit_block UUID of marker entity"}

function cs16:objectives


scoreboard players set $transform_item_to_display cs16.global 0


#grenade scale
scoreboard players set $scale_x temp 1500
scoreboard players set $scale_y temp 1500
scoreboard players set $scale_z temp 1500


execute if score $defaultConfig cs16.global matches 0 run return 0
scoreboard players set $gunRange cs16.global 1024
scoreboard players set $wallbang cs16.global 1
scoreboard players set $gunGrief cs16.global 0
scoreboard players set $preventDeath cs16.global 0
