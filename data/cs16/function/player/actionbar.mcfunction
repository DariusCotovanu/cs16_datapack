scoreboard players remove @s[scores={cs16.show_dmg_timer=1..}] cs16.show_dmg_timer 1
#execute if entity @s[scores={cs16.show_dmg_timer=1..}] store result storage cs16:temp damage_dealt int 0.0002 run scoreboard players get @s cs16.player.damage_dealt 


execute if entity @s[scores={cs16.show_dmg_timer=1..}] unless score @s cs16.gun.uid matches -1..0 run return run title @s[scores={cs16.player.reloading=0}] actionbar [{"text":"[","color":"yellow"},{"score":{"name": "@s","objective": "cs16.player.bullets"}},"/",{"score":{"name": "@s","objective": "cs16.player.total_bullets"}},"] ",{"text":"💢: ","color":"red"},{"score":{"name": "@s","objective": "cs16.player.damage_dealt"},"color":"red","bold":true}]
execute unless score @s cs16.gun.uid matches -1..0 run title @s[scores={cs16.player.reloading=0}] actionbar [{"text":"[","color":"yellow"},{"score":{"name": "@s","objective": "cs16.player.bullets"}},"/",{"score":{"name": "@s","objective": "cs16.player.total_bullets"}},"]"]