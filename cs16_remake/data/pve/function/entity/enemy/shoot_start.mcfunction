scoreboard players set $dmgHead cs16.gun.data 80
scoreboard players set $dmgChest cs16.gun.data 40
scoreboard players set $dmgLegs cs16.gun.data 20

scoreboard players set $range_modifier cs16.gun.data 30
scoreboard players operation $block_pen cs16.gun.data = @s cs16.gun.block_pen


scoreboard players set $blocks_hit cs16.gun.data 99999
scoreboard players set $hit_block cs16.gun.data 0

function cs16:guns/sound


execute store result storage cs16:temp recoil.XZ float 0.1 run random value -50..50
execute store result storage cs16:temp recoil.Y float 0.1 run random value -20..100



scoreboard players set $range cs16.gun.data 168

function cs16:bullet/init_visual with storage cs16:temp recoil
function pve:entity/enemy/init_fire_gun with storage cs16:temp recoil
