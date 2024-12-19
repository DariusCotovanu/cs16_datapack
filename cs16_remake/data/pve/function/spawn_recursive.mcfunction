scoreboard players remove $i temp 1

execute store success score $success temp if predicate cs16:01
execute if score $success temp matches 0 run function pve:entity/enemy/spawn_husk
execute if score $success temp matches 1 store success score $success temp if predicate cs16:02
execute if score $success temp matches 0 summon skeleton run function pve:entity/enemy/spawn_skelly
execute if score $success temp matches 1 summon wither_skeleton run function pve:entity/enemy/spawn_wither_skeleton


execute if score $i temp matches 1.. run function pve:spawn_recursive