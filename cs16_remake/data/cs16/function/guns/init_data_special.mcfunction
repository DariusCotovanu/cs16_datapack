scoreboard players add @s cs16.player.recoil_delay 1
scoreboard players set $range cs16.gun.data 5120
scoreboard players set $blocks_hit cs16.gun.data 0
scoreboard players set $hit_block cs16.gun.data 0
execute if score @s cs16.gun.id matches -3213 run function cs16:guns/grenade_launcher/main
execute if score @s cs16.gun.id matches -3214 at @s anchored eyes positioned ^ ^ ^1 run function cs16:guns/missile_launcher/get_target
execute anchored eyes if score @s cs16.gun.id matches -3211 positioned ^ ^ ^-.9 run function cs16:guns/flame_thrower/main

execute store result score $result temp run scoreboard players get @s cs16.gun.id
function cs16:guns/sound
function cs16:guns/update_gun