# execute store result score $temp0 temp run data get entity @s Health 5000
# execute if score $temp0 temp <= $damage temp run function cs16:player/resolve_death

$damage @s $(damage) minecraft:mob_attack by @e[type=#pve:enemy,tag=this,limit=1]