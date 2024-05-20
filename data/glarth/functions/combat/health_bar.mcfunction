scoreboard players operation @s tbcBar = @s tbcHealth
scoreboard players operation @s tbcBar *= 100 Const
scoreboard players operation @s tbcBar /= @s tbcMaxHealth
scoreboard players operation @s tbcBar /= 2 Const
execute store result storage ntca:io in int 1 run scoreboard players get @s tbcHealth
execute if entity @s[tag=tbcEnemy] run function ntcadec:call
execute if entity @s[tag=tbcAlly] run function ntca:call
execute if entity @s[tag=tbcAlly] run data modify storage ntca:io out append value [".±"]
execute if score @s tbcBar matches 67..75 run data merge block 84 26 -123 {front_text:{messages:['[{"nbt":"out","storage":"ntca:io","interpret":true,"color":"dark_blue"}]']}}
execute if score @s tbcBar matches 59..66 run data merge block 84 26 -123 {front_text:{messages:['[{"nbt":"out","storage":"ntca:io","interpret":true,"color":"blue"}]']}}
execute if score @s tbcBar matches 43..58 run data merge block 84 26 -123 {front_text:{messages:['[{"nbt":"out","storage":"ntca:io","interpret":true,"color":"dark_green"}]']}}
execute if score @s tbcBar matches 35..42 run data merge block 84 26 -123 {front_text:{messages:['[{"nbt":"out","storage":"ntca:io","interpret":true,"color":"green"}]']}}
execute if score @s tbcBar matches 27..34 run data merge block 84 26 -123 {front_text:{messages:['[{"nbt":"out","storage":"ntca:io","interpret":true,"color":"yellow"}]']}}
execute if score @s tbcBar matches 19..26 run data merge block 84 26 -123 {front_text:{messages:['[{"nbt":"out","storage":"ntca:io","interpret":true,"color":"gold"}]']}}
execute if score @s tbcBar matches 11..18 run data merge block 84 26 -123 {front_text:{messages:['[{"nbt":"out","storage":"ntca:io","interpret":true,"color":"red"}]']}}
execute if score @s tbcBar matches ..10 run data merge block 84 26 -123 {front_text:{messages:['[{"nbt":"out","storage":"ntca:io","interpret":true,"color":"dark_red"}]']}}
execute unless score @s tbcBar matches ..75 run data merge block 84 26 -123 {front_text:{messages:['[{"nbt":"out","storage":"ntca:io","interpret":true,"color":"white"}]']}}
data merge entity @e[tag=tbcHealthBar2,limit=1,sort=nearest,type=armor_stand,distance=..1] {CustomNameVisible:1,CustomName:'""'}
data modify entity @e[tag=tbcHealthBar2,limit=1,sort=nearest,type=armor_stand,distance=..1] CustomName set from block 84 26 -123 front_text.messages[0]
execute if score @s tbcBar matches 83.. run data merge entity @e[tag=tbcHealthBar,limit=1,sort=nearest,type=armor_stand] {CustomNameVisible:1,CustomName:'{"text":"██████████+","color":"dark_gray"}'}
execute if score @s tbcBar matches 82 run data merge entity @e[tag=tbcHealthBar,limit=1,sort=nearest,type=armor_stand] {CustomNameVisible:1,CustomName:'{"text":"██████████","color":"dark_gray"}'}
execute if score @s tbcBar matches 81 run data merge entity @e[tag=tbcHealthBar,limit=1,sort=nearest,type=armor_stand] {CustomNameVisible:1,CustomName:'{"text":"█████████▉","color":"dark_gray"}'}
execute if score @s tbcBar matches 80 run data merge entity @e[tag=tbcHealthBar,limit=1,sort=nearest,type=armor_stand] {CustomNameVisible:1,CustomName:'{"text":"█████████▊","color":"dark_gray"}'}
execute if score @s tbcBar matches 79 run data merge entity @e[tag=tbcHealthBar,limit=1,sort=nearest,type=armor_stand] {CustomNameVisible:1,CustomName:'{"text":"█████████▋","color":"dark_gray"}'}
execute if score @s tbcBar matches 78 run data merge entity @e[tag=tbcHealthBar,limit=1,sort=nearest,type=armor_stand] {CustomNameVisible:1,CustomName:'{"text":"█████████▌","color":"dark_gray"}'}
execute if score @s tbcBar matches 77 run data merge entity @e[tag=tbcHealthBar,limit=1,sort=nearest,type=armor_stand] {CustomNameVisible:1,CustomName:'{"text":"█████████▍","color":"dark_gray"}'}
execute if score @s tbcBar matches 76 run data merge entity @e[tag=tbcHealthBar,limit=1,sort=nearest,type=armor_stand] {CustomNameVisible:1,CustomName:'{"text":"█████████▎","color":"dark_gray"}'}
execute if score @s tbcBar matches 75 run data merge entity @e[tag=tbcHealthBar,limit=1,sort=nearest,type=armor_stand] {CustomNameVisible:1,CustomName:'{"text":"█████████▏","color":"dark_gray"}'}
execute if score @s tbcBar matches 74 run data merge entity @e[tag=tbcHealthBar,limit=1,sort=nearest,type=armor_stand] {CustomNameVisible:1,CustomName:'{"text":"█████████","color":"dark_blue"}'}
execute if score @s tbcBar matches 73 run data merge entity @e[tag=tbcHealthBar,limit=1,sort=nearest,type=armor_stand] {CustomNameVisible:1,CustomName:'{"text":"████████▉","color":"dark_blue"}'}
execute if score @s tbcBar matches 72 run data merge entity @e[tag=tbcHealthBar,limit=1,sort=nearest,type=armor_stand] {CustomNameVisible:1,CustomName:'{"text":"████████▊","color":"dark_blue"}'}
execute if score @s tbcBar matches 71 run data merge entity @e[tag=tbcHealthBar,limit=1,sort=nearest,type=armor_stand] {CustomNameVisible:1,CustomName:'{"text":"████████▋","color":"dark_blue"}'}
execute if score @s tbcBar matches 70 run data merge entity @e[tag=tbcHealthBar,limit=1,sort=nearest,type=armor_stand] {CustomNameVisible:1,CustomName:'{"text":"████████▌","color":"dark_blue"}'}
execute if score @s tbcBar matches 69 run data merge entity @e[tag=tbcHealthBar,limit=1,sort=nearest,type=armor_stand] {CustomNameVisible:1,CustomName:'{"text":"████████▍","color":"dark_blue"}'}
execute if score @s tbcBar matches 68 run data merge entity @e[tag=tbcHealthBar,limit=1,sort=nearest,type=armor_stand] {CustomNameVisible:1,CustomName:'{"text":"████████▎","color":"dark_blue"}'}
execute if score @s tbcBar matches 67 run data merge entity @e[tag=tbcHealthBar,limit=1,sort=nearest,type=armor_stand] {CustomNameVisible:1,CustomName:'{"text":"████████▏","color":"dark_blue"}'}
execute if score @s tbcBar matches 66 run data merge entity @e[tag=tbcHealthBar,limit=1,sort=nearest,type=armor_stand] {CustomNameVisible:1,CustomName:'{"text":"████████","color":"blue"}'}
execute if score @s tbcBar matches 65 run data merge entity @e[tag=tbcHealthBar,limit=1,sort=nearest,type=armor_stand] {CustomNameVisible:1,CustomName:'{"text":"███████▉","color":"blue"}'}
execute if score @s tbcBar matches 64 run data merge entity @e[tag=tbcHealthBar,limit=1,sort=nearest,type=armor_stand] {CustomNameVisible:1,CustomName:'{"text":"███████▊","color":"blue"}'}
execute if score @s tbcBar matches 63 run data merge entity @e[tag=tbcHealthBar,limit=1,sort=nearest,type=armor_stand] {CustomNameVisible:1,CustomName:'{"text":"███████▋","color":"blue"}'}
execute if score @s tbcBar matches 62 run data merge entity @e[tag=tbcHealthBar,limit=1,sort=nearest,type=armor_stand] {CustomNameVisible:1,CustomName:'{"text":"███████▌","color":"blue"}'}
execute if score @s tbcBar matches 61 run data merge entity @e[tag=tbcHealthBar,limit=1,sort=nearest,type=armor_stand] {CustomNameVisible:1,CustomName:'{"text":"███████▍","color":"blue"}'}
execute if score @s tbcBar matches 60 run data merge entity @e[tag=tbcHealthBar,limit=1,sort=nearest,type=armor_stand] {CustomNameVisible:1,CustomName:'{"text":"███████▎","color":"blue"}'}
execute if score @s tbcBar matches 59 run data merge entity @e[tag=tbcHealthBar,limit=1,sort=nearest,type=armor_stand] {CustomNameVisible:1,CustomName:'{"text":"███████▏","color":"blue"}'}
execute if score @s tbcBar matches 58 run data merge entity @e[tag=tbcHealthBar,limit=1,sort=nearest,type=armor_stand] {CustomNameVisible:1,CustomName:'{"text":"███████","color":"dark_green"}'}
execute if score @s tbcBar matches 57 run data merge entity @e[tag=tbcHealthBar,limit=1,sort=nearest,type=armor_stand] {CustomNameVisible:1,CustomName:'{"text":"██████▉","color":"dark_green"}'}
execute if score @s tbcBar matches 56 run data merge entity @e[tag=tbcHealthBar,limit=1,sort=nearest,type=armor_stand] {CustomNameVisible:1,CustomName:'{"text":"██████▊","color":"dark_green"}'}
execute if score @s tbcBar matches 55 run data merge entity @e[tag=tbcHealthBar,limit=1,sort=nearest,type=armor_stand] {CustomNameVisible:1,CustomName:'{"text":"██████▋","color":"dark_green"}'}
execute if score @s tbcBar matches 54 run data merge entity @e[tag=tbcHealthBar,limit=1,sort=nearest,type=armor_stand] {CustomNameVisible:1,CustomName:'{"text":"██████▌","color":"dark_green"}'}
execute if score @s tbcBar matches 53 run data merge entity @e[tag=tbcHealthBar,limit=1,sort=nearest,type=armor_stand] {CustomNameVisible:1,CustomName:'{"text":"██████▍","color":"dark_green"}'}
execute if score @s tbcBar matches 52 run data merge entity @e[tag=tbcHealthBar,limit=1,sort=nearest,type=armor_stand] {CustomNameVisible:1,CustomName:'{"text":"██████▎","color":"dark_green"}'}
execute if score @s tbcBar matches 51 run data merge entity @e[tag=tbcHealthBar,limit=1,sort=nearest,type=armor_stand] {CustomNameVisible:1,CustomName:'{"text":"██████▏","color":"dark_green"}'}
execute if score @s tbcBar matches 50 run data merge entity @e[tag=tbcHealthBar,limit=1,sort=nearest,type=armor_stand] {CustomNameVisible:1,CustomName:'{"text":"██████","color":"dark_green"}'}
execute if score @s tbcBar matches 49 run data merge entity @e[tag=tbcHealthBar,limit=1,sort=nearest,type=armor_stand] {CustomNameVisible:1,CustomName:'{"text":"█████▉","color":"dark_green"}'}
execute if score @s tbcBar matches 48 run data merge entity @e[tag=tbcHealthBar,limit=1,sort=nearest,type=armor_stand] {CustomNameVisible:1,CustomName:'{"text":"█████▊","color":"dark_green"}'}
execute if score @s tbcBar matches 47 run data merge entity @e[tag=tbcHealthBar,limit=1,sort=nearest,type=armor_stand] {CustomNameVisible:1,CustomName:'{"text":"█████▋","color":"dark_green"}'}
execute if score @s tbcBar matches 46 run data merge entity @e[tag=tbcHealthBar,limit=1,sort=nearest,type=armor_stand] {CustomNameVisible:1,CustomName:'{"text":"█████▌","color":"dark_green"}'}
execute if score @s tbcBar matches 45 run data merge entity @e[tag=tbcHealthBar,limit=1,sort=nearest,type=armor_stand] {CustomNameVisible:1,CustomName:'{"text":"█████▍","color":"dark_green"}'}
execute if score @s tbcBar matches 44 run data merge entity @e[tag=tbcHealthBar,limit=1,sort=nearest,type=armor_stand] {CustomNameVisible:1,CustomName:'{"text":"█████▎","color":"dark_green"}'}
execute if score @s tbcBar matches 43 run data merge entity @e[tag=tbcHealthBar,limit=1,sort=nearest,type=armor_stand] {CustomNameVisible:1,CustomName:'{"text":"█████▏","color":"dark_green"}'}
execute if score @s tbcBar matches 42 run data merge entity @e[tag=tbcHealthBar,limit=1,sort=nearest,type=armor_stand] {CustomNameVisible:1,CustomName:'{"text":"█████","color":"green"}'}
execute if score @s tbcBar matches 41 run data merge entity @e[tag=tbcHealthBar,limit=1,sort=nearest,type=armor_stand] {CustomNameVisible:1,CustomName:'{"text":"████▉","color":"green"}'}
execute if score @s tbcBar matches 40 run data merge entity @e[tag=tbcHealthBar,limit=1,sort=nearest,type=armor_stand] {CustomNameVisible:1,CustomName:'{"text":"████▊","color":"green"}'}
execute if score @s tbcBar matches 39 run data merge entity @e[tag=tbcHealthBar,limit=1,sort=nearest,type=armor_stand] {CustomNameVisible:1,CustomName:'{"text":"████▋","color":"green"}'}
execute if score @s tbcBar matches 38 run data merge entity @e[tag=tbcHealthBar,limit=1,sort=nearest,type=armor_stand] {CustomNameVisible:1,CustomName:'{"text":"████▌","color":"green"}'}
execute if score @s tbcBar matches 37 run data merge entity @e[tag=tbcHealthBar,limit=1,sort=nearest,type=armor_stand] {CustomNameVisible:1,CustomName:'{"text":"████▍","color":"green"}'}
execute if score @s tbcBar matches 36 run data merge entity @e[tag=tbcHealthBar,limit=1,sort=nearest,type=armor_stand] {CustomNameVisible:1,CustomName:'{"text":"████▎","color":"green"}'}
execute if score @s tbcBar matches 35 run data merge entity @e[tag=tbcHealthBar,limit=1,sort=nearest,type=armor_stand] {CustomNameVisible:1,CustomName:'{"text":"████▏","color":"green"}'}
execute if score @s tbcBar matches 34 run data merge entity @e[tag=tbcHealthBar,limit=1,sort=nearest,type=armor_stand] {CustomNameVisible:1,CustomName:'{"text":"████","color":"yellow"}'}
execute if score @s tbcBar matches 33 run data merge entity @e[tag=tbcHealthBar,limit=1,sort=nearest,type=armor_stand] {CustomNameVisible:1,CustomName:'{"text":"███▉","color":"yellow"}'}
execute if score @s tbcBar matches 32 run data merge entity @e[tag=tbcHealthBar,limit=1,sort=nearest,type=armor_stand] {CustomNameVisible:1,CustomName:'{"text":"███▊","color":"yellow"}'}
execute if score @s tbcBar matches 31 run data merge entity @e[tag=tbcHealthBar,limit=1,sort=nearest,type=armor_stand] {CustomNameVisible:1,CustomName:'{"text":"███▋","color":"yellow"}'}
execute if score @s tbcBar matches 30 run data merge entity @e[tag=tbcHealthBar,limit=1,sort=nearest,type=armor_stand] {CustomNameVisible:1,CustomName:'{"text":"███▌","color":"yellow"}'}
execute if score @s tbcBar matches 29 run data merge entity @e[tag=tbcHealthBar,limit=1,sort=nearest,type=armor_stand] {CustomNameVisible:1,CustomName:'{"text":"███▍","color":"yellow"}'}
execute if score @s tbcBar matches 28 run data merge entity @e[tag=tbcHealthBar,limit=1,sort=nearest,type=armor_stand] {CustomNameVisible:1,CustomName:'{"text":"███▎","color":"yellow"}'}
execute if score @s tbcBar matches 27 run data merge entity @e[tag=tbcHealthBar,limit=1,sort=nearest,type=armor_stand] {CustomNameVisible:1,CustomName:'{"text":"███▏","color":"yellow"}'}
execute if score @s tbcBar matches 26 run data merge entity @e[tag=tbcHealthBar,limit=1,sort=nearest,type=armor_stand] {CustomNameVisible:1,CustomName:'{"text":"███","color":"gold"}'}
execute if score @s tbcBar matches 25 run data merge entity @e[tag=tbcHealthBar,limit=1,sort=nearest,type=armor_stand] {CustomNameVisible:1,CustomName:'{"text":"██▉","color":"gold"}'}
execute if score @s tbcBar matches 24 run data merge entity @e[tag=tbcHealthBar,limit=1,sort=nearest,type=armor_stand] {CustomNameVisible:1,CustomName:'{"text":"██▊","color":"gold"}'}
execute if score @s tbcBar matches 23 run data merge entity @e[tag=tbcHealthBar,limit=1,sort=nearest,type=armor_stand] {CustomNameVisible:1,CustomName:'{"text":"██▋","color":"gold"}'}
execute if score @s tbcBar matches 22 run data merge entity @e[tag=tbcHealthBar,limit=1,sort=nearest,type=armor_stand] {CustomNameVisible:1,CustomName:'{"text":"██▌","color":"gold"}'}
execute if score @s tbcBar matches 21 run data merge entity @e[tag=tbcHealthBar,limit=1,sort=nearest,type=armor_stand] {CustomNameVisible:1,CustomName:'{"text":"██▍","color":"gold"}'}
execute if score @s tbcBar matches 20 run data merge entity @e[tag=tbcHealthBar,limit=1,sort=nearest,type=armor_stand] {CustomNameVisible:1,CustomName:'{"text":"██▎","color":"gold"}'}
execute if score @s tbcBar matches 19 run data merge entity @e[tag=tbcHealthBar,limit=1,sort=nearest,type=armor_stand] {CustomNameVisible:1,CustomName:'{"text":"██▏","color":"gold"}'}
execute if score @s tbcBar matches 18 run data merge entity @e[tag=tbcHealthBar,limit=1,sort=nearest,type=armor_stand] {CustomNameVisible:1,CustomName:'{"text":"██","color":"red"}'}
execute if score @s tbcBar matches 17 run data merge entity @e[tag=tbcHealthBar,limit=1,sort=nearest,type=armor_stand] {CustomNameVisible:1,CustomName:'{"text":"█▉","color":"red"}'}
execute if score @s tbcBar matches 16 run data merge entity @e[tag=tbcHealthBar,limit=1,sort=nearest,type=armor_stand] {CustomNameVisible:1,CustomName:'{"text":"█▊","color":"red"}'}
execute if score @s tbcBar matches 15 run data merge entity @e[tag=tbcHealthBar,limit=1,sort=nearest,type=armor_stand] {CustomNameVisible:1,CustomName:'{"text":"█▋","color":"red"}'}
execute if score @s tbcBar matches 14 run data merge entity @e[tag=tbcHealthBar,limit=1,sort=nearest,type=armor_stand] {CustomNameVisible:1,CustomName:'{"text":"█▌","color":"red"}'}
execute if score @s tbcBar matches 13 run data merge entity @e[tag=tbcHealthBar,limit=1,sort=nearest,type=armor_stand] {CustomNameVisible:1,CustomName:'{"text":"█▍","color":"red"}'}
execute if score @s tbcBar matches 12 run data merge entity @e[tag=tbcHealthBar,limit=1,sort=nearest,type=armor_stand] {CustomNameVisible:1,CustomName:'{"text":"█▎","color":"red"}'}
execute if score @s tbcBar matches 11 run data merge entity @e[tag=tbcHealthBar,limit=1,sort=nearest,type=armor_stand] {CustomNameVisible:1,CustomName:'{"text":"█▏","color":"red"}'}
execute if score @s tbcBar matches 10 run data merge entity @e[tag=tbcHealthBar,limit=1,sort=nearest,type=armor_stand] {CustomNameVisible:1,CustomName:'{"text":"█","color":"dark_red"}'}
execute if score @s tbcBar matches 9 run data merge entity @e[tag=tbcHealthBar,limit=1,sort=nearest,type=armor_stand] {CustomNameVisible:1,CustomName:'{"text":"▉","color":"dark_red"}'}
execute if score @s tbcBar matches 8 run data merge entity @e[tag=tbcHealthBar,limit=1,sort=nearest,type=armor_stand] {CustomNameVisible:1,CustomName:'{"text":"▊","color":"dark_red"}'}
execute if score @s tbcBar matches 7 run data merge entity @e[tag=tbcHealthBar,limit=1,sort=nearest,type=armor_stand] {CustomNameVisible:1,CustomName:'{"text":"▋","color":"dark_red"}'}
execute if score @s tbcBar matches 6 run data merge entity @e[tag=tbcHealthBar,limit=1,sort=nearest,type=armor_stand] {CustomNameVisible:1,CustomName:'{"text":"▌","color":"dark_red"}'}
execute if score @s tbcBar matches 5 run data merge entity @e[tag=tbcHealthBar,limit=1,sort=nearest,type=armor_stand] {CustomNameVisible:1,CustomName:'{"text":"▍","color":"dark_red"}'}
execute if score @s tbcBar matches 3..4 run data merge entity @e[tag=tbcHealthBar,limit=1,sort=nearest,type=armor_stand] {CustomNameVisible:1,CustomName:'{"text":"▎","color":"dark_red"}'}
execute if score @s tbcBar matches 1..2 run data merge entity @e[tag=tbcHealthBar,limit=1,sort=nearest,type=armor_stand] {CustomNameVisible:1,CustomName:'{"text":"▏","color":"dark_red"}'}
execute if score @s tbcBar matches 0 run data merge entity @e[tag=tbcHealthBar,limit=1,sort=nearest,type=armor_stand] {CustomNameVisible:1,CustomName:'{"text":"⏐","color":"dark_red"}'}