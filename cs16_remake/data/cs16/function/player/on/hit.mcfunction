execute if score $prevent_death cs16.global matches 1 run return run function cs16:player/on/hit_no_kill
execute store result storage cs16:temp damage.value float 0.001 run scoreboard players get $damage temp
function cs16:apply_gun_damage with storage cs16:temp damage
