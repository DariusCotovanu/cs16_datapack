scoreboard players operation total_bullets cs16.temp = @s cs16.player.total_bullets
scoreboard players add total_bullets cs16.temp 30
execute if score total_bullets cs16.temp > @s cs16.gun.magazine_capacity run scoreboard players operation total_bullets cs16.temp = @s cs16.gun.magazine_capacity
execute store result storage cs16:temp total_bullets int 1.0 run scoreboard players get total_bullets cs16.temp
item modify entity @s weapon.mainhand cs16:update_magazine_capacity
scoreboard players operation @s cs16.player.total_bullets = total_bullets cs16.temp