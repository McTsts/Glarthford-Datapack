execute as @e[tag=skeleton] at @s run particle cloud ~ ~0.5 ~ 0.3 0.3 0.3 0.2 40
execute if entity @e[tag=skeleton] run tag @e[tag=events,type=area_effect_cloud] add evSkeletonDies
kill @e[tag=skeleton]