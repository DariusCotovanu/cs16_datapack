execute store result score .x cs16.temp run data get entity @s Pos[0] 100.0
execute store result score .y cs16.temp run data get entity @s Pos[1] 100.0
execute store result score .z cs16.temp run data get entity @s Pos[2] 100.0


scoreboard players operation .x cs16.temp %= $100 const
scoreboard players operation .y cs16.temp %= $100 const
scoreboard players operation .z cs16.temp %= $100 const

execute store result score $result cs16.temp run scoreboard players get .z cs16.temp
execute if block ~ ~ ~ #minecraft:campfires[facing=north] run scoreboard players operation .z cs16.temp = .x cs16.temp
execute if block ~ ~ ~ #minecraft:campfires[facing=south] run scoreboard players operation .z cs16.temp = .x cs16.temp
execute if block ~ ~ ~ #minecraft:campfires[facing=north] run scoreboard players operation .x cs16.temp = $result cs16.temp
execute if block ~ ~ ~ #minecraft:campfires[facing=south] run scoreboard players operation .x cs16.temp = $result cs16.temp


scoreboard players set #bool cs16.temp 0

execute if score .y cs16.temp matches ..24 if score .z cs16.temp matches 6..32 run scoreboard players set #bool cs16.temp 1
execute if score .y cs16.temp matches ..24 if score .z cs16.temp matches 68..94 run scoreboard players set #bool cs16.temp 1

execute if score .y cs16.temp matches 25..42 if score .x cs16.temp matches 6..32 run scoreboard players set #bool cs16.temp 1
execute if score .y cs16.temp matches 25..42 if score .x cs16.temp matches 68..94 run scoreboard players set #bool cs16.temp 1




execute if score #bool cs16.temp matches 1 run scoreboard players set $hit_block cs16.gun.data 1
