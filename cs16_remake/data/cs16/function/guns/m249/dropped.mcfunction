summon item_display ~ ~ ~ {item:{id:"ender_eye",Count:1b,tag:{CustomModelData:5}},transformation:{left_rotation:[0.707f,0f,0f,0.707f],right_rotation:[0f,0f,0f,1f],translation:[0.0f,0.01f,0.0f],scale:[0.6f,0.6f,0.6f]},Tags:["dropped_gun","m249","primary"]}
execute store result entity @e[type=item_display,sort=nearest,distance=...1,limit=1] Rotation[0] float 1.0 run data get entity @s Rotation[0]
data modify entity @e[type=item_display,sort=nearest,distance=...1,limit=1] item.tag merge from entity @s Item.tag
kill @s