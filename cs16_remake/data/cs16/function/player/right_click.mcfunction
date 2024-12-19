advancement revoke @s only cs16:right_click
tag @s add right_clicking
advancement revoke @s only cs16:check_if_right_clicking
execute unless score @s[tag=!pistol] cs16.player.gun_use_delay matches 1.. if score @s cs16.gun.id matches 0..98 run function cs16:player/on/gun_use
execute unless score @s[tag=!has_shot,tag=pistol] cs16.player.gun_use_delay matches 1.. if score @s cs16.gun.id matches 0..98 run function cs16:player/on/gun_use
execute unless score @s cs16.player.gun_use_delay matches 1.. if score @s cs16.gun.id matches ..-2 run function cs16:player/on/special_gun_use
tag @s add has_shot