execute store result score mX cs16.temp run data get entity @s Pos[0] 100
execute store result score mY cs16.temp run data get entity @s Pos[1] 100
execute store result score mZ cs16.temp run data get entity @s Pos[2] 100
scoreboard players operation mX cs16.temp -= $playerX cs16.temp
scoreboard players operation mY cs16.temp -= $playerY cs16.temp
scoreboard players operation mZ cs16.temp -= $playerZ cs16.temp
execute store result storage cs16:temp motion.x double 0.033 run scoreboard players get mX cs16.temp
execute store result storage cs16:temp motion.y double 0.03 run scoreboard players get mY cs16.temp
execute store result storage cs16:temp motion.z double 0.033 run scoreboard players get mZ cs16.temp
kill @s
