execute store result score mX temp run data get entity @s Pos[0] 100
execute store result score mY temp run data get entity @s Pos[1] 100
execute store result score mZ temp run data get entity @s Pos[2] 100
scoreboard players operation mX temp -= $playerX temp
scoreboard players operation mY temp -= $playerY temp
scoreboard players operation mZ temp -= $playerZ temp
execute store result storage cs16:temp motion.x double 0.033 run scoreboard players get mX temp
execute store result storage cs16:temp motion.y double 0.03 run scoreboard players get mY temp
execute store result storage cs16:temp motion.z double 0.033 run scoreboard players get mZ temp
kill @s
