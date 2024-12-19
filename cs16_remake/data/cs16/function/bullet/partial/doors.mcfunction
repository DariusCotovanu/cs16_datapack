execute store result score #x temp run data get entity @s Pos[0] 100.0
execute store result score #z temp run data get entity @s Pos[2] 100.0
scoreboard players operation #x temp %= $100 const
scoreboard players operation #z temp %= $100 const

### Rotation Invarience
scoreboard players operation .x temp = #x temp
scoreboard players operation .z temp = #z temp
execute if block ~ ~ ~ #minecraft:doors[facing=north] run function cs16:bullet/partial/transforms/rotate_90
execute if block ~ ~ ~ #minecraft:doors[facing=west] run function cs16:bullet/partial/transforms/rotate_180
execute if block ~ ~ ~ #minecraft:doors[facing=south] run function cs16:bullet/partial/transforms/rotate_270

execute if block ~ ~ ~ #minecraft:doors[hinge=left,open=true] if score .z temp matches ..25 run scoreboard players set $hit_block cs16.gun.data 1
execute if block ~ ~ ~ #minecraft:doors[hinge=right,open=true] if score .z temp matches 75.. run scoreboard players set $hit_block cs16.gun.data 1
execute if block ~ ~ ~ #minecraft:doors[open=false] if score .x temp matches ..25 run scoreboard players set $hit_block cs16.gun.data 1