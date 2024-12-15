
scoreboard players operation dmgHead cs16.gun.data = @s cs16.gun.damage.head
scoreboard players operation dmgChest cs16.gun.data = @s cs16.gun.damage.chest
scoreboard players operation dmgLegs cs16.gun.data = @s cs16.gun.damage.legs

scoreboard players operation range_modifier cs16.gun.data = @s cs16.gun.range_modifier
scoreboard players operation $block_pen cs16.gun.data = @s cs16.gun.block_pen

execute store result score $result cs16.temp run scoreboard players get @s cs16.gun.model
execute store result storage cs16:temp gunData.model int 1.0 run scoreboard players add $result cs16.temp 1
function cs16:guns/set_model with storage cs16:temp gunData
scoreboard players set @s cs16.player.fired_gun 2

scoreboard players add @s cs16.player.recoil_delay 1
scoreboard players set $blocks_hit cs16.gun.data 0
execute if score $wallbang cs16.global matches 0 run scoreboard players set $blocks_hit cs16.gun.data 99999
scoreboard players set $hit_block cs16.gun.data 0

execute if score @s cs16.gun.id matches 0..19 run scoreboard players set @s cs16.player.gun_use_delay 3

function cs16:guns/sound


execute if entity @s[nbt={OnGround:0b}] run function cs16:player/recoil/main

execute store result storage cs16:temp recoil.XZ float 0.01 run scoreboard players get @s cs16.player.recoilXZ
execute store result storage cs16:temp recoil.Y float -0.003 run scoreboard players get @s cs16.player.recoilY
execute if score jump_recoil cs16.temp matches 1 run scoreboard players set @s cs16.player.recoilY 0
scoreboard players set jump_recoil cs16.temp 0


scoreboard players operation $range cs16.gun.data = $gun_range cs16.global
function cs16:bullet/init_visual with storage cs16:temp recoil
function cs16:player/init_fire_gun with storage cs16:temp recoil
function cs16:player/recoil/main

function cs16:guns/update_gun

