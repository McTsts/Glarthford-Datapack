execute as @e[type=fox] run data merge entity @s {Sleeping:0b,NoAI:0b}
tag @e[type=fox] remove foxSleep
tag @e[tag=events,type=area_effect_cloud] add evFoxesWake