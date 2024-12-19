execute store result score $result temp run data get entity @s Health
execute if score $result temp matches 1.. run function pve:on_respawn