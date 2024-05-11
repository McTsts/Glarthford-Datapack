scoreboard players set r Random 40
function glarth:util/randomish
execute if score n Random matches 1 run playsound minecraft:entity.bat.takeoff neutral @a ~ ~ ~ 0.2 1.2
execute if score n Random matches 2..3 run particle minecraft:dust 1 1 1 0.5 ~ ~ ~ 0 0 0 0.1 1