scoreboard players remove $range cs16.gun.data 1

execute unless block ~ ~ ~ #cs16:pass_thru run return 0
execute positioned ~-.1 ~-.1 ~-.1 as @a[tag=!bullet_check] positioned ~-.8 ~-.8 ~-.8 if entity @s[dx=0,dz=0,dy=0] positioned ~.8 ~.8 ~.8 run function pve:bullet_hit_player

execute if score $range cs16.gun.data matches 1.. positioned ^ ^ ^.25 run function pve:entity/enemy/bullet_raycast
