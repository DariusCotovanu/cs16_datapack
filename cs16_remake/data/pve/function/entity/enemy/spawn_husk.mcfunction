execute store result score $result temp run random value 0..10

execute if score $result temp matches 0..7 run return run summon husk ~ ~ ~ {Tags:["bla","pve_enemy"],attributes:[{id:"movement_speed",base:0.2}],Silent:true,DeathLootTable:"pve:entity/generic",PersistenceRequired:true}
execute if score $result temp matches 8..9 run return run summon husk ~ ~ ~ {Tags:["bla","pve_enemy"],attributes:[{id:"movement_speed",base:0.35}],Silent:true,DeathLootTable:"pve:entity/generic",PersistenceRequired:true}
execute if score $result temp matches 10 run return run summon husk ~ ~ ~ {Tags:["bla","pve_enemy"],attributes:[{id:"movement_speed",base:0.5}],Silent:true,DeathLootTable:"pve:entity/generic",PersistenceRequired:true}