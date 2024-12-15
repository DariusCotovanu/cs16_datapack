execute store result score #x cs16.temp run data get entity @s Pos[0] 100.0
execute store result score #z cs16.temp run data get entity @s Pos[2] 100.0
scoreboard players operation #x cs16.temp %= $100 const
scoreboard players operation #z cs16.temp %= $100 const

### Rotation Invarience
scoreboard players operation .x cs16.temp = #x cs16.temp
scoreboard players operation .z cs16.temp = #z cs16.temp
execute if block ~ ~ ~ #minecraft:doors[facing=north] run function cs16:bullet/partial/transforms/rotate_90
execute if block ~ ~ ~ #minecraft:doors[facing=west] run function cs16:bullet/partial/transforms/rotate_180
execute if block ~ ~ ~ #minecraft:doors[facing=south] run function cs16:bullet/partial/transforms/rotate_270

execute if block ~ ~ ~ #minecraft:doors[hinge=left,open=true] if score .z cs16.temp matches ..25 run scoreboard players set $hit_block cs16.gun.data 1
execute if block ~ ~ ~ #minecraft:doors[hinge=right,open=true] if score .z cs16.temp matches 75.. run scoreboard players set $hit_block cs16.gun.data 1
execute if block ~ ~ ~ #minecraft:doors[open=false] if score .x cs16.temp matches ..25 run scoreboard players set $hit_block cs16.gun.data 1