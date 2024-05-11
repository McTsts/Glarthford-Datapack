tag @a remove func
tag @s add func
execute as @e[type=cat,tag=!tbcCompanionN] run function glarth:combat/check_tamed
execute as @e[type=polar_bear,tag=!tbcCompanionN] run function glarth:combat/check_tamed_all
execute as @e[type=pig,tag=!tbcCompanionN] run function glarth:combat/check_tamed_all
execute as @e[type=horse,tag=!tbcCompanionN] run function glarth:combat/check_tamed
execute as @e[type=strider,tag=!tbcCompanionN] run function glarth:combat/check_tamed_all
execute as @e[type=wolf,tag=!tbcCompanionN] run function glarth:combat/check_tamed
tag @s remove func 