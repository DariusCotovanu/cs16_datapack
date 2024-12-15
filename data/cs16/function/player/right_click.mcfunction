advancement revoke @s only cs16:right_click
scoreboard players set @s cs16.player.using_gun 1
execute unless score @s cs16.player.gun_use_delay matches 1.. if score @s cs16.gun.id matches 0..98 run function cs16:player/handlers/on_gun_use
execute unless score @s cs16.player.gun_use_delay matches 1.. if score @s cs16.gun.id matches ..-2 run function cs16:player/handlers/on_special_gun_use