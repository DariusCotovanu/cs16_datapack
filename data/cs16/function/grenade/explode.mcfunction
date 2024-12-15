execute store result score posX cs16.temp run data get entity @s Pos[0] 100 
execute store result score posY cs16.temp run data get entity @s Pos[1] 100
execute store result score posZ cs16.temp run data get entity @s Pos[2] 100
scoreboard players operation $connection entity.id = @s entity.id

tag @a[predicate=cs16:player_entity,limit=1] add this
execute if entity @s[tag=thrown_by_npc] run tag @e[type=husk,distance=..12] add inv
execute as @e[type=!#cs16:unwanted_mob,tag=!inv,distance=..12] facing entity @s eyes run function cs16:grenade/distance
tag @e[type=husk,distance=..12] remove inv
tag @a[tag=this,limit=1] remove this
playsound entity.generic.explode ambient @a

particle explosion_emitter
particle minecraft:campfire_cosy_smoke ~ ~ ~ 0 0 0 .4 25 normal
particle minecraft:flame ~ ~2 ~ 2 2 2 .4 5 normal

execute at @s run summon creeper ~ ~1 ~ {Fuse:-1,ExplosionRadius:-1,Health:9999,Invulnerable:1b,DeathLootTable:"",Tags:["inv"]}

execute on passengers run kill @s
execute as @e[type=marker,tag=block_placer,distance=..6] at @s run setblock ~ ~ ~ air destroy
scoreboard players reset @s entity.id


#execute positioned ~ ~-1 ~ run function cs16:blocks/get



kill @s