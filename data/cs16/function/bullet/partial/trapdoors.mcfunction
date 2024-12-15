execute store result score .x cs16.temp run data get entity @s Pos[0] 100.0
execute store result score .y cs16.temp run data get entity @s Pos[1] 100.0
execute store result score .z cs16.temp run data get entity @s Pos[2] 100.0

execute if score .x cs16.temp matches ..-1 run scoreboard players operation .x cs16.temp *= $-1 const
execute if score .y cs16.temp matches ..-1 run scoreboard players operation .y cs16.temp *= $-1 const
execute if score .z cs16.temp matches ..-1 run scoreboard players operation .z cs16.temp *= $-1 const

scoreboard players operation .x cs16.temp %= $100 const
scoreboard players operation .y cs16.temp %= $100 const
scoreboard players operation .z cs16.temp %= $100 const

scoreboard players set #bool cs16.temp 0
execute if block ~ ~ ~ #trapdoors[half=bottom,open=false] if score .y cs16.temp matches ..18 run scoreboard players set #bool cs16.temp 1
execute if block ~ ~ ~ #trapdoors[half=top,open=false] if score .y cs16.temp matches 82.. run scoreboard players set #bool cs16.temp 1
execute if block ~ ~ ~ #trapdoors[open=true,facing=east] if score .x cs16.temp matches ..18 run scoreboard players set #bool cs16.temp 1
execute if block ~ ~ ~ #trapdoors[open=true,facing=west] if score .x cs16.temp matches 82.. run scoreboard players set #bool cs16.temp 1
execute if block ~ ~ ~ #trapdoors[open=true,facing=north] if score .z cs16.temp matches ..18 run scoreboard players set #bool cs16.temp 1
execute if block ~ ~ ~ #trapdoors[open=true,facing=south] if score .z cs16.temp matches 82.. run scoreboard players set #bool cs16.temp 1

execute if score #bool cs16.temp matches 1 run scoreboard players set $hit_block cs16.gun.data 1
