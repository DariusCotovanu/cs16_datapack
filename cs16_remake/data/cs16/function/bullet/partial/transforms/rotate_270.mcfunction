# [x,z]*Rot(270) = [z,-x]
scoreboard players set .z temp 100
scoreboard players operation .z temp -= #x temp
scoreboard players operation .x temp = #z temp