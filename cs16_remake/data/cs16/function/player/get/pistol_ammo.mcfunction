tag @s add pistol
execute store result score @s cs16.player.pistol_ammo if items entity @s inventory.* minecraft:music_disc_cat[minecraft:custom_data~{pistol:1b}]
execute store result score $temp0 temp if items entity @s hotbar.* minecraft:music_disc_cat[minecraft:custom_data~{pistol:1b}]
scoreboard players operation @s cs16.player.pistol_ammo += $temp0 temp
scoreboard players operation @s cs16.player.total_bullets = @s cs16.player.pistol_ammo
