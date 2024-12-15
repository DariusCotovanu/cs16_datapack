#kill @e[type=marker,tag=missile_guide,limit=1,predicate=cs16:entity_entity,sort=nearest]
scoreboard players operation grenade entity.id = @s owner.id
tag @a[predicate=cs16:player_grenade,limit=1] add this
execute store result score posX cs16.temp run data get entity @s Pos[0] 100 
execute store result score posY cs16.temp run data get entity @s Pos[1] 100
execute store result score posZ cs16.temp run data get entity @s Pos[2] 100
summon creeper ~ ~1 ~ {Fuse:-1,ExplosionRadius:-8,Health:9999,Invulnerable:1b,DeathLootTable:"",Tags:["inv"]}
execute as @e[type=!#cs16:unwanted_mob,tag=!inv,distance=..60] run function cs16:guns/missile_launcher/distance
tag @a[tag=this,limit=1] remove this
particle minecraft:flash ~ ~ ~ 2 2 2 0 10
particle minecraft:lava ~ ~ ~ 2 2 2 0 25
particle minecraft:campfire_cosy_smoke ~ ~ ~ 4 4 4 1 100
playsound entity.generic.explode ambient @a ~ ~ ~ 2 0.7
scoreboard players reset @s entity.id
kill @s