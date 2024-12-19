scoreboard players remove $range cs16.gun.data 1

execute if score $hit_block cs16.gun.data matches 0 unless block ~ ~ ~ #cs16:pass_thru run function cs16:bullet/hit_block
execute if score $hit_block cs16.gun.data matches 1 if block ~ ~ ~ #cs16:pass_thru run scoreboard players set $hit_block cs16.gun.data 0
execute positioned ~-.1 ~-.1 ~-.1 as @e[dx=0,dz=0,dy=0,type=!#cs16:unwanted_mob,tag=!inv,tag=!this,tag=!bullet_check] positioned ~-.8 ~-.8 ~-.8 if entity @s[dx=0,dz=0,dy=0] positioned ~.8 ~.8 ~.8 run function cs16:bullet/hit_entity
#execute positioned ~-.15 ~ ~-.15 as @a[dx=0,dz=0,tag=!bullet_miss,tag=!bullet_check,tag=!this] positioned ~-.7 ~-2.25 ~-.7 if entity @s[dx=0] run function cs16:bullet/near_player

execute if score $range cs16.gun.data matches 1.. positioned ^ ^ ^.25 run function cs16:bullet/raycast
