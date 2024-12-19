tag @s add changed_gun
scoreboard players set playsound temp 1
execute unless score @s cs16.player.reloading matches 0 unless items entity @s weapon.offhand minecraft:music_disc_5[minecraft:custom_data~{gun:{isGun:1b}}] run function cs16:player/reload/reset
execute if items entity @s weapon.offhand minecraft:music_disc_5[minecraft:custom_data~{gun:{isGun:1b}}] run function cs16:player/reload/init
execute if items entity @s weapon.offhand minecraft:spyglass[minecraft:custom_data~{gun:{isGun:1b,id:30b}}] run return run function cs16:player/sniper_shot

execute if items entity @s weapon.mainhand music_disc_5[minecraft:custom_data~{gun:{isGun:1b}}] run function cs16:guns/get_data
execute if items entity @s weapon.mainhand spyglass[minecraft:custom_data~{gun:{isGun:1b}}] run function cs16:guns/get_data
#execute if score @s cs16.gun.uid matches 0 if score @s cs16.player.reloading matches 1 run function cs16:player/reload/reset
execute if score playsound temp matches 1 run function cs16:guns/playsound
execute unless score @s cs16.gun.uid matches 0 if score @s cs16.player.bullets matches 0 if score @s cs16.player.total_bullets matches 1.. run scoreboard players set @s cs16.player.reloading 1