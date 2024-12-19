execute store result score .x temp run data get entity @s Pos[0] 100.0
execute store result score .y temp run data get entity @s Pos[1] 100.0
execute store result score .z temp run data get entity @s Pos[2] 100.0


scoreboard players operation .x temp %= $100 const
scoreboard players operation .y temp %= $100 const
scoreboard players operation .z temp %= $100 const

execute store result score $result temp run scoreboard players get .z temp
execute if block ~ ~ ~ #minecraft:campfires[facing=north] run scoreboard players operation .z temp = .x temp
execute if block ~ ~ ~ #minecraft:campfires[facing=south] run scoreboard players operation .z temp = .x temp
execute if block ~ ~ ~ #minecraft:campfires[facing=north] run scoreboard players operation .x temp = $result temp
execute if block ~ ~ ~ #minecraft:campfires[facing=south] run scoreboard players operation .x temp = $result temp


scoreboard players set #bool temp 0

execute if score .y temp matches ..24 if score .z temp matches 6..32 run scoreboard players set #bool temp 1
execute if score .y temp matches ..24 if score .z temp matches 68..94 run scoreboard players set #bool temp 1

execute if score .y temp matches 25..42 if score .x temp matches 6..32 run scoreboard players set #bool temp 1
execute if score .y temp matches 25..42 if score .x temp matches 68..94 run scoreboard players set #bool temp 1




execute if score #bool temp matches 1 run scoreboard players set $hit_block cs16.gun.data 1
