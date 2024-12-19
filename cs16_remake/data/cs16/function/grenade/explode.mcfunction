execute store result score posX temp run data get entity @s Pos[0] 100 
execute store result score posY temp run data get entity @s Pos[1] 100
execute store result score posZ temp run data get entity @s Pos[2] 100

execute on origin run function cs16:grenade/on_shooter

execute if entity @s[tag=thrown_by_npc] run tag @e[type=#pve:enemy,distance=..9] add inv

scoreboard players set $total_damage_dealt temp 0
execute as @e[type=!#cs16:unwanted_mob,tag=!inv,distance=..9] facing entity @s eyes run function cs16:grenade/distance
scoreboard players operation $total_damage_dealt temp /= $5000 const
execute on origin run scoreboard players operation @s cs16.player.damage_dealt = $total_damage_dealt temp
tag @e[type=#pve:enemy,distance=..9] remove inv
execute on origin run tag @s remove this
playsound entity.generic.explode ambient @a

particle explosion_emitter
particle minecraft:campfire_cosy_smoke ~ ~ ~ 0 0 0 .4 25 normal
particle minecraft:flame ~ ~2 ~ 2 2 2 .4 5 normal

execute at @s run summon creeper ~ ~1 ~ {Fuse:-1,ExplosionRadius:-1,Health:9999,Invulnerable:1b,DeathLootTable:"",Tags:["inv"]}

execute on passengers run kill @s
#execute as @e[type=marker,tag=block_placer,distance=..6] at @s run setblock ~ ~ ~ air destroy
scoreboard players reset @s entity.id
kill @s