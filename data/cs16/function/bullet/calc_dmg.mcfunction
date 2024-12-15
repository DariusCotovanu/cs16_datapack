scoreboard players operation input cs16.temp = range_modifier cs16.gun.data
scoreboard players operation input cs16.temp -= $100 const

scoreboard players operation x1 cs16.temp = input cs16.temp
scoreboard players operation x1 cs16.temp *= $1000 const


##Aproximating ln(input) - only works for values between [0,1]*100

scoreboard players operation $result cs16.temp = input cs16.temp

scoreboard players operation $temp1 cs16.temp = $result cs16.temp
scoreboard players operation $temp1 cs16.temp *= input cs16.temp
scoreboard players operation $temp1 cs16.temp /= $2 const
scoreboard players operation $result cs16.temp *= $100 const
scoreboard players operation $result cs16.temp -= $temp1 cs16.temp

scoreboard players operation $temp1 cs16.temp *= $2 const
scoreboard players operation $temp1 cs16.temp *= input cs16.temp

scoreboard players operation $temp1 cs16.temp /= $3 const
scoreboard players operation $result cs16.temp *= $100 const
scoreboard players operation $result cs16.temp += $temp1 cs16.temp

scoreboard players operation $temp1 cs16.temp *= $3 const
scoreboard players operation $temp1 cs16.temp *= input cs16.temp
scoreboard players operation $temp1 cs16.temp /= $100 const
scoreboard players operation $temp1 cs16.temp /= $4 const

scoreboard players operation $result cs16.temp -= $temp1 cs16.temp


scoreboard players operation $temp1 cs16.temp *= $4 const
scoreboard players operation $temp1 cs16.temp *= input cs16.temp
scoreboard players operation $temp1 cs16.temp /= $100 const
scoreboard players operation $temp1 cs16.temp /= $5 const
scoreboard players operation $result cs16.temp += $temp1 cs16.temp


scoreboard players operation $temp1 cs16.temp *= $5 const
scoreboard players operation $temp1 cs16.temp *= input cs16.temp
scoreboard players operation $temp1 cs16.temp /= $100 const
scoreboard players operation $temp1 cs16.temp /= $6 const
scoreboard players operation $result cs16.temp -= $temp1 cs16.temp

# ##Aproximating e^((distance*ln(input))/500) <- ln will always be negative so is e^-x formula

scoreboard players operation $temp1 cs16.temp = $gun_range cs16.global
scoreboard players operation $temp1 cs16.temp -= $range cs16.gun.data
scoreboard players operation $temp1 cs16.temp *= $result cs16.temp
scoreboard players operation $temp1 cs16.temp /= $500000 const
scoreboard players operation $temp2 cs16.temp = $temp1 cs16.temp


scoreboard players set $result cs16.temp 1000
scoreboard players operation $result cs16.temp += $temp1 cs16.temp
scoreboard players operation $temp2 cs16.temp *= $temp1 cs16.temp
scoreboard players operation $temp3 cs16.temp = $temp2 cs16.temp
scoreboard players operation $temp3 cs16.temp /= $2000 const
scoreboard players operation $result cs16.temp += $temp3 cs16.temp

scoreboard players operation $temp2 cs16.temp /= $1000 const
scoreboard players operation $temp2 cs16.temp *= $temp1 cs16.temp
scoreboard players operation $temp3 cs16.temp = $temp2 cs16.temp
scoreboard players operation $temp3 cs16.temp /= $6000 const
scoreboard players operation $result cs16.temp += $temp3 cs16.temp

scoreboard players operation $temp2 cs16.temp /= $1000 const
scoreboard players operation $temp2 cs16.temp *= $temp1 cs16.temp
scoreboard players operation $temp3 cs16.temp = $temp2 cs16.temp
scoreboard players operation $temp3 cs16.temp /= $24000 const
scoreboard players operation $result cs16.temp += $temp3 cs16.temp







execute if score bodyPart cs16.temp matches 0 run scoreboard players operation $damage cs16.temp = dmgLegs cs16.gun.data
execute if score bodyPart cs16.temp matches 1 run scoreboard players operation $damage cs16.temp = dmgChest cs16.gun.data
execute if score bodyPart cs16.temp matches 2 run scoreboard players operation $damage cs16.temp = dmgHead cs16.gun.data

scoreboard players operation $damage cs16.temp *= $result cs16.temp
#tellraw @a {"score":{"name": "$damage","objective": "cs16.temp"}}