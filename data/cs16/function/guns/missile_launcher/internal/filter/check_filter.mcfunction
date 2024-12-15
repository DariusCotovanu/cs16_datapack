scoreboard players operation $selected cs16.temp = @s cs16.temp
scoreboard players operation $selected cs16.temp /= $filter cs16.temp
scoreboard players operation $selected cs16.temp %= $2 const
tag @s remove missile_target.filter
execute if score $selected cs16.temp matches 1 run tag @s add missile_target.filter
