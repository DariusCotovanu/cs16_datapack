tp 8-0-0-0-E7 ~ ~ ~
execute store result score $result cs16.temp run data get entity 8-0-0-0-E7 Pos[1] 100
execute store result score $playerY cs16.temp run data get entity @s Pos[1] 100
scoreboard players operation $result cs16.temp -= $playerY cs16.temp
execute store success score sneaking cs16.temp if entity @s[predicate=cs16:sneaking]

execute if score sneaking cs16.temp matches 0 if score $result cs16.temp matches ..67 run scoreboard players set bodyPart cs16.temp 0
execute if score sneaking cs16.temp matches 0 if score $result cs16.temp matches 68..154 run scoreboard players set bodyPart cs16.temp 1
execute if score sneaking cs16.temp matches 0 if score $result cs16.temp matches 155.. run scoreboard players set bodyPart cs16.temp 2
execute if score sneaking cs16.temp matches 1 if score $result cs16.temp matches ..50 run scoreboard players set bodyPart cs16.temp 0
execute if score sneaking cs16.temp matches 1 if score $result cs16.temp matches 51..119 run scoreboard players set bodyPart cs16.temp 1
execute if score sneaking cs16.temp matches 1 if score $result cs16.temp matches 120.. run scoreboard players set bodyPart cs16.temp 2

execute if score range_modifier cs16.gun.data matches ..99 run function cs16:bullet/calc_dmg

execute if score $result cs16.temp matches 1.. if score bodyPart cs16.temp matches 2 run particle minecraft:item{item:{id:"redstone"}} ~ ~ ~ 0.1 0.1 0.1 0.05 25
execute if score $result cs16.temp matches 1.. if score bodyPart cs16.temp matches 1 run particle minecraft:item{item:{id:"redstone"}} ~ ~ ~ 0.1 0.1 0.1 0.05 2
execute if score $result cs16.temp matches 1.. if score bodyPart cs16.temp matches 0 run particle minecraft:item{item:{id:"redstone"}} ~ ~ ~ 0.1 0.1 0.1 0.05 2
execute if score $result cs16.temp matches ..-1 run particle happy_villager ~ ~ ~ 0.2 0.3 0.2 1 1
execute if score bodyPart cs16.temp matches 2 run scoreboard players add @a[tag=this] stats.player.totalHeadShotsHit 1
#execute if score $result cs16.temp matches 1.. run damage @s 0.1 player_attack by @a[tag=this,limit=1]