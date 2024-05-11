function glarth:mechanic/check/vanilla1

scoreboard players set version Check 0
execute if score game Stats matches 0 run function glarth:mechanic/check/version
execute if score game Stats matches 1 run scoreboard players set version Check 1