kill @e[type=snowball,sort=nearest,limit=1]

execute as @p run function cs16:player/get/cords
execute store result score $enemyX temp run data get entity @s Pos[0] 100
execute store result score $enemyY temp run data get entity @s Pos[1] 100
execute store result score $enemyZ temp run data get entity @s Pos[2] 100
execute store result storage distance:data in.x float 0.01 run scoreboard players operation $enemyX temp -= $playerX temp
execute store result storage distance:data in.y float 0.01 run scoreboard players operation $enemyY temp -= $playerY temp
execute store result storage distance:data in.z float 0.01 run scoreboard players operation $enemyZ temp -= $playerZ temp
function distance:main

execute store result storage cs16:temp motion.x float -0.00071 run scoreboard players get $enemyX temp
execute store result storage cs16:temp motion.y float -0.00071 run scoreboard players get $enemyY temp
execute store result storage cs16:temp motion.z float -0.00071 run scoreboard players get $enemyZ temp

execute anchored eyes positioned ^ ^ ^.5 run function cs16:grenade/spawn with storage cs16:temp motion
scoreboard players set $connection entity.id -1
tag @n[type=item,tag=new] add thrown_by_npc
data modify entity @n[type=item,tag=new] Thrower set from entity @s UUID
execute as @e[type=item,tag=new,limit=1,sort=nearest] run function cs16:grenade/init
playsound entity.snowball.throw player @a