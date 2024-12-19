execute if score @s cs16.entity.throw_grenade_timer matches 0 if predicate cs16:02 at @s if entity @p[distance=..20] facing entity @p[] eyes run function pve:entity/enemy/grenade/f1
#execute if predicate cs16:01 unless entity @p[distance=..32] at @p run spreadplayers ~ ~ 10 20 under 90 false @s
scoreboard players add @s cs16.entity.throw_grenade_timer 1
execute if score @s cs16.entity.throw_grenade_timer matches 11.. run scoreboard players set @s cs16.entity.throw_grenade_timer 0
