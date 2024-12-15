execute store result score $random temp run random value 0..10
execute if score $random temp matches 0..2 at @s run loot spawn ~ ~ ~ loot cs16:ak47
execute if score $random temp matches 3 at @s run loot spawn ~ ~ ~ loot cs16:awp
execute if score $random temp matches 4..6 at @s run loot spawn ~ ~ ~ loot cs16:m4
execute if score $random temp matches 7..10 at @s run summon item ~ ~ ~ {Item:{id:"snowball",count:1,components:{"minecraft:custom_data":{gun:{isGun:1b,id:99,uid:-5231,bullets:1,total_bullets:0}}}}}