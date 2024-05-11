scoreboard players set r Random 20
function glarth:util/random
execute if score n Random matches 1 run playsound minecraft:entity.ghast.scream ambient @a ~ ~ ~ 0.1 0
execute if score n Random matches 2 run playsound minecraft:block.water.ambient ambient @a ~ ~ ~ 1 0
execute if score n Random matches 3 run playsound minecraft:ambient.cave ambient @a ~ ~ ~ 1 0
execute if score n Random matches 4 run playsound minecraft:entity.bat.loop ambient @s ~ ~ ~ 0.2
execute if score n Random matches 5 run playsound minecraft:entity.bat.loop ambient @s ~ ~ ~ 0.2 0
execute if score n Random matches 6 run playsound minecraft:entity.bat.takeoff ambient @s ~ ~ ~ 0.2 0
execute if score n Random matches 7 run playsound minecraft:block.lava.ambient ambient @a ~ ~ ~ 0.4 0
execute if score n Random matches 8 run playsound creepy1 ambient @a ~ ~ ~ 0.1 1
execute if score n Random matches 9 run playsound creepy2 ambient @a ~ ~ ~ 0.1 1
execute if score n Random matches 10 run playsound creepy6 ambient @a ~ ~ ~ 0.2 1


