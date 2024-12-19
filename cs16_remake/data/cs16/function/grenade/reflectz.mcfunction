


scoreboard players operation @s motion.z /= $2 const
execute store result entity @s Motion[2] double -0.0007 run scoreboard players get @s motion.z
execute if predicate cs16:05 store result entity @s Motion[2] double -0.0005 run scoreboard players get @s motion.z
scoreboard players operation @s motion.z *= $-1 const
scoreboard players operation $motion.z temp = @s motion.z

