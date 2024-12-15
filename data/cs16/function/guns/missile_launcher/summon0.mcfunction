data merge entity @s {block_state:{Name:"iron_block"},teleport_duration:1,transformation:{scale:[0.4,0.4,0.8],translation:[-0.2f,-0.2f,0.0f]}}
tag @s add missile

scoreboard players operation @s entity.id = $get player.id
scoreboard players operation @s owner.id = $get owner.id
