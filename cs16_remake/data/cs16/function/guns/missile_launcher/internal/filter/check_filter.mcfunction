scoreboard players operation $selected temp = @s temp
scoreboard players operation $selected temp /= $filter temp
scoreboard players operation $selected temp %= $2 const
tag @s remove missile_target.filter
execute if score $selected temp matches 1 run tag @s add missile_target.filter
