
advancement revoke @s only cs16:health_pickup
tellraw @s {"text":"You've been healed","color":"green"}
execute store success score $success temp run clear @s music_disc_cat[minecraft:custom_data~{mini_health_pack:1b}] 1
execute if score $success temp matches 1 run return run effect give @s instant_health 1 1 true
execute store success score $success temp run clear @s music_disc_cat[minecraft:custom_data~{big_health_pack:1b}] 1
execute if score $success temp matches 1 run return run effect give @s instant_health 1 3 true