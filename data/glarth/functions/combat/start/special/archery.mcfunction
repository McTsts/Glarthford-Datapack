# TBC
give @a[gamemode=adventure] arrow 5

execute if score combat Stats matches 0 if score difficulty Stats matches 1..3 run function glarth:combat/prepare
execute if score combat Stats matches 0 if score difficulty Stats matches 1..3 run schedule function glarth:combat/init_tbc/special/archery 20


