scoreboard players operation $connection player.id = @s player.id
function cs16:guns/gravity_gun/init_raycast
#execute at @s run tp @e[predicate=cs16:entity_player] ^ ^1 ^3

execute store result score $rot temp run data get entity @s Rotation[0] 100
scoreboard players operation $temp0 temp = $rot temp
execute if score $rot temp matches ..-1 run scoreboard players operation $rot temp *= $-1 const
scoreboard players operation $rot_copy temp = $rot temp

#function cs16:grenade/get_sin

scoreboard players operation $rot temp -= @s cs16.player.yaw
#tellraw SukiManu {"score":{"name": "$rot","objective": "temp"}}
execute if score $temp0 temp matches -18000..-1 if score $rot temp matches 1.. run tellraw SukiManu "moving_left"
execute if score $temp0 temp matches -18000..-1 if score $rot temp matches ..-1 run tellraw SukiManu "moving_right"
execute if score $rot temp matches ..-1 run scoreboard players operation $rot temp *= $-1 const
execute if score $rot temp matches 7000.. run tellraw @s {"text":"should_shoot"}

scoreboard players operation @s cs16.player.yaw = $rot_copy temp
