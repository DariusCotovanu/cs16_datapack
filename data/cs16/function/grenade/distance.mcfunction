execute store result score $playerX cs16.temp run data get entity @s Pos[0] 100
execute store result score $playerY cs16.temp run data get entity @s Pos[1] 100
execute store result score $playerZ cs16.temp run data get entity @s Pos[2] 100

scoreboard players operation $temp0 cs16.temp = posX cs16.temp
scoreboard players operation $temp1 cs16.temp = posY cs16.temp
scoreboard players operation $temp2 cs16.temp = posZ cs16.temp

execute store result storage distance:data in.x float 0.01 run scoreboard players operation $temp0 cs16.temp -= $playerX cs16.temp
execute store result storage distance:data in.y float 0.01 run scoreboard players operation $temp1 cs16.temp -= $playerY cs16.temp
execute store result storage distance:data in.z float 0.01 run scoreboard players operation $temp2 cs16.temp -= $playerZ cs16.temp

function distance:main
execute store result score $damage cs16.temp run data get storage distance:data out 1000
scoreboard players operation $damage cs16.temp /= $8 const
scoreboard players operation $damage cs16.temp -= $2000 const
scoreboard players operation $damage cs16.temp *= $damage cs16.temp
scoreboard players operation $damage cs16.temp /= $40 const

scoreboard players set range cs16.temp 48
scoreboard players set walled cs16.temp 1
function cs16:grenade/wall_check
execute if score walled cs16.temp matches 1 run scoreboard players operation $damage cs16.temp /= $2 const
 execute if score $damage cs16.temp matches ..-1 run scoreboard players set $damage cs16.temp 0
scoreboard players set bomb_kill cs16.temp 1
function cs16:player/handlers/on_hit
scoreboard players set bomb_kill cs16.temp 0

