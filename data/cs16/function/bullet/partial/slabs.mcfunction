## get y coord's decimal points (ex: Y=69.45 -> .y = 45) 
execute store result score .y cs16.temp run data get entity @s Pos[1] 100.0
scoreboard players operation .y cs16.temp %= $100 const

## check if its a bottom slab
execute store result score .type cs16.temp if block ~ ~ ~ #minecraft:slabs[type=bottom]
## if double slab, dont go through at all
execute if block ~ ~ ~ #minecraft:slabs[type=double] run scoreboard players set $hit_block cs16.gun.data 1
## if bottom slab, stop cs16.temp if inside bottom part
execute if score .type cs16.temp matches 1 if score .y cs16.temp matches ..50 run scoreboard players set $hit_block cs16.gun.data 1
## if top slab, stop cs16.temp if inside top part
execute if score .type cs16.temp matches 0 if score .y cs16.temp matches 51.. run scoreboard players set $hit_block cs16.gun.data 1
