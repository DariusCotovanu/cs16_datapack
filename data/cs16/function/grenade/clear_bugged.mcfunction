scoreboard players set $success temp 0
execute on vehicle run scoreboard players set $success temp 1
execute if score $success temp matches 0 run kill @s