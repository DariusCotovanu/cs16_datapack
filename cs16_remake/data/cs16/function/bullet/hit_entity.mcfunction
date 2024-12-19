tag @s add bullet_check

scoreboard players set @a[tag=this,limit=1] cs16.show_dmg_timer 20

function cs16:bullet/get_dmg
execute if entity @s[type=player,gamemode=!creative,gamemode=!spectator] run function cs16:player/on/hit
execute if entity @s[type=!player] run function cs16:entity/on_hit
scoreboard players operation $dmgHead cs16.gun.data /= $2 const
scoreboard players operation $dmgChest cs16.gun.data /= $2 const
scoreboard players operation $dmgLegs cs16.gun.data /= $2 const