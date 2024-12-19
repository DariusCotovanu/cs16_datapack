advancement revoke @s only cs16:ammo_pickup
execute if entity @s[tag=pistol] run function cs16:player/get/pistol_ammo
execute if entity @s[tag=smg] run function cs16:player/get/smg_ammo
execute if entity @s[tag=rifle] run function cs16:player/get/rifle_ammo