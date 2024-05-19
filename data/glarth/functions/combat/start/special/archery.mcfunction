# TBC
function glarth:items/util/give {item:"misc.combat.1"}

execute if score combat Stats matches 0 if score difficulty Stats matches 1..3 run function glarth:combat/prepare
tag @e remove die4
execute if score combat Stats matches 0 if score difficulty Stats matches 1..3 run schedule function glarth:combat/init_tbc/special/archery 20


