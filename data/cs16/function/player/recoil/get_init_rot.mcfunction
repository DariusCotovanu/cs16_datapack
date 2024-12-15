execute store result score @s cs16.player.initial_yaw run data get entity @s Rotation[0]
execute store result score @s cs16.player.initial_pitch run data get entity @s Rotation[0]

scoreboard players set @s cs16.player.init_rot 1
