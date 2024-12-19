tag @s add bullet_check
execute store success score $sneaking temp if entity @s[predicate=cs16:sneaking]

execute if score $sneaking temp matches 0 if score $result temp matches ..67 run scoreboard players operation $damage temp = $dmgLegs cs16.gun.data
execute if score $sneaking temp matches 0 if score $result temp matches 68..154 run scoreboard players operation $damage temp = $dmgChest cs16.gun.data
execute if score $sneaking temp matches 0 if score $result temp matches 155.. run scoreboard players operation $damage temp = $dmgHead cs16.gun.data
execute if score $sneaking temp matches 1 if score $result temp matches ..50 run scoreboard players operation $damage temp = $dmgLegs cs16.gun.data
execute if score $sneaking temp matches 1 if score $result temp matches 51..119 run scoreboard players operation $damage temp = $dmgChest cs16.gun.data
execute if score $sneaking temp matches 1 if score $result temp matches 120.. run scoreboard players operation $damage temp = $dmgHead cs16.gun.data
execute store result storage pve:temp damage float 0.2 run scoreboard players get $damage temp
function pve:apply_gun_damage with storage pve:temp