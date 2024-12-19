scoreboard players set @s cs16.gun.fire_rate_delay 0
function cs16:guns/model
tag @s add recoil_delay
tag @s remove has_shot
function cs16:player/recoil/delay