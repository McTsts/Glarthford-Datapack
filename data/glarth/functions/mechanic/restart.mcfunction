scoreboard players remove tick Dis 28800
scoreboard players set time Dis 0000
scoreboard players add day Dis 1
# resurrect all dead characters
execute unless score quest Stats matches 9 as @e[tag=deadChar,tag=charUnloaded,type=armor_stand] run function glarth:mechanic/char/load
execute unless score quest Stats matches 9 as @e[tag=deadChar,type=armor_stand] run function glarth:mechanic/action/resurrect

#Butcher
execute unless score quest Stats matches 4 if entity @e[type=area_effect_cloud,tag=events,tag=evButcherWakes] run function glarth:events/event/wakes/butcher_undo
execute unless score quest Stats matches 3..4 run function glarth:events/event/wakes/baker_undo
#Zombie/Skeleton
execute if entity @e[type=area_effect_cloud,tag=events,tag=evSkeletonDies] unless score quest Stats matches 6..7 run function glarth:events/event/dies/skeleton_undo
execute if entity @e[type=area_effect_cloud,tag=events,tag=evZombieDies] unless score quest Stats matches 7 run function glarth:events/event/dies/zombie_undo
#Simple Sleep
execute unless score quest Stats matches 4 if entity @e[type=area_effect_cloud,tag=events,tag=evLumberjackWakes] run function glarth:events/event/wakes/lumberjack_undo
execute unless score quest Stats matches 4 unless score quest Stats matches 7 if entity @e[type=area_effect_cloud,tag=events,tag=evGuardWakes] run function glarth:events/event/wakes/guard_undo
execute unless score quest Stats matches 4 unless score quest Stats matches 9 if entity @e[type=area_effect_cloud,tag=events,tag=evFisherMoves] run function glarth:events/event/moves/fisher_undo

#Fisher Reset
execute unless score quest Stats matches 4 unless score quest Stats matches 9 run function glarth:events/event/moves/fisher_undo

stopsound @a * minecraft:time