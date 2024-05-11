scoreboard players operation x Random = n Random

scoreboard players set r Random 7
function glarth:util/rand_tbc

execute if entity @e[tag=tbcEnderPriest1] if score n Random matches 5 run scoreboard players set n Random 6

execute if score n Random matches 1 run data merge entity @s {ArmorItems:[{},{},{},{id:"cactus",Count:1}]}
execute if score n Random matches 2 run data merge entity @s {ArmorItems:[{},{},{},{id:"dirt",Count:1}]}
execute if score n Random matches 3 run data merge entity @s {ArmorItems:[{},{},{},{id:"mycelium",Count:1}]}
execute if score n Random matches 4 run data merge entity @s {ArmorItems:[{},{},{},{id:"netherrack",Count:1}]}
execute if score n Random matches 5 run data merge entity @s {ArmorItems:[{},{},{},{id:"pumpkin",Count:1}]}
execute if score n Random matches 6 run data merge entity @s {ArmorItems:[{},{},{},{id:"tnt",Count:1}]}
execute if score n Random matches 7 run data merge entity @s {ArmorItems:[{},{},{},{id:"clay",Count:1}]}

scoreboard players operation @s tbcBlockType = n Random

scoreboard players operation n Random = x Random