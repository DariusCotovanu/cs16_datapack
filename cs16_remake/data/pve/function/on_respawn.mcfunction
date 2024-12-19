gamemode survival @s
spreadplayers ~ ~ 5 30 under 85 false @s 
scoreboard players reset @s pve.deaths


execute unless score @s last_survival_time > @s time_survived run scoreboard players operation @s last_survival_time = @s time_survived
scoreboard players set @s time_survived 0


scoreboard players set @s pve.health_level 0
scoreboard players set @s pve.speed_level 0
scoreboard players set @s pve.loot_level 0
scoreboard players set @s pve.levelup_points 0

attribute @s max_health base reset
attribute @s movement_speed base reset
xp set @s 0 levels
xp set @s 0 points
clear @s

loot give @s loot cs16:gun/pistol/glock
loot give @s loot cs16:gun/smg/mp5

give @s music_disc_cat[!minecraft:jukebox_playable,max_stack_size=64,item_name='{"text":"Pistol AMMO","color":"aqua","italic":false}',item_model="cs16:ammo/pistol",custom_data={pistol: true,ammo: true}] 128
give @s music_disc_cat[!minecraft:jukebox_playable,max_stack_size=64,item_name='{"text":"Pistol AMMO","color":"aqua","italic":false}',item_model="cs16:ammo/smg",custom_data={smg: true,ammo: true}] 120
give @s diamond_sword

give @s minecraft:snowball[custom_data={gun:{isGun:1b,id:99,uid:-5231,bullets:1,total_bullets:0}}] 2
effect give @s resistance 2 255 true
give @s totem_of_undying 1