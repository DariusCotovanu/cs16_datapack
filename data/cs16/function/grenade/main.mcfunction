scoreboard players add @s cs16.grenade.explosion_delay 1
execute if score @s cs16.grenade.explosion_delay matches 40.. at @s run return run function cs16:grenade/explode

execute if score @s cs16.grenade.hitx matches ..3 run function cs16:grenade/wallx
execute if score @s cs16.grenade.hitz matches ..3 run function cs16:grenade/wallz
execute if score @s cs16.grenade.hity matches ..10 run function cs16:grenade/wally

execute store result score $temp0 temp run data get entity @s Motion[0] 1000
scoreboard players operation $temp0 temp /= $2 const

execute unless score $temp0 temp matches -1..1 run scoreboard players operation @s cs16.grenade.rotz += $temp0 temp


execute store result score $temp0 temp run data get entity @s Motion[2] 1000
scoreboard players operation $temp0 temp /= $2 const

execute unless score $temp0 temp matches -1..1 run scoreboard players operation @s cs16.grenade.rotx += $temp0 temp

execute unless score @s cs16.grenade.rotz matches -5590..5590 run scoreboard players set @s cs16.grenade.rotz 0
execute unless score @s cs16.grenade.rotx matches -5590..5590 run scoreboard players set @s cs16.grenade.rotx 0
execute store result storage temp rot.z float 0.06 run scoreboard players get @s cs16.grenade.rotz
execute store result storage temp rot.x float 0.06 run scoreboard players get @s cs16.grenade.rotx
data modify storage temp rot.y set value 0

execute on passengers run function cs16:grenade/rotate



