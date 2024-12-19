advancement revoke @s only cs16:taken_damage
execute if score $preven_death cs16.global matches 0 run return 0
execute on attacker store result score $damage temp run attribute @s attack_damage get 1000
function cs16:player/on/hit_no_kill