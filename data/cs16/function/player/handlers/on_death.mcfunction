attribute @s minecraft:generic.max_health base set 40
effect give @s instant_health 1 10 true

scoreboard players set @s cs16.player.using_gun 0
scoreboard players set @s player.health 660
execute at @s run spreadplayers -90 -90 10 40 under 63 false @s
execute if score bomb_kill cs16.temp matches 1 run scoreboard players set bodyPart cs16.temp -1
execute if score server_kill temp matches 1 run scoreboard players set bodyPart cs16.temp -1 
execute if score flame_kill cs16.temp matches 1 run scoreboard players set bodyPart cs16.temp -1
execute if score missile_kill cs16.temp matches 1 run scoreboard players set bodyPart cs16.temp -1
execute store result score random temp run random value 0..1


execute if score bodyPart cs16.temp matches 0 run tellraw @a[] [{"text":"","color":"#DB270B","bold":true},{"selector":"@a[tag=this,limit=1]","bold":false},{"text":" killed ","color":"#16DBAD","bold":false},{"selector":"@s","bold":false},{"text":" using ","color":"#16DBAD","bold":false},{"nbt":"SelectedItem.components.minecraft:custom_data.gun.name","entity":"@a[tag=this,limit=1]"}]
execute if score bodyPart cs16.temp matches 1 run tellraw @a[] [{"text":"","color":"#DB270B","bold":true},{"selector":"@a[tag=this,limit=1]","bold":false},{"text":" killed ","color":"#16DBAD","bold":false},{"selector":"@s","bold":false},{"text":" using ","color":"#16DBAD","bold":false},{"nbt":"SelectedItem.components.minecraft:custom_data.gun.name","entity":"@a[tag=this,limit=1]"}]
execute if score bodyPart cs16.temp matches 2 run tellraw @a[] [{"text":"","color":"#DB270B","bold":true},{"selector":"@a[tag=this,limit=1]","bold":false},{"text":" headshoted ","color":"#16DBAD","bold":false},{"selector":"@s","bold":false},{"text":" using ","color":"#16DBAD","bold":false},{"nbt":"SelectedItem.components.minecraft:custom_data.gun.name","entity":"@a[tag=this,limit=1]"}]
execute if score bomb_kill cs16.temp matches 1 if score random temp matches 0 if score grenade entity.id matches 1.. run tellraw @a[] [{"text":"","color":"#DB270B","bold":true},{"selector":"@a[tag=this,limit=1]","bold":false},{"text":" turned ","color":"#16DBAD","bold":false},{"selector":"@s","bold":false},{"text":" into a pile of flesh","color":"#16DBAD","bold":false}]
execute if score bomb_kill cs16.temp matches 1 if score random temp matches 1 if score grenade entity.id matches 1.. run tellraw @a[] [{"text":"","color":"#DB270B","bold":true},{"selector":"@a[tag=this,limit=1]","bold":false},{"text":" bombed ","color":"#16DBAD","bold":false},{"selector":"@s","bold":false},{"text":"","color":"#16DBAD","bold":false}]
execute if score bomb_kill cs16.temp matches 1 if score $connection entity.id matches 0 run tellraw @a[] [{"text":"","color":"#DB270B","bold":true},{"text":"The server","bold":false},{"text":" killed ","color":"#16DBAD","bold":false},{"selector":"@s","bold":false},{"text":" because it can.","color":"#16DBAD","bold":false}]
execute if score server_kill temp matches 1 run tellraw @a[] [{"text":"","color":"#DB270B","bold":true},{"selector":"@s","bold":false},{"text":" died","color":"#16DBAD","bold":false}]
execute if score flame_kill cs16.temp matches 1 run tellraw @a[] [{"text":"","color":"#DB270B","bold":true},{"selector":"@a[tag=this,limit=1]","bold":false},{"text":" burned ","color":"#16DBAD","bold":false},{"selector":"@s","bold":false},{"text":" to death using ","color":"#16DBAD","bold":false},{"nbt":"SelectedItem.components.minecraft:custom_data.gun.name","entity":"@a[tag=this,limit=1]"}]




execute if score missile_kill cs16.temp matches 1 if score random temp matches 0 run tellraw @a[] [{"text":"","color":"#DB270B","bold":true},{"selector":"@a[tag=this,limit=1]","bold":false},{"text":" vaporized ","color":"#16DBAD","bold":false},{"selector":"@s","bold":false},{"text":" using a missile","color":"#16DBAD","bold":false}]
execute if score missile_kill cs16.temp matches 1 if score random temp matches 1 run tellraw @a[] [{"text":"","color":"#DB270B","bold":true},{"selector":"@a[tag=this,limit=1]","bold":false},{"text":" said o7 to ","color":"#16DBAD","bold":false},{"selector":"@s","bold":false},{"text":" using a missile","color":"#16DBAD","bold":false}]



execute if score bodyPart cs16.temp matches 2 run scoreboard players add @a[tag=this] stats.player.totalHeadShotKills 1
scoreboard players add @s stats.player.totalDeathCount 1
scoreboard players add @s stats.player.roundDeathCount 1
tag @s remove alive

execute if entity @s[tag=!this] run scoreboard players add @a[tag=this,limit=1] stats.player.alltimeKills 1
execute if entity @s[tag=!this] run scoreboard players add @a[tag=this,limit=1] stats.player.roundKillCount 1
execute if entity @s[tag=!this] run scoreboard players add @a[tag=this,limit=1] cs16.player.balance 300


function cs16:guns/give_all
function cs16:guns/give_weird
loot give @s loot cs16:grenade
loot give @s loot cs16:grenade
loot give @s loot cs16:grenade
loot give @s loot cs16:grenade
loot give @s loot cs16:grenade
loot give @s loot cs16:grenade
loot give @s loot cs16:grenade
loot give @s loot cs16:grenade
loot give @s loot cs16:grenade
loot give @s loot cs16:grenade
loot give @s loot cs16:grenade
#function cs16:guns/give_weird
