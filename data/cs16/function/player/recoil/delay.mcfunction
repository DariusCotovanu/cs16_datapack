scoreboard players set @s cs16.gun.fire_rate_delay 0
scoreboard players operation @s cs16.player.recoilY -= $150 const
scoreboard players operation @s cs16.player.recoilXZ /= $2 const
execute if score @s cs16.player.recoilY matches ..-1 run scoreboard players set @s cs16.player.recoilY 0
scoreboard players remove @s[scores={cs16.player.recoil_delay=1..}] cs16.player.recoil_delay 2
execute if score @s cs16.player.recoil_delay matches 0 if score @s cs16.player.recoilY matches 0 run scoreboard players set @s cs16.player.using_gun -1
scoreboard players set @s cs16.gun.empty 5

