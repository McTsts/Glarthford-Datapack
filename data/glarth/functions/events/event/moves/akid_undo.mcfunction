tp @e[tag=akid] 0 26 -173 -90 0
execute as @e[tag=akid_dog] run data merge entity @s {Health:0.0f,DeathTime:19s}
tag @e[tag=events,type=area_effect_cloud] remove evAkidMoves