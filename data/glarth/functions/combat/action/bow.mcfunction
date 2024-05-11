execute if score @s tbcAttackStage matches 0 run data merge entity @e[tag=tbcSelector,limit=1] {CustomName:"\"\""}
execute if score @s tbcAttackStage matches 0 as @e[tag=tbcSelPlayerAS] at @s facing entity @e[tag=tbcMarkerMiddle] feet rotated ~ 0 run tp @s ^ ^ ^0.35 ~ ~
execute if score @s tbcAttackStage matches 0 at @e[tag=tbcSelPlayerAS] if entity @e[tag=tbcMarkerMiddle,distance=..0.3] run function glarth:combat/action/util/next_stage

execute if score @s tbcAttackStage matches 1 run scoreboard players add @s tbcAttackTimer 1
execute if score @s tbcAttackStage matches 1 if score @s tbcAttackTimer matches 3 as @e[tag=tbcSelPlayerAS] at @s facing entity @e[scores={tbcSel=1}] feet rotated ~ 0 run tp @s ~ ~ ~ ~ ~
execute if score @s tbcAttackStage matches 1 if score @s tbcAttackTimer matches 5.. run scoreboard players set @s tbcMenuX 102
execute if score @s tbcAttackStage matches 1 if score @s tbcAttackTimer matches 5.. run tag @e[scores={tbcSel=1}] add tbcSel
execute if score @s tbcAttackStage matches 1 if score @s tbcAttackTimer matches 5.. run function glarth:combat/action/util/next_stage

execute if score @s tbcAttackStage matches 2 run scoreboard players add @s tbcAttackTimer 1
execute if score @s tbcAttackStage matches 2 as @e[tag=tbcSelPlayerAS] at @s facing entity @e[scores={tbcSel=1..}] feet rotated ~ 0 run tp @s ~ ~ ~ ~ ~
execute if score @s tbcAttackStage matches 2 if score @s tbcAttackTimer matches 1 run scoreboard players set clicked tbcStats -1
execute if score @s tbcAttackStage matches 2 if score @s tbcAttackTimer matches 1 run scoreboard players set arrowSlot tbcStats -2
execute if score @s tbcAttackStage matches 2 if score @s tbcAttackTimer matches 3 run scoreboard players set r Random 9
execute if score @s tbcAttackStage matches 2 if score @s tbcAttackTimer matches 3 run function glarth:util/rand_tbc
execute if score @s tbcAttackStage matches 2 if score @s tbcAttackTimer matches 3 run scoreboard players operation arrowSlot tbcStats = n Random
execute if score @s tbcAttackStage matches 2 if score @s tbcAttackTimer matches 3 run tag @s add tbcArrowPlace
execute if score @s tbcAttackStage matches 2 if score @s tbcAttackTimer matches 3 run scoreboard players set clicked tbcStats -1
execute if score @s tbcAttackStage matches 2 if score clicked tbcStats matches 0.. unless score clicked tbcStats = arrowSlot tbcStats run function glarth:combat/menu/util/invalid
execute if score @s tbcAttackStage matches 2 if score clicked tbcStats matches 0.. unless score clicked tbcStats = arrowSlot tbcStats run scoreboard players add @s tbcAttackTimer 10
execute if score @s tbcAttackStage matches 2 if score clicked tbcStats = arrowSlot tbcStats run scoreboard players remove @s tbcAttackTimer 5
execute if score @s tbcAttackStage matches 2 if score clicked tbcStats = arrowSlot tbcStats run function glarth:combat/action/bow_arrow
execute if score @s tbcAttackStage matches 2 if score clicked tbcStats = arrowSlot tbcStats run scoreboard players set r Random 9
execute if score @s tbcAttackStage matches 2 if score clicked tbcStats = arrowSlot tbcStats run function glarth:util/rand_tbc
execute if score @s tbcAttackStage matches 2 if score clicked tbcStats = arrowSlot tbcStats run scoreboard players operation arrowSlot tbcStats = n Random
execute if score @s tbcAttackStage matches 2 if entity @s[tag=tbcArrowPlace] run clear @s
execute if score @s tbcAttackStage matches 2 if entity @s[tag=tbcArrowPlace] run function glarth:combat/menu/util/fill
execute if score @s tbcAttackStage matches 2 if entity @s[tag=tbcArrowPlace] if score arrowSlot tbcStats matches 1 run replaceitem entity @s hotbar.0 arrow
execute if score @s tbcAttackStage matches 2 if entity @s[tag=tbcArrowPlace] if score arrowSlot tbcStats matches 2 run replaceitem entity @s hotbar.1 arrow
execute if score @s tbcAttackStage matches 2 if entity @s[tag=tbcArrowPlace] if score arrowSlot tbcStats matches 3 run replaceitem entity @s hotbar.2 arrow
execute if score @s tbcAttackStage matches 2 if entity @s[tag=tbcArrowPlace] if score arrowSlot tbcStats matches 4 run replaceitem entity @s hotbar.3 arrow
execute if score @s tbcAttackStage matches 2 if entity @s[tag=tbcArrowPlace] if score arrowSlot tbcStats matches 5 run replaceitem entity @s hotbar.4 arrow
execute if score @s tbcAttackStage matches 2 if entity @s[tag=tbcArrowPlace] if score arrowSlot tbcStats matches 6 run replaceitem entity @s hotbar.5 arrow
execute if score @s tbcAttackStage matches 2 if entity @s[tag=tbcArrowPlace] if score arrowSlot tbcStats matches 7 run replaceitem entity @s hotbar.6 arrow
execute if score @s tbcAttackStage matches 2 if entity @s[tag=tbcArrowPlace] if score arrowSlot tbcStats matches 8 run replaceitem entity @s hotbar.7 arrow
execute if score @s tbcAttackStage matches 2 if entity @s[tag=tbcArrowPlace] if score arrowSlot tbcStats matches 9 run replaceitem entity @s hotbar.8 arrow
execute if score @s tbcAttackStage matches 2 if entity @s[tag=tbcArrowPlace] run tag @s remove tbcArrowPlace
execute if score @s tbcAttackStage matches 2 if score @s tbcAttackTimer matches 75.. run scoreboard players set @s tbcMenuX -1
execute if score @s tbcAttackStage matches 2 if score @s tbcAttackTimer matches 75.. run function glarth:combat/action/util/next_stage
execute if score @s tbcAttackStage matches 2 if score @s tbcAttackTimer matches ..74 at @e[tag=tbcSelPlayerAS] unless entity @e[tag=tbcEnemy,distance=..50,tag=!tbcUnselectable] run scoreboard players set @s tbcMenuX -1
execute if score @s tbcAttackStage matches 2 if score @s tbcAttackTimer matches ..74 at @e[tag=tbcSelPlayerAS] unless entity @e[tag=tbcEnemy,distance=..50,tag=!tbcUnselectable] run function glarth:combat/action/util/next_stage
execute if score @s tbcAttackStage matches 2 if score @s tbcAttackTimer matches ..74 if score @s tbcArrow matches ..0 run scoreboard players set @s tbcMenuX -1
execute if score @s tbcAttackStage matches 2 if score @s tbcAttackTimer matches ..74 if score @s tbcArrow matches ..0 run function glarth:combat/action/util/next_stage
execute if score @s tbcAttackStage matches 2..3 as @e[tag=tbcArrowP] at @s run function glarth:combat/action/helper/arrow

