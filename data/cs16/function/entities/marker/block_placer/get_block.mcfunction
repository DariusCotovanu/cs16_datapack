execute unless data storage cs16:temp block run kill @s
tag @s remove new
data modify entity @s Tags append from storage cs16:temp block.name
scoreboard players set @s cs16.entity.block_placer.delay 600