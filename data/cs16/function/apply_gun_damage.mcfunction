$execute unless entity @e[tag=this,limit=1] run damage @s $(value) cs16:gun 
$damage @s $(value) cs16:gun by @e[tag=this,limit=1]
execute if entity @s[nbt={Health:0.0f}] run function cs16:player/resolve_death
execute if predicate cs16:01 if entity @s[nbt={Health:0.0f},type=husk] run function cs16:spawn_item