particle small_flame
tp @s ^ ^ ^.7
#execute unless block ~ ~ ~ air run summon minecraft:falling_block ~ ~.2 ~ {BlockState:{Name:"fire"}}
execute unless block ~ ~ ~ air run kill @s
scoreboard players operation $connection entity.id = @s entity.id
scoreboard players add @s cs16.entity.kill_delay 1
execute store result score yaw temp run data get entity @s Rotation[0] 10
execute store result score pitch temp run data get entity @s Rotation[1] 10
execute store result score add temp run random value -25..25
scoreboard players operation yaw temp += add temp
execute store result score add temp run random value -25..25
scoreboard players operation pitch temp += add temp

execute store result entity @s Rotation[0] float 0.1 run scoreboard players get yaw temp
execute store result entity @s Rotation[1] float 0.1 run scoreboard players get pitch temp

#execute positioned ~-.15 ~-.15 ~-.15 as @a[dx=0,predicate=cs16:player_entity] positioned ~-.7 ~-.7 ~-.7 if entity @s[dx=0] run tag @s add flame_hit
#execute as @a[tag=flame_hit,limit=1,predicate=!cs16:on_fire] at @s run summon small_fireball ~ ~2.5 ~ {Motion:[0.0d,-1.5d,0.0d],Tags:["new"]}
#data modify entity @e[type=small_fireball,tag=new,limit=1] Owner set from entity @a[predicate=cs16:player_entity,limit=1] UUID
execute if entity @a[tag=flame_hit,limit=1] run kill @s

tag @a[tag=flame_hit,limit=1] remove flame_hit

execute if score @s cs16.entity.kill_delay matches 10.. run kill @s