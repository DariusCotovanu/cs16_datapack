scoreboard players remove $i temp 1
particle dust_color_transition{from_color:[0.188,0.004,0.004],scale:0.4,to_color:[1,1,1]}

execute if score $i temp matches 1.. positioned ^ ^ ^3 run function cs16:bullet/visual_raycast
