#scoreboard objectives add temp dummy
scoreboard objectives add temp dummy
scoreboard objectives add cs16.global dummy

scoreboard objectives add motion.x dummy
scoreboard objectives add motion.y dummy
scoreboard objectives add motion.z dummy

scoreboard objectives add player.id dummy
scoreboard objectives add entity.id dummy
scoreboard objectives add owner.id dummy
scoreboard objectives add killer.id dummy

#This indicates how much the bullet damage is reduced based on distance traveled
##IMPORTANT must be between 0 and 100 (probably can work from -100 to 0, not tested)
scoreboard objectives add cs16.gun.range_modifier dummy

#gun fire speed -> cs16.gun.fire_rate/20 gives you how many rounds per seconds the gun can fire
scoreboard objectives add cs16.gun.fire_rate dummy

#Maximum amount of bullets a gun can store
scoreboard objectives add cs16.gun.magazine_capacity dummy

#The amount of bullets one round can store
scoreboard objectives add cs16.gun.magazine dummy


#Gun type identifier
scoreboard objectives add cs16.gun.id dummy

#Unique gun identifier( no matter the type)
scoreboard objectives add cs16.gun.uid dummy

scoreboard objectives add cs16.gun.data dummy


scoreboard objectives add cs16.gun.damage.head dummy
scoreboard objectives add cs16.gun.damage.chest dummy
scoreboard objectives add cs16.gun.damage.legs dummy
scoreboard objectives add cs16.gun.recoilY dummy
scoreboard objectives add cs16.gun.recoilXZ dummy
scoreboard objectives add cs16.gun.block_pen dummy
scoreboard objectives add cs16.gun.fire_rate_delay dummy
scoreboard objectives add cs16.gun.empty dummy
scoreboard objectives add cs16.gun.playsound_reload dummy
scoreboard objectives add cs16.gun.reload_time dummy
scoreboard objectives add cs16.gun.model dummy
scoreboard objectives add cs16.gun.dropped.status dummy
scoreboard objectives add cs16.gun.dropped.pickup_delay dummy

scoreboard objectives add cs16.gun.enchantment.accuracy dummy
scoreboard objectives add cs16.gun.enchantment.crit_chance dummy
scoreboard objectives add cs16.gun.enchantment.fire_power dummy
scoreboard objectives add cs16.gun.enchantment.replenish dummy


scoreboard objectives add cs16.player.fire_rate_delay dummy
scoreboard objectives add cs16.player.recoil_delay dummy
scoreboard objectives add cs16.player.reloading_delay dummy

#BOOLEAN
scoreboard objectives add cs16.player.reloading dummy
scoreboard objectives add cs16.player.using_gun dummy

#DATA

scoreboard objectives add cs16.player.health dummy
#scoreboard objectives add cs16.player.max_primary dummy


scoreboard objectives add cs16.player.bullets dummy
scoreboard objectives add cs16.player.total_bullets dummy
scoreboard objectives add cs16.player.yaw dummy
scoreboard objectives add cs16.player.pitch dummy
scoreboard objectives add cs16.player.recoilXZ dummy
scoreboard objectives add cs16.player.recoilY dummy
scoreboard objectives add cs16.player.recoil.xz_dir dummy
scoreboard objectives add cs16.player.recoil.y_dir dummy
scoreboard objectives add cs16.player.balance dummy
scoreboard objectives add cs16.player.gun_use_delay dummy

scoreboard objectives add cs16.player.threw_grenade minecraft.used:minecraft.snowball


scoreboard objectives add cs16.player.damage_dealt dummy

# scoreboard objectives add cs16.player.max_primary dummy
# scoreboard objectives add cs16.player.max_secondary dummy

scoreboard objectives add cs16.player.pistol_ammo dummy
scoreboard objectives add cs16.player.smg_ammo dummy
scoreboard objectives add cs16.player.rifle_ammo dummy
scoreboard objectives add cs16.player.shotgun_ammo dummy

#entities

scoreboard objectives add cs16.entity.throw_grenade_timer dummy
scoreboard objectives add cs16.entity.throw_grenade_timer_max dummy
scoreboard objectives add cs16.entity.block_damage dummy
scoreboard objectives add cs16.entity.block_place_delay dummy

scoreboard objectives add cs16.bullet.kill_delay dummy
scoreboard objectives add cs16.entity.kill_delay dummy
#-------

scoreboard objectives add cs16.grenade.rotx dummy
scoreboard objectives add cs16.grenade.rotz dummy

scoreboard objectives add cs16.grenade.scalex dummy
scoreboard objectives add cs16.grenade.scaley dummy
scoreboard objectives add cs16.grenade.scalez dummy


scoreboard objectives add cs16.grenade.explosion_delay dummy
#utils
scoreboard objectives add cs16.actionbar dummy

#Player stat trackers
scoreboard objectives add stats.player.totalHeadShotsHit dummy
scoreboard objectives add stats.player.totalHeadShotKills dummy
scoreboard objectives add stats.player.totalDeathCount deathCount
scoreboard objectives add stats.player.alltimeKills playerKillCount


#
scoreboard objectives add cs16.show_dmg_timer dummy


scoreboard objectives add const dummy
scoreboard players set $-1 const -1
scoreboard players set $1 const 1
scoreboard players set $2 const 2
scoreboard players set $3 const 3
scoreboard players set $4 const 4
scoreboard players set $5 const 5
scoreboard players set $6 const 6
scoreboard players set $8 const 8
scoreboard players set $10 const 10
scoreboard players set $12 const 12
scoreboard players set $16 const 16
scoreboard players set $20 const 20
scoreboard players set $25 const 25
scoreboard players set $27 const 27
scoreboard players set $40 const 40
scoreboard players set $50 const 50
scoreboard players set $60 const 60
scoreboard players set $100 const 100
scoreboard players set $150 const 150
scoreboard players set $200 const 200
scoreboard players set $500 const 500
scoreboard players set $1000 const 1000
scoreboard players set $2000 const 2000
scoreboard players set $1280 const 1280
scoreboard players set $2560 const 2560
scoreboard players set $5000 const 5000
scoreboard players set $5120 const 5120
scoreboard players set $6000 const 6000
scoreboard players set $9000 const 9000
scoreboard players set $10000 const 10000
scoreboard players set $24000 const 24000
scoreboard players set $500000 const 500000
scoreboard players set $billion const 1000000000



