item replace entity @s weapon.mainhand from entity @s weapon.offhand
item replace entity @s weapon.offhand with air
execute if score @s cs16.player.total_bullets matches 0 at @s run return run function cs16:player/reload/empty
scoreboard players set playsound temp 0
execute if score @s cs16.player.bullets < @s cs16.gun.magazine if score @s cs16.player.total_bullets matches 1.. run scoreboard players set @s cs16.player.reloading 1
execute if score @s cs16.player.reloading matches 1 run scoreboard players set @s cs16.gun.playsound_reload 1


execute if score @s cs16.gun.playsound_reload matches 1 run function cs16:player/reload/playsound
scoreboard players set @s cs16.gun.playsound_reload 0
