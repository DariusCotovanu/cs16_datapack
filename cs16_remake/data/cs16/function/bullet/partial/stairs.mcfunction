execute store result score #x temp run data get entity @s Pos[0] 100.0
execute store result score .y temp run data get entity @s Pos[1] 100.0
execute store result score #z temp run data get entity @s Pos[2] 100.0

execute if score #x temp matches ..-1 run scoreboard players operation .x temp *= $-1 const
execute if score .y temp matches ..-1 run scoreboard players operation .y temp *= $-1 const
execute if score #z temp matches ..-1 run scoreboard players operation .z temp *= $-1 const

scoreboard players operation #x temp %= $100 const
scoreboard players operation .y temp %= $100 const
scoreboard players operation #z temp %= $100 const



### Rotation Invarience
scoreboard players operation .x temp = #x temp
scoreboard players operation .z temp = #z temp
execute if block ~ ~ ~ #minecraft:stairs[facing=north] run function cs16:bullet/partial/transforms/rotate_90
execute if block ~ ~ ~ #minecraft:stairs[facing=west] run function cs16:bullet/partial/transforms/rotate_180
execute if block ~ ~ ~ #minecraft:stairs[facing=south] run function cs16:bullet/partial/transforms/rotate_270

scoreboard players set #bool temp 0
### Shape = Straight
execute if score .x temp matches 55.. run scoreboard players set #bool temp 1

### Shapes
execute if block ~ ~ ~ #minecraft:stairs[shape=inner_left] if score .z temp matches ..48 run scoreboard players set #bool temp 1
execute if block ~ ~ ~ #minecraft:stairs[shape=inner_right] if score .z temp matches 52.. run scoreboard players set #bool temp 1
execute if block ~ ~ ~ #minecraft:stairs[shape=outer_left] if score .z temp matches 48.. run scoreboard players set #bool temp 0
execute if block ~ ~ ~ #minecraft:stairs[shape=outer_right] if score .z temp matches ..52 run scoreboard players set #bool temp 0

### Bottom Step
execute store result score #type temp if block ~ ~ ~ #minecraft:stairs[half=bottom]
execute if score #type temp matches 1 if score .y temp matches ..49 run scoreboard players set #bool temp 1
execute if score #type temp matches 0 if score .y temp matches 50.. run scoreboard players set #bool temp 1

execute if score #bool temp matches 1 run scoreboard players set $hit_block cs16.gun.data 1
