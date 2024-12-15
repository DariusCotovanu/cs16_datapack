data modify storage cs16:temp item set from entity @s Item
execute store result score item_rotation cs16.temp run data get entity @s Rotation[0] 10
execute summon item_display run function cs16:guns/dropped/spawn
kill @s
#data remove storage cs16:temp item