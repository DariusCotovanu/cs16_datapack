# [x,z]*Rot(270) = [z,-x]
scoreboard players set .z cs16.temp 100
scoreboard players operation .z cs16.temp -= #x cs16.temp
scoreboard players operation .x cs16.temp = #z cs16.temp