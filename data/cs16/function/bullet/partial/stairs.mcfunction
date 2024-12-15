execute store result score #x cs16.temp run data get entity @s Pos[0] 100.0
execute store result score .y cs16.temp run data get entity @s Pos[1] 100.0
execute store result score #z cs16.temp run data get entity @s Pos[2] 100.0

execute if score #x cs16.temp matches ..-1 run scoreboard players operation .x cs16.temp *= $-1 const
execute if score .y cs16.temp matches ..-1 run scoreboard players operation .y cs16.temp *= $-1 const
execute if score #z cs16.temp matches ..-1 run scoreboard players operation .z cs16.temp *= $-1 const

scoreboard players operation #x cs16.temp %= $100 const
scoreboard players operation .y cs16.temp %= $100 const
scoreboard players operation #z cs16.temp %= $100 const



### Rotation Invarience
scoreboard players operation .x cs16.temp = #x cs16.temp
scoreboard players operation .z cs16.temp = #z cs16.temp
execute if block ~ ~ ~ #minecraft:stairs[facing=north] run function cs16:bullet/partial/transforms/rotate_90
execute if block ~ ~ ~ #minecraft:stairs[facing=west] run function cs16:bullet/partial/transforms/rotate_180
execute if block ~ ~ ~ #minecraft:stairs[facing=south] run function cs16:bullet/partial/transforms/rotate_270

scoreboard players set #bool cs16.temp 0
### Shape = Straight
execute if score .x cs16.temp matches 55.. run scoreboard players set #bool cs16.temp 1

### Shapes
execute if block ~ ~ ~ #minecraft:stairs[shape=inner_left] if score .z cs16.temp matches ..48 run scoreboard players set #bool cs16.temp 1
execute if block ~ ~ ~ #minecraft:stairs[shape=inner_right] if score .z cs16.temp matches 52.. run scoreboard players set #bool cs16.temp 1
execute if block ~ ~ ~ #minecraft:stairs[shape=outer_left] if score .z cs16.temp matches 48.. run scoreboard players set #bool cs16.temp 0
execute if block ~ ~ ~ #minecraft:stairs[shape=outer_right] if score .z cs16.temp matches ..52 run scoreboard players set #bool cs16.temp 0

### Bottom Step
execute store result score #type cs16.temp if block ~ ~ ~ #minecraft:stairs[half=bottom]
execute if score #type cs16.temp matches 1 if score .y cs16.temp matches ..49 run scoreboard players set #bool cs16.temp 1
execute if score #type cs16.temp matches 0 if score .y cs16.temp matches 50.. run scoreboard players set #bool cs16.temp 1

execute if score #bool cs16.temp matches 1 run scoreboard players set $hit_block cs16.gun.data 1
