execute as @e[tag=mayor,type=armor_stand] run function glarth:mechanic/action/resurrect
tag @e[tag=board,type=villager] remove dead
tag @e[tag=events,type=area_effect_cloud] remove evMayorDies