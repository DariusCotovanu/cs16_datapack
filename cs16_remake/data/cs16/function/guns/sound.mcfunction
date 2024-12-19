execute if entity @s[type=skeleton] store result score $result temp run data get entity @s HandItems[1].components."minecraft:custom_data".gun.id
execute if entity @s[type=player] store result score $result temp run scoreboard players get @s cs16.gun.id

execute if score $result temp matches 3 run return run function cs16:guns/deagle/playsound
execute if score $result temp matches 1 run return run function cs16:guns/usp/playsound
execute if score $result temp matches 2 run return run function cs16:guns/glock/playsound
execute if score $result temp matches 20 run return run function cs16:guns/ak47/playsound
execute if score $result temp matches 21 run return run function cs16:guns/m4/playsound
execute if score $result temp matches 24 run return run function cs16:guns/m249/playsound
execute if score $result temp matches 23 run return run function cs16:guns/mp5/playsound
execute if score $result temp matches 30 run return run function cs16:guns/awp/playsound

function cs16:guns/playsound_generic