execute if score @s tbcAttackStage matches 3 run scoreboard players add @s tbcAttackTimer 1
execute if score @s tbcAttackStage matches 3 if score @s tbcAttackTimer matches 60.. run scoreboard players set @e[tag=tbcEnemy] tbcSel 0
execute if score @s tbcAttackStage matches 3 if score @s tbcAttackTimer matches 60.. run scoreboard players set @e[tag=tbcSel] tbcSel 1
execute if score @s tbcAttackStage matches 3 if score @s tbcAttackTimer matches 60.. run tag @e[tag=tbcSel] remove tbcSel
execute if score @s tbcAttackStage matches 3 if score @s tbcAttackTimer matches 60.. unless entity @e[scores={tbcSel=1..}] run tag @e[tag=tbcEnemy,tag=!tbcUnselectable] add rand_sel
execute if score @s tbcAttackStage matches 3 if score @s tbcAttackTimer matches 60.. unless entity @e[scores={tbcSel=1..}] run function glarth:util/rand_sel/1
execute if score @s tbcAttackStage matches 3 if score @s tbcAttackTimer matches 60.. unless entity @e[scores={tbcSel=1..}] run scoreboard players set @e[tag=rand_sel_result,limit=1] tbcSel 1
execute if score @s tbcAttackStage matches 3 if score @s tbcAttackTimer matches 60.. run function glarth:combat/selection
execute if score @s tbcAttackStage matches 3 if score @s tbcAttackTimer matches 60.. run function glarth:combat/action/util/next_stage

execute if score @s tbcAttackStage matches 4 as @e[tag=tbcSelPlayerAS] at @s facing entity @e[tag=tbcSelMarker] feet rotated ~ 0 run tp @s ^ ^ ^0.2 ~ ~
execute if score @s tbcAttackStage matches 4 at @e[tag=tbcSelPlayerAS] if entity @e[tag=tbcSelMarker,distance=..0.1] run kill @e[tag=tbcArrowP]
execute if score @s tbcAttackStage matches 4 at @e[tag=tbcSelPlayerAS] if entity @e[tag=tbcSelMarker,distance=..0.1] run function glarth:combat/action/util/done