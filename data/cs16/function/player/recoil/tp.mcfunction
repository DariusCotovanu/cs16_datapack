#execute if score @s cs16.player.pitch matches ..-600 store result score $result cs16.temp run random value 4000..8000
execute store result storage cs16:temp tp.XZ float 0.0001 run scoreboard players get @s cs16.player.recoilXZ
execute store result storage cs16:temp tp.Y float 0.00003 run scoreboard players get @s cs16.player.recoilY
#scoreboard players operation test cs16.temp = @s test
#scoreboard players operation test cs16.temp %= $3 const
#scoreboard players add @s test 1

execute if score @s cs16.player.recoilY matches 3000.. run function cs16:player/recoil/cameran with storage cs16:temp tp
execute if score @s cs16.player.recoilY matches ..2999 run function cs16:player/recoil/camera with storage cs16:temp tp
#execute at @s facing ^ ^.1 ^1 run tp @s ~ ~ ~ ~ ~
#tellraw Sofia5 {"nbt":"tp","storage": "cs16:temp"}
#say tp


