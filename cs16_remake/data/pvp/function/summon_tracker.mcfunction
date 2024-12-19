data modify entity @s teleport_duration set value 15
scoreboard players operation @s entity.id = $connection entity.id
scoreboard players operation @s killer.id = @a[tag=this,limit=1] player.id
data modify entity @s Rotation set from storage cs16:temp Rotation