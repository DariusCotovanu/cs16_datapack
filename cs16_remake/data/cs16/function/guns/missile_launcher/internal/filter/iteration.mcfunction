# Executes a single filter iteration and calls the next one
#say hi @e[tag=missile_target]
execute if score $filter temp matches 1.. as @a[tag=missile_target] run function cs16:guns/missile_launcher/internal/filter/check_filter
execute if score $filter temp matches 0 run tag @a[tag=missile_target] add missile_target.filter

execute store success score $success temp if predicate cs16:missile_target_filter

execute if score $success temp matches 0 run tag @a[tag=missile_target.filter] remove missile_target
execute if score $success temp matches 1 run tag @a[tag=!missile_target.filter] remove missile_target

scoreboard players operation $filter temp *= $2 const
execute if score $filter temp matches 0 run scoreboard players set $filter temp 1

execute if entity @a[tag=missile_target,limit=1] if score $filter temp <= $max temp run function cs16:guns/missile_launcher/internal/filter/iteration
