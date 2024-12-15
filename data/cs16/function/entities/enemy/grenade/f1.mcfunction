kill @e[type=snowball,sort=nearest,limit=1]

execute as @p run function cs16:player/get_cords
execute store result score $enemyX cs16.temp run data get entity @s Pos[0] 100
execute store result score $enemyY cs16.temp run data get entity @s Pos[1] 100
execute store result score $enemyZ cs16.temp run data get entity @s Pos[2] 100
execute store result storage distance:data in.x float 0.01 run scoreboard players operation $enemyX cs16.temp -= $playerX cs16.temp
execute store result storage distance:data in.y float 0.01 run scoreboard players operation $enemyY cs16.temp -= $playerY cs16.temp
execute store result storage distance:data in.z float 0.01 run scoreboard players operation $enemyZ cs16.temp -= $playerZ cs16.temp
function distance:main

execute store result storage cs16:temp motion.x float -0.00071 run scoreboard players get $enemyX cs16.temp
execute store result storage cs16:temp motion.y float -0.00071 run scoreboard players get $enemyY cs16.temp
execute store result storage cs16:temp motion.z float -0.00071 run scoreboard players get $enemyZ cs16.temp

# tellraw SukiManu {"score":{"name": "$throw_strength","objective": "cs16.temp"}}
# tellraw SukiManu {"nbt":"motion","storage": "cs16:temp"}

execute anchored eyes positioned ^ ^ ^.5 run function cs16:grenade/spawn with storage cs16:temp motion
scoreboard players set $connection entity.id -1
tag @n[type=item,tag=new] add thrown_by_npc
execute as @e[type=item,tag=new,limit=1,sort=nearest] run function cs16:grenade/init
playsound entity.snowball.throw player @a