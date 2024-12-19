execute store result score $temp0 temp run data get entity @s Health 100000
$damage @s $(value) minecraft:player_attack by @a[tag=this,limit=1]
execute store result score $temp1 temp run data get entity @s Health 100000
scoreboard players operation $temp0 temp -= $temp1 temp
scoreboard players operation @s cs16.player.health -= $temp0 temp
execute store result score $temp1 temp run data get entity @s Health 100
$execute if score $temp0 temp < $temp1 temp run damage @s $(real_damage) minecraft:player_attack by @a[tag=this,limit=1]
execute if score @s cs16.player.health matches ..0 run function cs16:redirect_on_death
