execute if entity @s[type=skeleton] run scoreboard players operation $i temp = $range temp
scoreboard players set $i temp 20

$execute anchored eyes positioned ^ ^ ^2 rotated ~$(XZ) ~$(Y) run function cs16:bullet/visual_raycast
