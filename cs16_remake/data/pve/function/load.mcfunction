scoreboard objectives add pve.deaths deathCount

bossbar add pve:enemy_left "Enemies Left"

scoreboard objectives add pve.global trigger

scoreboard objectives add pve.levelup_loot trigger
scoreboard objectives add pve.levelup_fire_power trigger
scoreboard objectives add pve.levelup_crit trigger
scoreboard objectives add pve.levelup_health trigger
scoreboard objectives add pve.levelup_speed trigger
scoreboard objectives add pve.levelup_points dummy
scoreboard objectives add pve.respawn_cooldown dummy

scoreboard objectives add pve.loot_level dummy
scoreboard objectives add pve.fire_power_level dummy
scoreboard objectives add pve.crit_level dummy
scoreboard objectives add pve.health_level dummy
scoreboard objectives add pve.speed_level dummy

scoreboard objectives add pve.level level
scoreboard objectives add pve.prev_level dummy

scoreboard objectives add pve.entity.throw_grenade_timer dummy

scoreboard objectives add last_survival_time dummy
scoreboard objectives add time_survived minecraft.custom:minecraft.play_time
scoreboard objectives add pve.data dummy {"text":"Time Survived","color": "green","bold": true}
scoreboard objectives modify pve.data numberformat blank
scoreboard objectives setdisplay sidebar pve.data