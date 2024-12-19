scoreboard players operation @s cs16.player.recoilY -= $150 const
scoreboard players operation @s cs16.player.recoilXZ /= $2 const
execute if score @s cs16.player.recoilY matches ..-1 run scoreboard players set @s cs16.player.recoilY 0
execute if score @s cs16.player.recoilY matches 0 run tag @s remove recoil_delay