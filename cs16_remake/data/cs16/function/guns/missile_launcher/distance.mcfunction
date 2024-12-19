execute store result score $playerX temp run data get entity @s Pos[0] 100
execute store result score $playerY temp run data get entity @s Pos[1] 100
execute store result score $playerZ temp run data get entity @s Pos[2] 100
scoreboard players operation $temp0 temp = posX temp
scoreboard players operation $temp1 temp = posY temp
scoreboard players operation $temp2 temp = posZ temp



execute store result storage distance:data in.x float 0.01 run scoreboard players operation $temp0 temp -= $playerX temp
execute store result storage distance:data in.y float 0.01 run scoreboard players operation $temp1 temp -= $playerY temp
execute store result storage distance:data in.z float 0.01 run scoreboard players operation $temp2 temp -= $playerZ temp

function distance:main
execute store result score $temp temp run data get storage distance:data out 1000
scoreboard players operation $temp temp /= $3 const

scoreboard players operation $temp temp -= $2000 const
scoreboard players operation $temp temp *= $temp temp
scoreboard players operation $temp temp /= $10000 const
scoreboard players operation $damage temp = $temp temp

execute if score $damage temp matches ..-1 run scoreboard players set $damage temp 0
scoreboard players set missile_kill temp 1
function cs16:player/on/hit
scoreboard players set missile_kill temp 0