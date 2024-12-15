execute if entity @s[type=skeleton] run scoreboard players operation $i cs16.temp = $range cs16.temp
scoreboard players set $i cs16.temp 20

$execute anchored eyes positioned ^ ^ ^2 rotated ~$(XZ) ~$(Y) run function cs16:bullet/visual_raycast
