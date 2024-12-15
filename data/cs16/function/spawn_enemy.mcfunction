execute store result score $entities temp if entity @e[type=#cs16:enemy]
execute if score $entities temp matches 6.. run return 0
execute if predicate cs16:02 run execute summon husk run function cs16:boss

summon husk ~ ~ ~ {Tags:["bla"],attributes:[{id:"generic.movement_speed",base:0.18}],Silent:true,DeathLootTable:""}
summon husk ~ ~ ~ {Tags:["bla"],attributes:[{id:"generic.movement_speed",base:0.18}],Silent:true,DeathLootTable:""}
summon husk ~ ~ ~ {Tags:["bla"],attributes:[{id:"generic.movement_speed",base:0.18}],Silent:true,DeathLootTable:""}
summon husk ~ ~ ~ {Tags:["bla"],attributes:[{id:"generic.movement_speed",base:0.18}],Silent:true,DeathLootTable:""}
summon husk ~ ~ ~ {Tags:["bla"],attributes:[{id:"generic.movement_speed",base:0.18}],Silent:true,DeathLootTable:""}
summon husk ~ ~ ~ {Tags:["bla"],attributes:[{id:"generic.movement_speed",base:0.18}],Silent:true,DeathLootTable:""}
summon husk ~ ~ ~ {Tags:["bla"],attributes:[{id:"generic.movement_speed",base:0.18}],Silent:true,DeathLootTable:""}
summon husk ~ ~ ~ {Tags:["bla"],attributes:[{id:"generic.movement_speed",base:0.18}],Silent:true,DeathLootTable:""}
summon husk ~ ~ ~ {Tags:["bla"],attributes:[{id:"generic.movement_speed",base:0.18}],Silent:true,DeathLootTable:""}
summon husk ~ ~ ~ {Tags:["bla"],attributes:[{id:"generic.movement_speed",base:0.18}],Silent:true,DeathLootTable:""}
execute as @e[type=husk,tag=bla] store result score @s cs16.entity.throw_grenade_timer run random value 0..7
execute if predicate cs16:02 run summon skeleton ~ ~ ~ {Tags:["bla"],attributes:[{id:"generic.movement_speed",base:0.18}],Silent:true,DeathLootTable:"",LeftHanded:1b,HandDropChances:[0f,0.7f],ArmorItems:[{},{},{},{id:"stone_button"}]}
summon skeleton ~ ~ ~ {Tags:["bla"],attributes:[{id:"generic.movement_speed",base:0.18}],Silent:true,DeathLootTable:"",LeftHanded:1b,HandDropChances:[0f,0.7f],ArmorItems:[{id:"stone_button"},{},{},{id:"stone_button"}]}
loot replace entity @e[type=skeleton,tag=bla,limit=2] weapon.offhand loot cs16:deagle
item replace entity @e[type=skeleton,tag=bla,limit=2] weapon.mainhand with bow
execute at @r run spreadplayers ~ ~ 10 25 under 85 false @e[type=#cs16:enemy,tag=bla]
tag @e[type=#cs16:enemy] remove bla