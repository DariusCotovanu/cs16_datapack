summon marker ^.03 ^ ^ {Tags:["flame","new"]}
summon marker ^.07 ^ ^ {Tags:["flame","new"]}
summon marker ^-.03 ^ ^ {Tags:["flame","new"]}
summon marker ^-.07 ^ ^ {Tags:["flame","new"]}
summon marker ^ ^.1 ^ {Tags:["flame","new"]}
summon marker ^ ^-.1 ^ {Tags:["flame","new"]}
scoreboard players operation $connection entity.id = @s player.id
scoreboard players operation @e[tag=flame,tag=new,type=marker] entity.id = $connection entity.id
tag @s add flame_target
execute as @e[tag=flame,tag=new,type=marker] at @s facing entity @p[tag=flame_target,limit=1] eyes run tp @s ~ ~ ~ ~ ~
execute as @e[tag=flame,tag=new,type=marker] run tp @s ^-.5 ^-.4 ^1.1
tag @s remove flame_target
tag @e[tag=flame,tag=new,type=marker] remove new
playsound entity.blaze.shoot player @a