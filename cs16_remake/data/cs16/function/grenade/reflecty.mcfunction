scoreboard players operation @s motion.y /= $4 const
scoreboard players operation @s motion.y *= $3 const
execute store result entity @s Motion[1] double -0.00075 run scoreboard players get @s motion.y
execute if predicate cs16:05 store result entity @s Motion[1] double -0.00057 run scoreboard players get @s motion.y
scoreboard players operation @s motion.y *= $-1 const
scoreboard players operation $motion.y temp = @s motion.y

