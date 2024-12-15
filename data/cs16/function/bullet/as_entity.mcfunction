tag @s add this
execute at @s run summon marker ~ ~1.65 ~ {Tags:["raycaster"]}
scoreboard players set $range cs16.gun.data 256
scoreboard players set dmgLegs cs16.gun.data 10
scoreboard players set dmgChest cs16.gun.data 20
scoreboard players set dmgHead cs16.gun.data 32
scoreboard players set dmgLegsA cs16.gun.data 7
scoreboard players set dmgChestA cs16.gun.data 15
scoreboard players set dmgHeadA cs16.gun.data 25
execute at @s run function cs16:guns/usp/playsound
execute store result storage cs16:temp value.x int 1.0 run random value -8..27



# execute store result score random temp run random value -3..3

# execute if score random temp matches -3 run tp @s ~ ~ ~ ~-2 ~
# execute if score random temp matches -2 run tp @s ~ ~ ~ ~-4 ~ 
# execute if score random temp matches -1 run tp @s ~ ~ ~ ~-5 ~

# execute if score random temp matches 1 run tp @s ~ ~ ~ ~2 ~
# execute if score random temp matches 2 run tp @s ~ ~ ~ ~4 ~
# execute if score random temp matches 3 run tp @s ~ ~ ~ ~5 ~



tag @e[type=skeleton] add inv
execute at @s anchored eyes facing entity @p[tag=target] eyes run function cs16:bullet/init_raycast with storage cs16:temp value
tag @e[type=skeleton] remove inv
tag @s remove this
tag @a[tag=bullet_check] remove bullet_check
kill @e[type=marker,tag=raycaster]
