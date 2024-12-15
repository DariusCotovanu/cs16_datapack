scoreboard players remove @s[scores={cs16.gun.fire_rate_delay=1..}] cs16.gun.fire_rate_delay 1

execute if score @s cs16.gun.fire_rate_delay matches 0 if score @s cs16.player.bullets matches 1.. run function cs16:player/init_data_special
execute if score @s cs16.player.bullets matches 0 if score @s cs16.player.total_bullets matches 0 run scoreboard players add @s cs16.gun.empty 1
execute if score @s cs16.gun.empty matches 1 at @s run playsound minecraft:block.iron_trapdoor.close player @a ~ ~ ~ 1 2
execute if score @s cs16.gun.empty matches 6.. run scoreboard players set @s cs16.gun.empty 0
execute if score @s cs16.gun.fire_rate_delay matches ..0 run scoreboard players operation @s cs16.gun.fire_rate_delay = @s cs16.gun.fire_rate
