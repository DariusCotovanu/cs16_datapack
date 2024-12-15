scoreboard players set playsound cs16.temp 1
execute unless score @s cs16.player.reloading matches 0 unless items entity @s weapon.offhand minecraft:heart_of_the_sea[minecraft:custom_data~{gun:{isGun:1b}}] run function cs16:player/reload/reset
execute if items entity @s weapon.offhand minecraft:heart_of_the_sea[minecraft:custom_data~{gun:{isGun:1b}}] run function cs16:player/reload/init
execute if items entity @s weapon.offhand minecraft:spyglass[minecraft:custom_data~{gun:{isGun:1b,id:30b}}] run return run function cs16:player/sniper_shot

function cs16:guns/get_data


execute if score playsound cs16.temp matches 1 run function cs16:guns/playsound
execute if score @s cs16.player.bullets matches 0 if score @s cs16.player.total_bullets matches 1.. run scoreboard players set @s cs16.player.reloading 1