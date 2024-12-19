summon marker ^ ^ ^-.25 {UUID:[I;15,0,0,3]}

execute store result score $rotxz temp run data get entity @s Rotation[0]
execute store result score $roty temp run data get entity @s Rotation[1]

execute if score $rotxz temp matches -90..-1 run function cs16:bullet/block_face_direction_1
execute if score $rotxz temp matches -180..-91 run function cs16:bullet/block_face_direction_2
execute if score $rotxz temp matches 90..179 run function cs16:bullet/block_face_direction_3
execute if score $rotxz temp matches 0..89 run function cs16:bullet/block_face_direction_4
execute if score $roty temp matches 0..90 run scoreboard players set $direction_y temp -1
execute if score $roty temp matches -90..-1 run scoreboard players set $direction_y temp 0

execute align xyz positioned ~.5 ~.5 ~.5 run function cs16:bullet/block_face
kill F-0-0-0-3
kill F-0-0-0-4