kill @e[type=snowball,sort=nearest,limit=1]

execute store result score $playerX cs16.temp run data get entity @s Pos[0] 100
execute store result score $playerY cs16.temp run data get entity @s Pos[1] 100
execute store result score $playerZ cs16.temp run data get entity @s Pos[2] 100

execute store result score $yaw cs16.temp run data get entity @s Rotation[0] 100
execute store result score $pitch cs16.temp run data get entity @s Rotation[1] 100

execute positioned ^ ^ ^.5 summon marker run function cs16:grenade/f2
execute anchored eyes positioned ^ ^ ^.5 run function cs16:grenade/spawn with storage cs16:temp motion
scoreboard players operation $connection entity.id = @s player.id
execute as @e[type=item,tag=new,limit=1,sort=nearest] run function cs16:grenade/init
playsound entity.snowball.throw player @a