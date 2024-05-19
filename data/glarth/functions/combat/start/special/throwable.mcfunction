# TBC
function glarth:items/util/give {item:"misc.combat.2"}

execute if score combat Stats matches 0 if score difficulty Stats matches 1..3 run function glarth:combat/prepare
execute if score combat Stats matches 0 if score difficulty Stats matches 1..3 run tag @e[tag=tbcLoot,type=area_effect_cloud] add loot_illusioner
execute if score combat Stats matches 0 if score difficulty Stats matches 1..3 run schedule function glarth:combat/init_tbc/special/throwable 20


