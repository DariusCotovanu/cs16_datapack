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
execute store result score $damage temp run data get storage distance:data out 1000
scoreboard players operation $damage temp /= $8 const
scoreboard players remove $damage temp 1500
scoreboard players operation $damage temp *= $damage temp
scoreboard players operation $damage temp /= $50 const
scoreboard players operation $total_damage_dealt temp += $damage temp

scoreboard players set range temp 48
scoreboard players set walled temp 1
function cs16:grenade/wall_check
execute if score walled temp matches 1 run scoreboard players operation $damage temp /= $2 const
execute if score $damage temp matches ..-1 run scoreboard players set $damage temp 0


execute store result storage pve:temp damage float 0.0002 run scoreboard players get $damage temp
scoreboard players set bomb_kill temp 1
function pve:apply_gun_damage with storage pve:temp
scoreboard players set bomb_kill temp 0

