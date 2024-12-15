#data merge entity @s {block_state:{Name:"minecraft:black_stained_glass",Properties:{}},transformation:[0.07000f,0.0000f,0.0000f,-0.0500f,0.0000f,0.07000f,0.0000f,0.0000f,0.0000f,0.0000f,0.07000f,-0.0900f,0.0000f,0.0000f,0.0000f,1.0000f]}
data merge entity @s {item:{id:"minecraft:black_stained_glass"},transformation:{scale:[0.1f,0.1f,0.1f],translation:[-0.05f,-0.05f,-0.05f]}}
tag @s add bullet_dmg

particle ash ~ ~ ~ 0.1 0.1 0.1 0.03 5

execute at @s store success score $result cs16.temp if block ~ ~ ~ minecraft:note_block
execute if score $result cs16.temp matches 1 at @s if block ~ ~-1 ~ #minecraft:planks run playsound minecraft:block.note_block.guitar player @a ~ ~ ~ 1
execute if score $result cs16.temp matches 1 at @s if block ~ ~-1 ~ air run playsound minecraft:block.note_block.harp player @a ~ ~ ~ 1
execute if score $result cs16.temp matches 1 at @s if block ~ ~-1 ~ sand run playsound minecraft:block.note_block.snare player @a ~ ~ ~ 1 2
execute if score $result cs16.temp matches 1 at @s if block ~ ~-1 ~ gold_block run playsound minecraft:block.note_block.bell player @a ~ ~ ~ 1 1


execute if score $face temp matches 0 if score $direction_x temp matches 1 align x run return run tp @s ~.05 ~ ~
execute if score $face temp matches 1 if score $direction_y temp matches 1 align y run return run tp @s ~ ~.05 ~
execute if score $face temp matches 2 if score $direction_z temp matches 1 align z run return run tp @s ~ ~ ~.05


execute if score $face temp matches 0 if score $direction_x temp matches -1 align x run return run tp @s ~1.05 ~ ~
execute if score $face temp matches 1 if score $direction_y temp matches -1 align y run return run tp @s ~ ~1.05 ~
execute if score $face temp matches 2 if score $direction_z temp matches -1 align z run return run tp @s ~ ~ ~1.05

