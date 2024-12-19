# [x,z]*Rot(90) = [-z,x]
scoreboard players set .x temp 100
scoreboard players operation .x temp -= #z temp
scoreboard players operation .z temp = #x temp