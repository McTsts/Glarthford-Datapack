# 0
execute if score @s tbcAttackStage matches 0 run tag @e[tag=tbcMarkerMiddleB,limit=1,sort=nearest] add tbcMarkerMiddleX
execute if score @s tbcAttackStage matches 0 run function glarth:combat/action_enemy/util/next_stage

# 1
execute if score @s tbcAttackStage matches 1 facing entity @e[tag=tbcMarkerMiddleX,type=area_effect_cloud] feet rotated ~ 0 run tp @s[tag=!tbcReady] ^ ^ ^0.2 ~ ~
execute if score @s tbcAttackStage matches 1 if entity @e[tag=tbcMarkerMiddleX,type=area_effect_cloud,distance=..0.3] run function glarth:combat/action_enemy/util/ready

execute if score @s tbcAttackStage matches 1 as @e[scores={tbcID=2}] at @s facing entity @e[tag=tbcMarkerMiddleB,tag=!tbcMarkerMiddleX,type=area_effect_cloud] feet rotated ~ 0 run tp @s[tag=!tbcReady] ^ ^ ^0.2 ~ ~
execute if score @s tbcAttackStage matches 1 as @e[scores={tbcID=2}] at @s if entity @e[tag=tbcMarkerMiddleB,tag=!tbcMarkerMiddleX,type=area_effect_cloud,distance=..0.3] run function glarth:combat/action_enemy/util/ready

# 2
execute if score @s tbcAttackStage matches 2 facing entity @e[tag=tbcTargetAS,type=armor_stand] feet rotated ~ 0 run tp @s[tag=!tbcReady] ^ ^ ^0.2 ~ ~
execute if score @s tbcAttackStage matches 2 if entity @e[tag=tbcTargetAS,type=armor_stand,distance=..2] run function glarth:combat/action_enemy/util/ready

execute if score @s tbcAttackStage matches 2 as @e[scores={tbcID=2}] at @s facing entity @e[tag=tbcTargetAS,type=armor_stand] feet rotated ~ 0 run tp @s[tag=!tbcReady] ^ ^ ^0.2 ~ ~
execute if score @s tbcAttackStage matches 2 as @e[scores={tbcID=2}] run function glarth:combat/action_enemy/util/ready

