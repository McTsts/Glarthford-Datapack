execute if score @s tbcAttackStage matches 0 facing entity @e[tag=tbcMarkerMiddle,type=area_effect_cloud] feet rotated ~ 0 run tp @s ^ ^ ^0.2 ~ ~
execute if score @s tbcAttackStage matches 0 if entity @e[tag=tbcMarkerMiddle,type=area_effect_cloud,distance=..0.3] run function glarth:combat/action_enemy/util/next_stage

execute if score @s tbcAttackStage matches 1 run scoreboard players add @s tbcAttackTimer 1
execute if score @s tbcAttackStage matches 1 if score @s tbcAttackTimer matches 01 run playsound minecraft:entity.spider.ambient hostile @a ~ ~ ~ 1 1.9
execute if score @s tbcAttackStage matches 1 if score @s tbcAttackTimer matches 03 run playsound minecraft:entity.spider.ambient hostile @a ~ ~ ~ 1 1.9
execute if score @s tbcAttackStage matches 1 if score @s tbcAttackTimer matches 05 run playsound minecraft:entity.spider.ambient hostile @a ~ ~ ~ 1 1.9
execute if score @s tbcAttackStage matches 1 if score @s tbcAttackTimer matches 07 run playsound minecraft:entity.spider.ambient hostile @a ~ ~ ~ 1 1.9
execute if score @s tbcAttackStage matches 1 if score @s tbcAttackTimer matches 19 run playsound minecraft:entity.spider.ambient hostile @a ~ ~ ~ 1 1.6
execute if score @s tbcAttackStage matches 1 if score @s tbcAttackTimer matches 21 run playsound minecraft:entity.spider.ambient hostile @a ~ ~ ~ 1 1.6
execute if score @s tbcAttackStage matches 1 if score @s tbcAttackTimer matches 23 run playsound minecraft:entity.spider.ambient hostile @a ~ ~ ~ 1 1.6
execute if score @s tbcAttackStage matches 1 if score @s tbcAttackTimer matches 37 run playsound minecraft:entity.spider.ambient hostile @a ~ ~ ~ 1 1.3
execute if score @s tbcAttackStage matches 1 if score @s tbcAttackTimer matches 39 run playsound minecraft:entity.spider.ambient hostile @a ~ ~ ~ 1 1.3
execute if score @s tbcAttackStage matches 1 if score @s tbcAttackTimer matches 55 run playsound minecraft:entity.spider.ambient hostile @a ~ ~ ~ 1 1.0
execute if score @s tbcAttackStage matches 1 if score @s tbcAttackTimer matches 52..60 positioned ~ ~2.80 ~ run particle dust 1 1 1 1 ~ ~ ~ 0.0 0.0 0.0 0.01 1
execute if score @s tbcAttackStage matches 1 if score @s tbcAttackTimer matches 53..60 positioned ~ ~2.95 ~ run particle dust 1 1 1 1 ~ ~ ~ 0.0 0.0 0.0 0.01 1
execute if score @s tbcAttackStage matches 1 if score @s tbcAttackTimer matches 54..60 positioned ~ ~3.10 ~ run particle dust 1 1 1 1 ~ ~ ~ 0.0 0.0 0.0 0.01 1
execute if score @s tbcAttackStage matches 1 if score @s tbcAttackTimer matches 55..60 positioned ~ ~3.25 ~ run particle dust 1 1 1 1 ~ ~ ~ 0.0 0.0 0.0 0.01 1
execute if score @s tbcAttackStage matches 1 if score @s tbcAttackTimer matches 01..53 positioned ~ ~2.80 ~ run particle dust 0.5 0.5 0.5 1 ~ ~ ~ 0.0 0.0 0.0 0.01 1
execute if score @s tbcAttackStage matches 1 if score @s tbcAttackTimer matches 01..36 positioned ~ ~2.95 ~ run particle dust 0.5 0.5 0.5 1 ~ ~ ~ 0.0 0.0 0.0 0.01 1
execute if score @s tbcAttackStage matches 1 if score @s tbcAttackTimer matches 01..21 positioned ~ ~3.10 ~ run particle dust 0.5 0.5 0.5 1 ~ ~ ~ 0.0 0.0 0.0 0.01 1
execute if score @s tbcAttackStage matches 1 if score @s tbcAttackTimer matches 01..04 positioned ~ ~3.25 ~ run particle dust 0.5 0.5 0.5 1 ~ ~ ~ 0.0 0.0 0.0 0.01 1
execute if score @s tbcAttackStage matches 1 if score @s tbcAttackTimer matches 58 as @e[tag=tbcTarget,limit=1] run function glarth:combat/action/blocking_start
execute if score @s tbcAttackStage matches 1 if score @s tbcAttackTimer matches 64 as @e[tag=tbcTarget,limit=1] run function glarth:combat/action/blocking_end
execute if score @s tbcAttackStage matches 1 if score @s tbcAttackTimer matches 01..30 at @s run particle minecraft:item spider_eye ~ ~ ~ 0.6 0.6 0.6 0.1 2
execute if score @s tbcAttackStage matches 1 if score @s tbcAttackTimer matches 10..40 at @s run particle minecraft:item spider_eye ~ ~ ~ 0.6 0.6 0.6 0.1 2
execute if score @s tbcAttackStage matches 1 if score @s tbcAttackTimer matches 20..50 at @e[tag=tbcTargetAS,type=armor_stand] run particle minecraft:item spider_eye ~ ~ ~ 0.6 0.6 0.6 0.1 2
execute if score @s tbcAttackStage matches 1 if score @s tbcAttackTimer matches 30..60 at @e[tag=tbcTargetAS,type=armor_stand] run particle minecraft:item spider_eye ~ ~ ~ 0.6 0.6 0.6 0.1 2
execute if score @s tbcAttackStage matches 1 if score @s tbcAttackTimer matches 40..60 at @e[tag=tbcTargetAS,type=armor_stand] run particle minecraft:item spider_eye ~ ~ ~ 0.6 0.6 0.6 0.1 2
execute if score @s tbcAttackStage matches 1 if score @s tbcAttackTimer matches 70 if score @e[tag=tbcTarget,limit=1] blocked matches 0 run scoreboard players set @e[tag=tbcTarget,limit=1] tbcCantMoveType 1
execute if score @s tbcAttackStage matches 1 if score @s tbcAttackTimer matches 70 if score @e[tag=tbcTarget,limit=1] blocked matches 0 run scoreboard players set @e[tag=tbcTarget,limit=1] tbcCantMove 3
execute if score @s tbcAttackStage matches 1 if score @s tbcAttackTimer matches 70 if score @e[tag=tbcTarget,limit=1] blocked matches 0 as @e[tag=tbcTargetAS,type=armor_stand] at @s run replaceitem entity @e[tag=charQ5,sort=nearest,limit=1] armor.head diamond_hoe{CustomModelData:473}
execute if score @s tbcAttackStage matches 1 if score @s tbcAttackTimer matches 70 if score @e[tag=tbcTarget,limit=1] blocked matches 1 run tellraw @a ["",{"nbt":"ArmorItems[0].tag.CustomName","entity":"@e[tag=tbcTurn]","interpret":true},{"text":" >> ","color":"gray"},{"translate":"tbc.msg.blocked2","with":[{"nbt":"EnderItems[{Slot:0b}].tag.name","entity":"@a[tag=tbcTarget]","interpret":true}]}]
execute if score @s tbcAttackStage matches 1 if score @s tbcAttackTimer matches 70 if score @e[tag=tbcTarget,limit=1] blocked matches 1 at @e[tag=tbcTargetAS,type=armor_stand] run particle minecraft:firework ~ ~0.3 ~ 0.6 0.6 0.6 0.1 50
execute if score @s tbcAttackStage matches 1 if score @s tbcAttackTimer matches 70 run function glarth:combat/action_enemy/util/next_stage

execute if score @s tbcAttackStage matches 2 facing entity @e[tag=tbcSelMarker] feet rotated ~ 0 run tp @s ^ ^ ^0.2 ~ ~
execute if score @s tbcAttackStage matches 2 if entity @e[tag=tbcSelMarker,distance=..0.2] run function glarth:combat/action_enemy/util/done