scoreboard players operation $connection entity.id = @s entity.id
scoreboard players add @s cs16.entity.kill_delay 1
execute at @s if entity @a[predicate=cs16:player_entity,limit=1,distance=..2.4] run scoreboard players set @s cs16.entity.kill_delay 9900
execute if score @s cs16.entity.kill_delay matches 9900.. run function cs16:guns/missile_launcher/explode
execute if score @s cs16.entity.kill_delay matches 9900.. run scoreboard players reset @s entity.id
execute if score @s cs16.entity.kill_delay matches 9900.. run kill @s
scoreboard players operation $speed temp = @s cs16.entity.kill_delay
execute store result storage cs16:temp missile_speed float 0.01 run scoreboard players get @s cs16.entity.kill_delay
function cs16:guns/missile_launcher/move with storage cs16:temp
#execute as @a[predicate=cs16:player_entity,limit=1] run function cs16:guns/missile_launcher/get_guide_pos
#execute at @s run function cs16:guns/missile_launcher/update_direction