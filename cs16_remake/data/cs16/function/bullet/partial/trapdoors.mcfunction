execute store result score .x temp run data get entity @s Pos[0] 100.0
execute store result score .y temp run data get entity @s Pos[1] 100.0
execute store result score .z temp run data get entity @s Pos[2] 100.0

execute if score .x temp matches ..-1 run scoreboard players operation .x temp *= $-1 const
execute if score .y temp matches ..-1 run scoreboard players operation .y temp *= $-1 const
execute if score .z temp matches ..-1 run scoreboard players operation .z temp *= $-1 const

scoreboard players operation .x temp %= $100 const
scoreboard players operation .y temp %= $100 const
scoreboard players operation .z temp %= $100 const

scoreboard players set #bool temp 0
execute if block ~ ~ ~ #trapdoors[half=bottom,open=false] if score .y temp matches ..18 run scoreboard players set #bool temp 1
execute if block ~ ~ ~ #trapdoors[half=top,open=false] if score .y temp matches 82.. run scoreboard players set #bool temp 1
execute if block ~ ~ ~ #trapdoors[open=true,facing=east] if score .x temp matches ..18 run scoreboard players set #bool temp 1
execute if block ~ ~ ~ #trapdoors[open=true,facing=west] if score .x temp matches 82.. run scoreboard players set #bool temp 1
execute if block ~ ~ ~ #trapdoors[open=true,facing=north] if score .z temp matches ..18 run scoreboard players set #bool temp 1
execute if block ~ ~ ~ #trapdoors[open=true,facing=south] if score .z temp matches 82.. run scoreboard players set #bool temp 1

execute if score #bool temp matches 1 run scoreboard players set $hit_block cs16.gun.data 1
