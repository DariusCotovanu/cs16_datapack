tag @s remove changed_gun
execute store result storage cs16:temp enchantments.looting int 1.0 run scoreboard players get @s pve.loot_level
function pve:set_gun_enchantments with storage cs16:temp enchantments