# 3
execute if score @s tbcAttackStage matches 3 run scoreboard players add @s tbcAttackTimer 1
execute if score @s tbcAttackStage matches 3 if score @s tbcAttackTimer matches 1 as @e[scores={tbcID=2}] run data merge entity @s {ArmorItems:[{},{},{},{id:"diamond_hoe",Count:1,tag:{CustomModelData:46}}]}
execute if score @s tbcAttackStage matches 3 if score @s tbcAttackTimer matches 2 as @e[scores={tbcID=2}] at @s run playsound minecraft:entity.creeper.hurt hostile @a ~ ~ ~ 1 1
execute if score @s tbcAttackStage matches 3 if score @s tbcAttackTimer matches 5 as @e[scores={tbcID=2}] at @s run playsound minecraft:entity.creeper.primed hostile @a ~ ~ ~ 1 1
execute if score @s tbcAttackStage matches 3 if score @s tbcAttackTimer matches 5 as @e[scores={tbcID=2}] run data merge entity @s[tag=tbcChargedCreeper] {ArmorItems:[{id:"stone",Count:1,tag:{CustomName:'{"translate":"tbc.short_name.enemy.creeper.charged","color":"aqua"}'}},{},{},{id:"diamond_hoe",Count:1,tag:{CustomModelData:47}}]}
execute if score @s tbcAttackStage matches 3 if score @s tbcAttackTimer matches 5 as @e[scores={tbcID=2}] run data merge entity @s[tag=tbcCreeper] {ArmorItems:[{id:"stone",Count:1,tag:{CustomName:'{"translate":"tbc.short_name.enemy.creeper.default","color":"green"}'}},{},{},{id:"diamond_hoe",Count:1,tag:{Damage:147}}]}
execute if score @s tbcAttackStage matches 3 if score @s tbcAttackTimer matches 7 as @e[scores={tbcID=2}] run data merge entity @s[tag=tbcChargedCreeper] {ArmorItems:[{id:"stone",Count:1,tag:{CustomName:'{"translate":"tbc.short_name.enemy.creeper.charged","color":"aqua"}'}},{},{},{id:"diamond_hoe",Count:1,tag:{CustomModelData:46}}]}
execute if score @s tbcAttackStage matches 3 if score @s tbcAttackTimer matches 7 as @e[scores={tbcID=2}] run data merge entity @s[tag=tbcCreeper] {ArmorItems:[{id:"stone",Count:1,tag:{CustomName:'{"translate":"tbc.short_name.enemy.creeper.default","color":"green"}'}},{},{},{id:"diamond_hoe",Count:1,tag:{CustomModelData:46}}]}
execute if score @s tbcAttackStage matches 3 if score @s tbcAttackTimer matches 9 as @e[scores={tbcID=2}] run data merge entity @s[tag=tbcChargedCreeper] {ArmorItems:[{id:"stone",Count:1,tag:{CustomName:'{"translate":"tbc.short_name.enemy.creeper.charged","color":"aqua"}'}},{},{},{id:"diamond_hoe",Count:1,tag:{CustomModelData:47}}]}
execute if score @s tbcAttackStage matches 3 if score @s tbcAttackTimer matches 9 as @e[scores={tbcID=2}] run data merge entity @s[tag=tbcCreeper] {ArmorItems:[{id:"stone",Count:1,tag:{CustomName:'{"translate":"tbc.short_name.enemy.creeper.default","color":"green"}'}},{},{},{id:"diamond_hoe",Count:1,tag:{Damage:147}}]}
execute if score @s tbcAttackStage matches 3 if score @s tbcAttackTimer matches 2 as @e[tag=tbcTargetAS,type=armor_stand] at @s run summon minecraft:armor_stand ~ ~ ~ {Invisible:1,Marker:1,NoGravity:1,CustomNameVisible:1,CustomName:'{"text":"! ! !","color":"red"}',Tags:["tbc","tbcExclaim"]}
execute if score @s tbcAttackStage matches 3 if score @s tbcAttackTimer matches 2..20 as @e[tag=tbcExclaim] at @s run tp @s ~ ~0.1 ~
execute if score @s tbcAttackStage matches 3 if score @s tbcAttackTimer matches 21 run kill @e[tag=tbcExclaim]
execute if score @s tbcAttackStage matches 3 if score @s tbcAttackTimer matches 2..10 as @e[tag=tbcTargetAS,type=armor_stand] at @s run tp @s ^ ^ ^-0.125
execute if score @s tbcAttackStage matches 3 if score @s tbcAttackTimer matches 14 as @e[tag=tbcTarget,limit=1] run function glarth:combat/action/blocking_start
execute if score @s tbcAttackStage matches 3 if score @s tbcAttackTimer matches 25 as @e[tag=tbcTarget,limit=1] run function glarth:combat/action/blocking_end
execute if score @s tbcAttackStage matches 3 if score @s tbcAttackTimer matches 0..25 rotated ~ 0 run tp @s[tag=!tbcReady] ^ ^ ^0.06
execute if score @s tbcAttackStage matches 3 if score @s tbcAttackTimer matches 26 if score @e[tag=tbcTarget,limit=1] blocked matches 0 run particle minecraft:block stone ^ ^1 ^1 0 0 0 0 100
execute if score @s tbcAttackStage matches 3 if score @s tbcAttackTimer matches 26 run scoreboard players operation damage tbcStats = @s tbcStrength
execute if score @s tbcAttackStage matches 3 if score @s tbcAttackTimer matches 26 as @e[tag=tbcTarget,limit=1] run function glarth:combat/action_enemy/util/damage
execute if score @s tbcAttackStage matches 3 if score @s tbcAttackTimer matches 32 run function glarth:combat/action_enemy/util/ready

execute if score @s tbcAttackStage matches 3 as @e[scores={tbcID=2}] run function glarth:combat/action_enemy/util/ready

# 4
execute if score @s tbcAttackStage matches 4 facing entity @e[tag=tbcMarkerMiddleX,type=area_effect_cloud] feet rotated ~ 0 run tp @s[tag=!tbcReady] ^ ^ ^0.2 ~ ~
execute if score @s tbcAttackStage matches 4 if entity @e[tag=tbcMarkerMiddleX,type=area_effect_cloud,distance=..0.3] run function glarth:combat/action_enemy/util/ready

execute if score @s tbcAttackStage matches 4 as @e[scores={tbcID=2}] at @s facing entity @e[tag=tbcMarkerMiddleB,tag=!tbcMarkerMiddleX,type=area_effect_cloud] feet rotated ~ 0 run tp @s[tag=!tbcReady] ^ ^ ^0.2 ~ ~
execute if score @s tbcAttackStage matches 4 as @e[scores={tbcID=2}] at @s if entity @e[tag=tbcMarkerMiddleB,tag=!tbcMarkerMiddleX,type=area_effect_cloud,distance=..0.3] run function glarth:combat/action_enemy/util/ready

# 5
execute if score @s tbcAttackStage matches 5 facing entity @e[tag=tbcSelMarker] feet rotated ~ 0 run tp @s[tag=!tbcReady] ^ ^ ^0.2 ~ ~
execute if score @s tbcAttackStage matches 5 if entity @e[tag=tbcSelMarker,distance=..0.2] run function glarth:combat/action_enemy/util/ready

execute if score @s tbcAttackStage matches 5 as @e[scores={tbcID=2}] at @s facing entity @e[scores={tbcIDM=2}] feet rotated ~ 0 run tp @s[tag=!tbcReady] ^ ^ ^0.2 ~ ~
execute if score @s tbcAttackStage matches 5 as @e[scores={tbcID=2}] at @s if entity @e[scores={tbcIDM=2},distance=..0.2] run function glarth:combat/action_enemy/util/done