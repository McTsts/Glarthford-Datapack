execute as @e[type=fox] run data merge entity @s {Sleeping:1b,NoAI:1b}
tag @e[type=fox] add foxSleep
tag @e[tag=events,type=area_effect_cloud] remove evFoxesWake

execute as @e[type=fox,tag=asLoader,tag=asUnloaded] run function glarth:mechanic/as_load
tp @e[tag=fox1] 65 27 -249 -20 0
tp @e[tag=fox2] 81 27 -254 -140 0