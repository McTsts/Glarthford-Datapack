## Weather
# No Wind
execute if score time Dis matches 0..999 run scoreboard players set wind Stats 0
execute if score time Dis matches 2000..2499 run scoreboard players set wind Stats 0
# Default
execute if score time Dis matches 1000..1399 run scoreboard players set wind Stats 1
execute if score time Dis matches 1600..1999 run scoreboard players set wind Stats 1
# Wind
execute if score time Dis matches 1400..1599 run scoreboard players set wind Stats 2
# Storm
execute if score storm Stats matches 1.. run scoreboard players set wind Stats 3
execute if score storm Stats matches 1.. run scoreboard players remove storm Stats 1
# Rain / Thunder
execute if score time Dis matches ..1699 run weather clear
execute if score time Dis matches 1700..1744 run weather rain
execute if score time Dis matches 1745..1799 run weather thunder
execute if score time Dis matches 1800..1829 run weather rain
execute if score time Dis matches 1830.. unless score quest Stats matches 7 run weather clear
execute if score endStarted Stats matches 1 run weather rain 999999


## Wind Effects
# Scarecrow falls over
execute if score time Dis matches 1430.. if entity @e[type=area_effect_cloud,tag=events,tag=!evScarecrowFalls] run function glarth:events/event/moves/scarecrow
execute if score time Dis matches ..1429 if entity @e[type=area_effect_cloud,tag=events,tag=evScarecrowFalls] run function glarth:events/event/moves/scarecrow_undo
# Apples Fall
execute if score time Dis matches 1420 run function glarth:mechanic/animation/apples/s1
execute if score time Dis matches 1440 run function glarth:mechanic/animation/apples/s2
execute if score time Dis matches 1500 run function glarth:mechanic/animation/apples/s3
execute if score time Dis matches 1520 run function glarth:mechanic/animation/apples/s4
execute if score time Dis matches 1540 run function glarth:mechanic/animation/apples/s5


## Lightning Strikes
# Creeper -> Charged
execute if score time Dis matches 1750.. if entity @e[type=area_effect_cloud,tag=events,tag=!evCreeperStruck] run function glarth:events/event/struck/creeper
execute if score time Dis matches ..1749 if entity @e[type=area_effect_cloud,tag=events,tag=evCreeperStruck] run function glarth:events/event/struck/creeper_undo
# Pig -> Pigman
execute if score time Dis matches 1755.. if entity @e[type=area_effect_cloud,tag=events,tag=!evPigStruck] run function glarth:events/event/struck/pig
execute if score time Dis matches ..1754 if entity @e[type=area_effect_cloud,tag=events,tag=evPigStruck] run function glarth:events/event/struck/pig_undo