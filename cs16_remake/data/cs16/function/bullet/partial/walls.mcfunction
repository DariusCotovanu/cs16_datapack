execute store result score .x temp run data get entity @s Pos[0] 100.0
execute store result score .y temp run data get entity @s Pos[1] 100.0
execute store result score .z temp run data get entity @s Pos[2] 100.0
scoreboard players operation .x temp %= $100 const
scoreboard players operation .y temp %= $100 const
scoreboard players operation .z temp %= $100 const


scoreboard players set #bool temp 0
execute if block ~ ~ ~ #walls[up=true] if score .x temp matches 25..75 if score .z temp matches 25..75 run scoreboard players set #bool temp 1
execute if block ~ ~ ~ #walls[up=false] if score .x temp matches 31..68 if score .z temp matches 31..68 run scoreboard players set #bool temp 1
execute if block ~ ~ ~ #walls[west=low] if score .x temp matches 0..31 if score .z temp matches 31..68 run scoreboard players set #bool temp 1
execute if block ~ ~ ~ #walls[east=low] if score .x temp matches 69..99 if score .z temp matches 31..68 run scoreboard players set #bool temp 1
execute if block ~ ~ ~ #walls[north=low] if score .z temp matches 0..31 if score .x temp matches 31..68 run scoreboard players set #bool temp 1
execute if block ~ ~ ~ #walls[south=low] if score .z temp matches 69..99 if score .x temp matches 31..68 run scoreboard players set #bool temp 1



execute if score #bool temp matches 1 run scoreboard players set $hit_block cs16.gun.data 1
