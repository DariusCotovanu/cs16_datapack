scoreboard players operation input temp = $range_modifier cs16.gun.data
scoreboard players operation input temp -= $100 const

scoreboard players operation x1 temp = input temp
scoreboard players operation x1 temp *= $1000 const


##Aproximating ln(input) - only works for values between [0,1]*100

scoreboard players operation $result temp = input temp

scoreboard players operation $temp1 temp = $result temp
scoreboard players operation $temp1 temp *= input temp
scoreboard players operation $temp1 temp /= $2 const
scoreboard players operation $result temp *= $100 const
scoreboard players operation $result temp -= $temp1 temp

scoreboard players operation $temp1 temp *= $2 const
scoreboard players operation $temp1 temp *= input temp

scoreboard players operation $temp1 temp /= $3 const
scoreboard players operation $result temp *= $100 const
scoreboard players operation $result temp += $temp1 temp

scoreboard players operation $temp1 temp *= $3 const
scoreboard players operation $temp1 temp *= input temp
scoreboard players operation $temp1 temp /= $100 const
scoreboard players operation $temp1 temp /= $4 const

scoreboard players operation $result temp -= $temp1 temp


scoreboard players operation $temp1 temp *= $4 const
scoreboard players operation $temp1 temp *= input temp
scoreboard players operation $temp1 temp /= $100 const
scoreboard players operation $temp1 temp /= $5 const
scoreboard players operation $result temp += $temp1 temp


scoreboard players operation $temp1 temp *= $5 const
scoreboard players operation $temp1 temp *= input temp
scoreboard players operation $temp1 temp /= $100 const
scoreboard players operation $temp1 temp /= $6 const
scoreboard players operation $result temp -= $temp1 temp

# ##Aproximating e^((distance*ln(input))/500) <- ln will always be negative so is e^-x formula

scoreboard players operation $temp1 temp = $gunRange cs16.global
scoreboard players operation $temp1 temp -= $range cs16.gun.data
scoreboard players operation $temp1 temp *= $result temp
scoreboard players operation $temp1 temp /= $500000 const
scoreboard players operation $temp2 temp = $temp1 temp


scoreboard players set $result temp 1000
scoreboard players operation $result temp += $temp1 temp
scoreboard players operation $temp2 temp *= $temp1 temp
scoreboard players operation $temp3 temp = $temp2 temp
scoreboard players operation $temp3 temp /= $2000 const
scoreboard players operation $result temp += $temp3 temp

scoreboard players operation $temp2 temp /= $1000 const
scoreboard players operation $temp2 temp *= $temp1 temp
scoreboard players operation $temp3 temp = $temp2 temp
scoreboard players operation $temp3 temp /= $6000 const
scoreboard players operation $result temp += $temp3 temp

scoreboard players operation $temp2 temp /= $1000 const
scoreboard players operation $temp2 temp *= $temp1 temp
scoreboard players operation $temp3 temp = $temp2 temp
scoreboard players operation $temp3 temp /= $24000 const
scoreboard players operation $result temp += $temp3 temp







execute if score bodyPart temp matches 0 run scoreboard players operation $damage temp = $dmgLegs cs16.gun.data
execute if score bodyPart temp matches 1 run scoreboard players operation $damage temp = $dmgChest cs16.gun.data
execute if score bodyPart temp matches 2 run scoreboard players operation $damage temp = $dmgHead cs16.gun.data

scoreboard players operation $damage temp *= $result temp
#tellraw @a {"score":{"name": "$damage","objective": "temp"}}