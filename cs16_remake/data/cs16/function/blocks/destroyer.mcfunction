scoreboard players add @s cs16.entity.kill_delay 1
execute if score @s cs16.entity.kill_delay matches 5.. run kill @s
execute if score @s cs16.entity.kill_delay matches 5.. run scoreboard players reset @s cs16.entity.block_damage
execute if score @s cs16.entity.kill_delay matches 5.. run scoreboard players reset @s cs16.entity.kill_delay
