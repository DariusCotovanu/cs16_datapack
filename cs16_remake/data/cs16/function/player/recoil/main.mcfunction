execute store success score $change_dir temp if predicate cs16:02
execute if score $change_dir temp matches 1 run scoreboard players remove @s cs16.player.recoil.xz_dir 1
execute if score @s cs16.player.recoil.xz_dir matches ..-1 run scoreboard players set @s cs16.player.recoil.xz_dir 1

execute unless score @s cs16.player.recoil.xz_dir matches 1 store result score $result temp run random value 6..23
execute if score @s cs16.player.recoil.xz_dir matches 1 store result score $result temp run random value -23..-6
execute if score @s cs16.gun.id matches 20.. if score @s cs16.player.recoil_delay matches 2.. run scoreboard players operation $result temp *= @s cs16.gun.recoilXZ
execute if score @s cs16.gun.id matches ..19 run scoreboard players operation $result temp *= @s cs16.gun.recoilXZ


execute if score @s cs16.player.recoilXZ matches ..-160 run scoreboard players operation $result temp /= $10 const
execute if score @s cs16.player.recoilXZ matches 160.. run scoreboard players operation $result temp /= $10 const
scoreboard players operation @s cs16.player.recoilXZ += $result temp


execute store result score $result temp run random value 35..45

execute if score @s cs16.gun.id matches 20.. if score @s cs16.player.recoil_delay matches 2.. run scoreboard players operation $result temp *= @s cs16.gun.recoilY
execute if score @s cs16.gun.id matches ..19 run scoreboard players operation $result temp *= @s cs16.gun.recoilY
execute if score @s cs16.player.recoilY matches 1200.. store result score $result temp run random value -500..-100
scoreboard players operation @s cs16.player.recoilY += $result temp

scoreboard players operation @s cs16.player.recoilXZ *= @s cs16.gun.enchantment.accuracy
scoreboard players operation @s cs16.player.recoilY *= @s cs16.gun.enchantment.accuracy

scoreboard players operation @s cs16.player.recoilXZ /= $100 const
scoreboard players operation @s cs16.player.recoilY /= $100 const