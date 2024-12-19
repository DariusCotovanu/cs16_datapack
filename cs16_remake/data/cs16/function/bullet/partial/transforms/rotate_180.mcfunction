# [x,z]*Rot(180) = [-x,-z]
scoreboard players set .x temp 100
scoreboard players set .z temp 100
scoreboard players operation .x temp -= #x temp
scoreboard players operation .z temp -= #z temp