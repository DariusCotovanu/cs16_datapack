
execute store result score $temp0 temp run data get storage cs16:temp gunData.enchantments.levels.cs16:accuracy
execute store result score @s cs16.gun.enchantment.crit_chance run data get storage cs16:temp gunData.enchantments.levels.cs16:crit_chance
execute store result score @s cs16.gun.enchantment.fire_power run data get storage cs16:temp gunData.enchantments.levels.cs16:fire_power
execute store result score @s cs16.gun.enchantment.replenish run data get storage cs16:temp gunData.enchantments.levels.cs16:replenish
scoreboard players operation $temp0 temp *= $12 const
scoreboard players set @s cs16.gun.enchantment.accuracy 100
scoreboard players operation @s cs16.gun.enchantment.accuracy -= $temp0 temp
execute if score @s cs16.gun.enchantment.accuracy matches ..-1 run scoreboard players set @s cs16.gun.enchantment.accuracy 0
scoreboard players operation @s cs16.gun.enchantment.fire_power *= $6000 const