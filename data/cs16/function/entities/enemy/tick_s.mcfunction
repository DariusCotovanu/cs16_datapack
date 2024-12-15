execute if score @s cs16.entity.throw_grenade_timer matches 0 if predicate cs16:02 at @s if entity @p[distance=..20] facing entity @p[] eyes run function cs16:entities/enemy/grenade/f1
scoreboard players add @s cs16.entity.throw_grenade_timer 1
execute if score @s cs16.entity.throw_grenade_timer matches 10.. run scoreboard players set @s cs16.entity.throw_grenade_timer 0