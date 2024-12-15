execute store result score $missileX cs16.temp run data get entity @s Pos[0] 1000
execute store result score $missileY cs16.temp run data get entity @s Pos[1] 1000
execute store result score $missileZ cs16.temp run data get entity @s Pos[2] 1000

scoreboard players operation $in1 temp = $missileX cs16.temp
scoreboard players operation $in2 temp = $guideX cs16.temp
function cs16:atan
#execute if score $in1 temp matches ..-1 run scoreboard players add $result temp 1570
#execute if score $in1 temp matches 0.. run scoreboard players remove $result temp 1570
execute store result entity @s Rotation[0] float .05729 run scoreboard players get $result temp

scoreboard players operation $in1 temp = $missileZ cs16.temp
scoreboard players operation $in2 temp = $guideZ cs16.temp
function cs16:atan
execute store result entity @s Rotation[0] float .05729 run scoreboard players get $result temp

#tellraw @a[tag=is_admin] {"nbt": "Rotation","entity": "@s"}
# tellraw @a[tag=is_admin] [{"score":{"name": "$guideX","objective": "cs16.temp"}},",",{"score":{"name": "$missileX","objective": "cs16.temp"}}]
# tellraw @a[tag=is_admin] [{"score":{"name": "$result","objective": "temp"}}]


#



# execute if score $in2 temp matches 101.. run scoreboard players set $uy temp 100
# execute if score $in2 temp matches ..-101 run scoreboard players set $uy temp -100

# execute store result entity @s Rotation[1] float 0.01 run scoreboard players operation $uy temp *= $-90 const

