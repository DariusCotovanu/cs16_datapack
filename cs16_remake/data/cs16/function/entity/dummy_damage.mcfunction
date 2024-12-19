execute store result score $temp0 temp run data get entity @s Health 1000
$damage @s $(value) cs16:gun by @a[tag=this,limit=1]
execute store result score $temp1 temp run data get entity @s Health 1000

execute store result storage cs16:temp post_mitigation_damage float 0.001 run scoreboard players operation $temp0 temp -= $temp1 temp
$tellraw @a[tag=this] [{"text":"Premitigation damage: $(value)","color":"green"}]
tellraw @a[tag=this] [{"text":"Postmitigation damage: ","color":"gold"},{"nbt": "post_mitigation_damage","storage": "cs16:temp"}]

