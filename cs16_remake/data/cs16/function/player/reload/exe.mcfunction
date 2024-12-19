scoreboard players operation $temp1 temp = @s cs16.player.bullets


scoreboard players operation @s cs16.player.bullets -= @s cs16.gun.magazine
scoreboard players operation @s cs16.player.bullets *= $-1 const
execute if entity @s[tag=pistol] run function cs16:player/get/pistol_ammo
execute if entity @s[tag=smg] run function cs16:player/get/smg_ammo
execute if entity @s[tag=rifle] run function cs16:player/get/rifle_ammo
scoreboard players operation @s cs16.player.total_bullets -= @s cs16.player.bullets
scoreboard players operation @s cs16.player.bullets = @s cs16.gun.magazine



execute if score @s cs16.player.total_bullets matches ..-1 run scoreboard players operation @s cs16.player.bullets += @s cs16.player.total_bullets
execute if score @s cs16.player.total_bullets matches ..-1 run scoreboard players set @s cs16.player.total_bullets 0
execute store result storage cs16:temp total_bullets int 1.0 run scoreboard players get @s cs16.player.total_bullets
execute store result storage cs16:temp bullets int 1.0 run scoreboard players get @s cs16.player.bullets
item modify entity @s weapon.mainhand cs16:update_magazine_capacity
item modify entity @s weapon.mainhand cs16:update_bullets

scoreboard players operation $temp1 temp -= @s cs16.player.bullets
scoreboard players operation $temp1 temp *= $-1 const
execute store result storage cs16:temp bullets int 1.0 run scoreboard players get $temp1 temp

function cs16:player/remove_ammo with storage cs16:temp
execute if entity @s[tag=pistol] run function cs16:player/get/pistol_ammo
execute if entity @s[tag=smg] run function cs16:player/get/smg_ammo
execute if entity @s[tag=rifle] run function cs16:player/get/rifle_ammo

item modify entity @s weapon.mainhand cs16:not_empty

scoreboard players set @s cs16.player.reloading_delay 0
scoreboard players set @s cs16.player.reloading 0
execute if score @s cs16.gun.id matches 1 at @s run playsound cs16:usp_clipin player @a ~ ~ ~ 2
execute if score @s cs16.gun.id matches 2 at @s run playsound cs16:usp_clipin player @a ~ ~ ~ 2
execute if score @s cs16.gun.id matches 3 at @s run playsound cs16:de_clipin player @a ~ ~ ~ 2
execute if score @s cs16.gun.id matches 20 at @s run playsound cs16:ak47_clipin player @a ~ ~ ~ 2
execute if score @s cs16.gun.id matches 21 at @s run playsound cs16:m4a1_clipin player @a ~ ~ ~ 2
execute if score @s cs16.gun.id matches 24 at @s run return run playsound cs16:m249_boxin player @a ~ ~ ~ 2
execute if score @s cs16.gun.id matches 22.. at @s run playsound cs16:clipin1 player @a ~ ~ ~ 2


