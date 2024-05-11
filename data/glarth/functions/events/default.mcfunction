# marhjo stuck in sand
execute if score time Dis matches 0300.. if entity @e[type=area_effect_cloud,tag=events,tag=!evMarhjoStuck] run function glarth:events/event/moves/marhjo
execute if score time Dis matches ..0259 if entity @e[type=area_effect_cloud,tag=events,tag=evMarhjoStuck] run function glarth:events/event/moves/marhjo_undo
# Setup Sidebar
execute if score time Dis matches 0400.. if entity @e[type=area_effect_cloud,tag=events,tag=!evStart] run function glarth:events/event/start
# Butcher wakes up
execute if score time Dis matches 0500.. if entity @e[type=area_effect_cloud,tag=events,tag=!evButcherWakes] run function glarth:events/event/wakes/butcher
execute if score time Dis matches ..0459 if entity @e[type=area_effect_cloud,tag=events,tag=evButcherWakes] run function glarth:events/event/wakes/butcher_undo
# Brewery Worker wakes up
execute if score time Dis matches 0600.. if entity @e[type=area_effect_cloud,tag=events,tag=!evWorkerWakes] unless score quest Stats matches 9 run function glarth:events/event/wakes/worker
execute if score time Dis matches ..0559 if entity @e[type=area_effect_cloud,tag=events,tag=evWorkerWakes] unless score quest Stats matches 9 run function glarth:events/event/wakes/worker_undo
# Baker wakes up
execute if score time Dis matches 0700.. if entity @e[type=area_effect_cloud,tag=events,tag=!evBakerWakes] unless score quest Stats matches 1..3 run function glarth:events/event/wakes/baker
execute if score time Dis matches ..0659 if entity @e[type=area_effect_cloud,tag=events,tag=evBakerWakes] unless score quest Stats matches 1..3 run function glarth:events/event/wakes/baker_undo
# Ghosts hide
execute if score time Dis matches 0700..2059 if entity @e[type=area_effect_cloud,tag=events,tag=!evGhostsHide] unless score quest Stats matches 7 run function glarth:events/event/moves/ghosts
execute if score time Dis matches ..0659 if entity @e[type=area_effect_cloud,tag=events,tag=evGhostsHide] unless score quest Stats matches 7 run function glarth:events/event/moves/ghosts_undo
execute if score time Dis matches 2100.. if entity @e[type=area_effect_cloud,tag=events,tag=evGhostsHide] unless score quest Stats matches 7 run function glarth:events/event/moves/ghosts_undo
# Zombie burns
execute if score time Dis matches 0800.. if entity @e[type=area_effect_cloud,tag=events,tag=!evZombieBurns] unless score quest Stats matches 7 run function glarth:events/event/burns/zombie
execute if score time Dis matches ..0759 if entity @e[type=area_effect_cloud,tag=events,tag=evZombieBurns] unless score quest Stats matches 7 run function glarth:events/event/burns/zombie_undo
# Zombie dies
execute if score time Dis matches 0830.. if entity @e[type=area_effect_cloud,tag=events,tag=!evZombieDies] unless score quest Stats matches 7 run function glarth:events/event/dies/zombie
execute if score time Dis matches ..0829 if entity @e[type=area_effect_cloud,tag=events,tag=evZombieDies] unless score quest Stats matches 7 run function glarth:events/event/dies/zombie_undo
# Skeleton burns
execute if score time Dis matches 0800.. if entity @e[type=area_effect_cloud,tag=events,tag=!evSkeletonBurns] unless score quest Stats matches 7 run function glarth:events/event/burns/skeleton
execute if score time Dis matches ..0759 if entity @e[type=area_effect_cloud,tag=events,tag=evSkeletonBurns] unless score quest Stats matches 7 run function glarth:events/event/burns/skeleton_undo
# Lumberjack wakes up
execute if score time Dis matches 0800.. if entity @e[type=area_effect_cloud,tag=events,tag=!evLumberjackWakes] run function glarth:events/event/wakes/lumberjack
execute if score time Dis matches ..0759 if entity @e[type=area_effect_cloud,tag=events,tag=evLumberjackWakes] run function glarth:events/event/wakes/lumberjack_undo
# Baker wakes up
execute if score time Dis matches 0900.. if entity @e[type=area_effect_cloud,tag=events,tag=!evBakerWakes] if score quest Stats matches 1..2 run function glarth:events/event/wakes/baker
execute if score time Dis matches ..0859 if entity @e[type=area_effect_cloud,tag=events,tag=evBakerWakes] if score quest Stats matches 1..2 run function glarth:events/event/wakes/baker_undo
# Gate opens
execute if score time Dis matches 0900..2059 if entity @e[type=area_effect_cloud,tag=events,tag=!evGatesOpen] run function glarth:events/event/gates_open
execute if score time Dis matches ..0859 if entity @e[type=area_effect_cloud,tag=events,tag=evGatesOpen] run function glarth:events/event/gates_open_undo
execute if score time Dis matches 2100.. if entity @e[type=area_effect_cloud,tag=events,tag=evGatesOpen] run function glarth:events/event/gates_open_undo
# Skeleton dies
execute if score time Dis matches 1000.. if entity @e[type=area_effect_cloud,tag=events,tag=!evSkeletonDies] unless score quest Stats matches 6..7 run function glarth:events/event/dies/skeleton
execute if score time Dis matches ..0959 if entity @e[type=area_effect_cloud,tag=events,tag=evSkeletonDies] unless score quest Stats matches 6..7 run function glarth:events/event/dies/skeleton_undo
# Guard wakes up
execute if score time Dis matches 1000.. unless score quest Stats matches 7 if entity @e[type=area_effect_cloud,tag=events,tag=!evGuardWakes] run function glarth:events/event/wakes/guard
execute if score time Dis matches ..0959 unless score quest Stats matches 7 if entity @e[type=area_effect_cloud,tag=events,tag=evGuardWakes] run function glarth:events/event/wakes/guard_undo
# Soldier Appears
execute if score time Dis matches 1100..1459 unless score quest Stats matches 9 if entity @e[type=area_effect_cloud,tag=events,tag=!evSoldierAppears] run function glarth:events/event/moves/soldier
execute if score time Dis matches ..1059 unless score quest Stats matches 9 if entity @e[type=area_effect_cloud,tag=events,tag=evSoldierAppears] run function glarth:events/event/moves/soldier_undo
execute if score time Dis matches 1500.. unless score quest Stats matches 9 if entity @e[type=area_effect_cloud,tag=events,tag=evSoldierAppears] run function glarth:events/event/moves/soldier_undo
# Clock
execute if score time Dis matches 1200.. if entity @e[type=area_effect_cloud,tag=events,tag=!evClock] run function glarth:events/event/clock
execute if score time Dis matches ..1159 if entity @e[type=area_effect_cloud,tag=events,tag=evClock] run function glarth:events/event/clock_undo
# Meteor
execute if score time Dis matches 1300.. if entity @e[type=area_effect_cloud,tag=events,tag=!evMeteor] run function glarth:events/event/meteor
execute if score time Dis matches ..1259 if entity @e[type=area_effect_cloud,tag=events,tag=evMeteor] run function glarth:events/event/meteor_undo
# marhjo moves
execute if score time Dis matches 1500.. if entity @e[type=area_effect_cloud,tag=events,tag=!evMarhjoMoves] unless score quest Stats matches 4 run function glarth:events/event/moves/marhjo2
execute if score time Dis matches ..1459 if entity @e[type=area_effect_cloud,tag=events,tag=evMarhjoMoves] unless score quest Stats matches 4 run function glarth:events/event/moves/marhjo2_undo
# Fisher moves
execute if score time Dis matches 1900.. if entity @e[type=area_effect_cloud,tag=events,tag=!evFisherMoves] unless score quest Stats matches 4 unless score quest Stats matches 9 run function glarth:events/event/moves/fisher
execute if score time Dis matches ..1859 if entity @e[type=area_effect_cloud,tag=events,tag=evFisherMoves] unless score quest Stats matches 4 unless score quest Stats matches 9 run function glarth:events/event/moves/fisher_undo
# Apple Lover torch
execute if score time Dis matches 1930.. if entity @e[type=area_effect_cloud,tag=events,tag=!evAppleLoverTorch] unless score quest Stats matches 4 unless score quest Stats matches 6..7 run function glarth:events/event/torch/apple_lover
execute if score time Dis matches ..1929 if entity @e[type=area_effect_cloud,tag=events,tag=evAppleLoverTorch] unless score quest Stats matches 4 unless score quest Stats matches 6..7 run function glarth:events/event/torch/apple_lover_undo
# Ts escapes
execute if score time Dis matches 2000.. if entity @e[type=area_effect_cloud,tag=events,tag=!evTsMoves,tag=!evTsFreed] unless score quest Stats matches 4 run function glarth:events/event/moves/mctsts
execute if score time Dis matches ..1959 if entity @e[type=area_effect_cloud,tag=events,tag=evTsMoves,tag=!evTsFreed] unless score quest Stats matches 4 run function glarth:events/event/moves/mctsts_undo
# Dockmaster torch
execute if score time Dis matches 1930.. unless score quest Stats matches 1 if entity @e[type=area_effect_cloud,tag=events,tag=!evDockmasterTorch] unless score quest Stats matches 4 unless score quest Stats matches 7 run function glarth:events/event/torch/dockmaster
execute if score time Dis matches ..1929 unless score quest Stats matches 1 if entity @e[type=area_effect_cloud,tag=events,tag=evDockmasterTorch] unless score quest Stats matches 4 unless score quest Stats matches 7 run function glarth:events/event/torch/dockmaster_undo
# Druid Scene
execute if score time Dis matches 2355 if score day Dis matches 1.. unless entity @e[tag=area_main,tag=infmode] run function glarth:events/event/ritual
# Ending approaches
execute if score time Dis matches 2344.. if entity @e[type=area_effect_cloud,tag=events,tag=!evEnd] if score day Dis matches 1 unless entity @e[tag=area_main,tag=infmode] run function glarth:events/event/end
execute if score time Dis matches ..2343 if entity @e[type=area_effect_cloud,tag=events,tag=evEnd] if score day Dis matches 1 unless entity @e[tag=area_main,tag=infmode] run function glarth:events/event/end_undo
# End
execute if score time Dis matches 2400.. run function glarth:events/event/midnight


