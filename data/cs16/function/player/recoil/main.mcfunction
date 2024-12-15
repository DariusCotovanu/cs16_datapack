execute store success score change_dir cs16.temp if predicate cs16:01
execute if score change_dir cs16.temp matches 1 run scoreboard players remove @s cs16.player.recoil.xz_dir 1
execute if score @s cs16.player.recoil.xz_dir matches ..-1 run scoreboard players set @s cs16.player.recoil.xz_dir 1

execute unless score @s cs16.player.recoil.xz_dir matches 1 store result score $result cs16.temp run random value 6..23
execute if score @s cs16.player.recoil.xz_dir matches 1 store result score $result cs16.temp run random value -23..-6
execute if score jump_recoil cs16.temp matches 1 store result score $result cs16.temp run random value -153..153
execute if score @s cs16.gun.id matches 20.. if score @s cs16.player.recoil_delay matches 2.. run scoreboard players operation $result cs16.temp *= @s cs16.gun.recoilXZ
execute if score @s cs16.gun.id matches 20.. if score jump_recoil cs16.temp matches 1 run scoreboard players operation $result cs16.temp *= @s cs16.gun.recoilXZ
execute if score @s cs16.gun.id matches ..19 run scoreboard players operation $result cs16.temp *= @s cs16.gun.recoilXZ

# execute if score @s cs16.player.recoilXZ matches ..-270 if score $result cs16.temp matches ..-1 run scoreboard players operation $result cs16.temp *= $-1 const
# execute if score @s cs16.player.recoilXZ matches 270.. if score $result cs16.temp matches 1.. run scoreboard players operation $result cs16.temp *= $-1 const
execute if score @s cs16.player.recoilXZ matches ..-170 run scoreboard players operation $result cs16.temp /= $10 const
execute if score @s cs16.player.recoilXZ matches 170.. run scoreboard players operation $result cs16.temp /= $10 const
scoreboard players operation @s cs16.player.recoilXZ += $result cs16.temp


execute store result score $result cs16.temp run random value 35..45
execute if score jump_recoil cs16.temp matches 1 store result score $result cs16.temp run random value 216..321
execute if score jump_recoil cs16.temp matches 1 if predicate cs16:05 store result score $result cs16.temp run random value -321..-216

execute if score @s cs16.gun.id matches 20.. if score @s cs16.player.recoil_delay matches 2.. run scoreboard players operation $result cs16.temp *= @s cs16.gun.recoilY
execute if score @s cs16.gun.id matches 20.. if score jump_recoil cs16.temp matches 1 run scoreboard players operation $result cs16.temp *= @s cs16.gun.recoilY
execute if score @s cs16.gun.id matches ..19 run scoreboard players operation $result cs16.temp *= @s cs16.gun.recoilY
execute if score @s cs16.player.recoilY matches 2300.. store result score $result cs16.temp run random value -400..-250
scoreboard players operation @s cs16.player.recoilY += $result cs16.temp