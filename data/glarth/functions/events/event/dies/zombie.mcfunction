execute as @e[tag=zombie] at @s run particle cloud ~ ~0.5 ~ 0.3 0.3 0.3 0.2 40
execute if entity @e[tag=zombie_ev_1] run tag @e[tag=events,type=area_effect_cloud] add evZombieDies1
execute if entity @e[tag=zombie_ev_2] run tag @e[tag=events,type=area_effect_cloud] add evZombieDies2
kill @e[tag=zombie]
tag @e[tag=events,type=area_effect_cloud] add evZombieDies