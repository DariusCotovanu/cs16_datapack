summon marker ~ ~ ~ {UUID:[I;15,0,0,4]}


execute store result score $x1 temp run data get entity F-0-0-0-3 Pos[0] 100
execute store result score $y1 temp run data get entity F-0-0-0-3 Pos[1] 100
execute store result score $z1 temp run data get entity F-0-0-0-3 Pos[2] 100

execute store result score $x temp run data get entity F-0-0-0-4 Pos[0] 100
execute store result score $y temp run data get entity F-0-0-0-4 Pos[1] 100
execute store result score $z temp run data get entity F-0-0-0-4 Pos[2] 100

scoreboard players operation $x temp -= $x1 temp
scoreboard players operation $y temp -= $y1 temp
scoreboard players operation $z temp -= $z1 temp

scoreboard players operation $x temp *= $x temp
scoreboard players operation $y temp *= $y temp
scoreboard players operation $z temp *= $z temp

execute if score $x temp > $y temp if score $x temp > $z temp run return run scoreboard players set $face temp 0
execute if score $y temp > $x temp if score $y temp > $z temp run return run scoreboard players set $face temp 1
execute if score $z temp > $x temp if score $z temp > $y temp run return run scoreboard players set $face temp 2
#tellraw Sofia5 "no face found\n\n\n--<>--"