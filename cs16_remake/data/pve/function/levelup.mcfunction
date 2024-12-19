title @s times 5 10 5
title @s title ""
title @s subtitle {"text":"You just leveled up"}
scoreboard players enable @s pve.levelup_loot
scoreboard players enable @s pve.levelup_health
scoreboard players enable @s pve.levelup_speed
scoreboard players add @s pve.levelup_points 1
tellraw @s [{"text":"[Click on an attribute to increase it's level]\n","color":"gold","bold":true},{"text":"Points left: ","color":"green"},{"score": {"name": "@s","objective": "pve.levelup_points"}}]
tellraw @s {"text":"[Health]","color":"red","clickEvent":{"action":"run_command","value":"/trigger pve.levelup_health"},"hoverEvent":{"action":"show_text","value":{"text":"Current Level: ","extra":[{"score":{"objective":"pve.health_level","name":"@s"}}]}}}
tellraw @s {"text":"[Speed]","color":"#c4acac","clickEvent":{"action":"run_command","value":"/trigger pve.levelup_speed"},"hoverEvent":{"action":"show_text","value":{"text":"Current Level: ","extra":[{"score":{"objective":"pve.speed_level","name":"@s"}}]}}}
tellraw @s {"text":"[Looting]","color":"aqua","clickEvent":{"action":"run_command","value":"/trigger pve.levelup_loot"},"hoverEvent":{"action":"show_text","value":[{"text":"Current Level: ","extra":[{"score":{"objective":"pve.loot_level","name":"@s"}}]},{"text":"\nIncreases the amount of ammo dropped and\n the higher your loot level zombies will drop higher tier weapons!"}]}}

effect give @s instant_health 1 1 true