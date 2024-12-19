data modify storage cs16:temp gunData set from entity @s SelectedItem.components.minecraft:custom_data.gun
data modify storage cs16:temp gunData.enchantments set from entity @s SelectedItem.components.minecraft:enchantments

execute store result score @s cs16.gun.uid run data get entity @s SelectedItem.components.minecraft:custom_data.gun.uid
execute store result score @s cs16.gun.range_modifier run data get storage cs16:temp gunData.range_modifier 100
execute store result score @s cs16.gun.fire_rate run data get storage cs16:temp gunData.fire_rate
execute store result score @s cs16.gun.id run data get storage cs16:temp gunData.id
execute store result score @s cs16.gun.recoilY run data get storage cs16:temp gunData.recoilY
execute store result score @s cs16.gun.recoilXZ run data get storage cs16:temp gunData.recoilXZ
execute store result score @s cs16.gun.magazine_capacity run data get storage cs16:temp gunData.magazine_capacity.total_bullets
execute store result score @s cs16.gun.magazine run data get storage cs16:temp gunData.magazine_capacity.bullets
execute store result score @s cs16.gun.damage.head run data get storage cs16:temp gunData.damage.head
execute store result score @s cs16.gun.damage.chest run data get storage cs16:temp gunData.damage.chest
execute store result score @s cs16.gun.damage.legs run data get storage cs16:temp gunData.damage.legs
execute store result score @s cs16.gun.block_pen run data get storage cs16:temp gunData.block_pen
execute store result score @s cs16.gun.reload_time run data get storage cs16:temp gunData.reloadTime

execute unless data storage cs16:temp gunData.enchantments run function cs16:guns/reset_enchantments
execute if data storage cs16:temp gunData.enchantments run function cs16:guns/set_enchantments

execute store result score @s cs16.player.bullets run data get entity @s SelectedItem.components.minecraft:custom_data.gun.bullets
tag @s remove pistol
tag @s remove smg
tag @s remove rifle
execute if data storage cs16:temp gunData.pistol run function cs16:player/get/pistol_ammo
execute if data storage cs16:temp gunData.smg run function cs16:player/get/smg_ammo
execute if data storage cs16:temp gunData.rifle run function cs16:player/get/rifle_ammo
data remove storage cs16:temp gunData