execute if score @s cs16.player.bullets matches 0 if score @s cs16.player.total_bullets matches 0 run return run function cs16:player/reload/empty
scoreboard players remove @s[scores={cs16.gun.fire_rate_delay=1..}] cs16.gun.fire_rate_delay 1
execute if score @s cs16.gun.fire_rate_delay matches 0 if score @s cs16.player.bullets matches 1.. run function cs16:player/init_data
execute if score @s cs16.gun.fire_rate_delay matches ..0 run scoreboard players operation @s cs16.gun.fire_rate_delay = @s cs16.gun.fire_rate
