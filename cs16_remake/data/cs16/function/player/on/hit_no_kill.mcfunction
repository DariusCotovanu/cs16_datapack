#tellraw @a {"score":{"name": "$damage","objective": "temp"}}
execute store result storage cs16:temp damage.value float 0.000001 run scoreboard players get $damage temp
execute store result storage cs16:temp damage.real_damage float 0.001 run scoreboard players get $damage temp
function cs16:apply_gun_damage_no_kill with storage cs16:temp damage