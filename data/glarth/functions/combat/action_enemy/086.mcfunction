# Prepare Attack
execute if score @s tbcAttackStage matches 0 run item replace entity @s armor.head with diamond_hoe{Damage:119}
execute if score @s tbcAttackStage matches 0 run tag @e[tag=tbcMarkerMiddleB] add rand_sel
execute if score @s tbcAttackStage matches 0 run function glarth:util/rand_sel/1
execute if score @s tbcAttackStage matches 0 run tag @e[tag=rand_sel_result,limit=1] add tbcMarkerMiddleX
execute if score @s tbcAttackStage matches 0 run tag @e[tag=tbcMarkerMiddleB,tag=!tbcMarkerMiddleX,type=area_effect_cloud] add tbcMarkerMiddleY
execute if score @s tbcAttackStage matches 0 at @e[tag=tbcMarkerMiddleX,type=area_effect_cloud] positioned ~ ~-1.5 ~ run summon armor_stand ~ ~ ~ {NoGravity:1,Invisible:1,ArmorItems:[{},{},{},{id:"diamond_hoe",Count:1,tag:{Damage:279}}],CustomNameVisible:1,CustomName:"{\"translate\":\"tbc.enemy.zombie.baby\",\"color\":\"dark_green\"}",Tags:["tbcAttackDummy"]}
execute if score @s tbcAttackStage matches 0 at @e[tag=tbcMarkerMiddleY] positioned ~ ~-1.5 ~ run summon armor_stand ~ ~ ~ {NoGravity:1,Invisible:1,ArmorItems:[{},{},{},{id:"diamond_hoe",Count:1,tag:{Damage:279}}],CustomNameVisible:1,CustomName:"{\"translate\":\"tbc.enemy.zombie.baby\",\"color\":\"dark_green\"}",Tags:["tbcAttackDummy"]}
execute if score @s tbcAttackStage matches 0 as @e[tag=tbcAttackDummy] at @s run tp @s ~ ~ ~ facing entity @e[tag=tbcTargetAS,limit=1]
execute if score @s tbcAttackStage matches 0 as @e[tag=tbcTargetAS,type=armor_stand] at @s positioned ^-2 ^ ^1 run summon minecraft:area_effect_cloud ~ ~ ~ {Radius:0.0f,Duration:2147483647,Tags:["tbcTempMarker","tbc"]}
execute if score @s tbcAttackStage matches 0 run function glarth:combat/action_enemy/util/next_stage

# Summon Baby Zombies
execute if score @s tbcAttackStage matches 1 run scoreboard players add @s tbcAttackTimer 1
execute if score @s tbcAttackStage matches 1 as @e[tag=tbcAttackDummy] at @s run tp @s ~ ~0.05 ~ facing entity @e[tag=tbcTargetAS,limit=1]
execute if score @s tbcAttackStage matches 1 as @e[tag=tbcAttackDummy] at @s run particle block dirt ~ ~ ~ 0.3 0.1 0.3 0.1 10
execute if score @s tbcAttackStage matches 1 if score @s tbcAttackTimer matches 10 run playsound minecraft:entity.zombie.hurt hostile @a ~ ~ ~ 1 2
execute if score @s tbcAttackStage matches 1 if score @s tbcAttackTimer matches 20 run playsound minecraft:entity.zombie.ambient hostile @a ~ ~ ~ 1 2
execute if score @s tbcAttackStage matches 1 if score @s tbcAttackTimer matches 30 run tag @e[tag=tbcAttackDummy,limit=1,sort=nearest] add tbcAD_Sel
execute if score @s tbcAttackStage matches 1 if score @s tbcAttackTimer matches 30 run function glarth:combat/action_enemy/util/next_stage

# First Baby Zombie to Target
execute if score @s tbcAttackStage matches 2 as @e[tag=tbcAD_Sel] at @s facing entity @e[tag=tbcTargetAS,type=armor_stand] feet rotated ~ 0 run tp @s ^ ^ ^0.2 ~ ~
execute if score @s tbcAttackStage matches 2 as @e[tag=tbcAD_Sel] at @s if entity @e[tag=tbcTargetAS,type=armor_stand,distance=..2] run function glarth:combat/action_enemy/util/next_stage

# First Baby Zombie Attack
execute if score @s tbcAttackStage matches 3 run scoreboard players add @s tbcAttackTimer 1
execute if score @s tbcAttackStage matches 3 if score @s tbcAttackTimer matches 1 as @e[tag=tbcTarget,limit=1] run function glarth:combat/action/blocking_start
execute if score @s tbcAttackStage matches 3 if score @s tbcAttackTimer matches 10 as @e[tag=tbcTarget,limit=1] run function glarth:combat/action/blocking_end
execute if score @s tbcAttackStage matches 3 if score @s tbcAttackTimer matches 0..10 as @e[tag=tbcAD_Sel] at @s rotated ~ 0 run tp @s ^ ^ ^0.075
execute if score @s tbcAttackStage matches 3 if score @s tbcAttackTimer matches 11 as @e[tag=tbcAD_Sel] at @s if score @e[tag=tbcTarget,limit=1] blocked matches 0 run particle minecraft:block stone ^ ^1 ^1 0 0 0 0 100
execute if score @s tbcAttackStage matches 3 if score @s tbcAttackTimer matches 11 run scoreboard players operation damage tbcStats = @e[tag=tbcTurn] tbcStrength
execute if score @s tbcAttackStage matches 3 if score @s tbcAttackTimer matches 11 as @e[tag=tbcTarget,limit=1] run function glarth:combat/action_enemy/util/damage
execute if score @s tbcAttackStage matches 3 if score @s tbcAttackTimer matches 25 as @e[tag=tbcAD_Sel] at @s run particle smoke ~ ~ ~ 0.5 0.5 0.5 0.1 100
execute if score @s tbcAttackStage matches 3 if score @s tbcAttackTimer matches 25 as @e[tag=tbcAD_Sel] at @s run playsound minecraft:entity.zombie.death hostile @a ~ ~ ~ 1 1.7
execute if score @s tbcAttackStage matches 3 if score @s tbcAttackTimer matches 25 as @e[tag=tbcAD_Sel] at @s run kill @e[tag=tbcAD_Sel]
execute if score @s tbcAttackStage matches 3 if score @s tbcAttackTimer matches 40 run tag @e[tag=tbcAttackDummy,limit=1,sort=nearest] add tbcAD_Sel
execute if score @s tbcAttackStage matches 3 if score @s tbcAttackTimer matches 40 as @e[tag=tbcTarget,limit=1] run function glarth:combat/action/blocking_init
execute if score @s tbcAttackStage matches 3 if score @s tbcAttackTimer matches 40 run function glarth:combat/action_enemy/util/next_stage

# Second Baby Zombie to Target
execute if score @s tbcAttackStage matches 4 as @e[tag=tbcAD_Sel] at @s facing entity @e[tag=tbcTargetAS,type=armor_stand] feet rotated ~ 0 run tp @s ^ ^ ^0.2 ~ ~
execute if score @s tbcAttackStage matches 4 as @e[tag=tbcAD_Sel] at @s if entity @e[tag=tbcTargetAS,type=armor_stand,distance=..2] run function glarth:combat/action_enemy/util/next_stage

# Second Baby Zombie Attack + Main to Middle
execute if score @s tbcAttackStage matches 5 run scoreboard players add @s tbcAttackTimer 1
execute if score @s tbcAttackStage matches 5 if score @s tbcAttackTimer matches 1 as @e[tag=tbcTarget,limit=1] run function glarth:combat/action/blocking_start
execute if score @s tbcAttackStage matches 5 if score @s tbcAttackTimer matches 10 as @e[tag=tbcTarget,limit=1] run function glarth:combat/action/blocking_end
execute if score @s tbcAttackStage matches 5 if score @s tbcAttackTimer matches 0..10 as @e[tag=tbcAD_Sel] at @s rotated ~ 0 run tp @s ^ ^ ^0.075
execute if score @s tbcAttackStage matches 5 if score @s tbcAttackTimer matches 11 as @e[tag=tbcAD_Sel] at @s if score @e[tag=tbcTarget,limit=1] blocked matches 0 run particle minecraft:block stone ^ ^1 ^1 0 0 0 0 100
execute if score @s tbcAttackStage matches 5 if score @s tbcAttackTimer matches 11 run scoreboard players operation damage tbcStats = @e[tag=tbcTurn] tbcStrength
execute if score @s tbcAttackStage matches 5 if score @s tbcAttackTimer matches 11 as @e[tag=tbcTarget,limit=1] run function glarth:combat/action_enemy/util/damage
execute if score @s tbcAttackStage matches 5 if score @s tbcAttackTimer matches 25 as @e[tag=tbcAD_Sel] at @s run particle smoke ~ ~ ~ 0.5 0.5 0.5 0.1 100
execute if score @s tbcAttackStage matches 5 if score @s tbcAttackTimer matches 25 as @e[tag=tbcAD_Sel] at @s run playsound minecraft:entity.zombie.death hostile @a ~ ~ ~ 1 1.7
execute if score @s tbcAttackStage matches 5 if score @s tbcAttackTimer matches 25 as @e[tag=tbcAD_Sel] at @s run kill @e[tag=tbcAD_Sel]
execute if score @s tbcAttackStage matches 5 if score @s tbcAttackTimer matches 20.. facing entity @e[tag=tbcMarkerMiddle,type=area_effect_cloud] feet rotated ~ 0 run tp @s ^ ^ ^0.2 ~ ~
execute if score @s tbcAttackStage matches 5 if score @s tbcAttackTimer matches 40 as @e[tag=tbcTarget,limit=1] run function glarth:combat/action/blocking_init
execute if score @s tbcAttackStage matches 5 if score @s tbcAttackTimer matches 40 run function glarth:combat/action_enemy/util/next_stage

# Main to Temp Marker
execute if score @s tbcAttackStage matches 6 facing entity @e[tag=tbcTempMarker,type=area_effect_cloud] feet rotated ~ 0 run tp @s ^ ^ ^0.2 ~ ~
execute if score @s tbcAttackStage matches 6 if entity @e[tag=tbcTempMarker,distance=..2.5,type=area_effect_cloud] run item replace entity @s armor.head with diamond_hoe{CustomModelData:249}
execute if score @s tbcAttackStage matches 6 if entity @e[tag=tbcTempMarker,distance=..2.5,type=area_effect_cloud] run function glarth:combat/action_enemy/util/next_stage

# Main Attack
execute if score @s tbcAttackStage matches 7 run scoreboard players add @s tbcAttackTimer 1
execute if score @s tbcAttackStage matches 7 if score @s tbcAttackTimer matches 5 as @e[tag=tbcTarget,limit=1] run function glarth:combat/action/blocking_start
execute if score @s tbcAttackStage matches 7 if score @s tbcAttackTimer matches 13 as @e[tag=tbcTarget,limit=1] run function glarth:combat/action/blocking_end
execute if score @s tbcAttackStage matches 7 if score @s tbcAttackTimer matches 0..13 rotated ~ 0 run tp @s ^ ^ ^0.08
execute if score @s tbcAttackStage matches 7 if score @s tbcAttackTimer matches 14 if score @e[tag=tbcTarget,limit=1] blocked matches 0 run particle minecraft:block stone ^ ^1 ^1 0 0 0 0 100
execute if score @s tbcAttackStage matches 7 if score @s tbcAttackTimer matches 14 run scoreboard players operation damage tbcStats = @s tbcStrength
execute if score @s tbcAttackStage matches 7 if score @s tbcAttackTimer matches 14 run scoreboard players operation damage tbcStats *= 2 Const
execute if score @s tbcAttackStage matches 7 if score @s tbcAttackTimer matches 14 as @e[tag=tbcTarget,limit=1] run function glarth:combat/action_enemy/util/damage
execute if score @s tbcAttackStage matches 7 if score @s tbcAttackTimer matches 17 run item replace entity @s armor.head with diamond_hoe{Damage:119}
execute if score @s tbcAttackStage matches 7 if score @s tbcAttackTimer matches 17 run kill @e[tag=tbcTempMarker,type=area_effect_cloud]
execute if score @s tbcAttackStage matches 7 if score @s tbcAttackTimer matches 17 at @e[tag=tbcMarkerMiddleX,type=area_effect_cloud] positioned ~ ~-1.5 ~ run summon armor_stand ~ ~ ~ {NoGravity:1,Invisible:1,ArmorItems:[{},{},{},{id:"diamond_hoe",Count:1,tag:{Damage:279}}],CustomNameVisible:1,CustomName:"{\"translate\":\"tbc.enemy.zombie.baby\",\"color\":\"dark_green\"}",Tags:["tbcAttackDummy"]}
execute if score @s tbcAttackStage matches 7 if score @s tbcAttackTimer matches 17 at @e[tag=tbcMarkerMiddleY] positioned ~ ~-1.5 ~ run summon armor_stand ~ ~ ~ {NoGravity:1,Invisible:1,ArmorItems:[{},{},{},{id:"diamond_hoe",Count:1,tag:{Damage:279}}],CustomNameVisible:1,CustomName:"{\"translate\":\"tbc.enemy.zombie.baby\",\"color\":\"dark_green\"}",Tags:["tbcAttackDummy"]}
execute if score @s tbcAttackStage matches 7 if score @s tbcAttackTimer matches 17 as @e[tag=tbcTarget,limit=1] run function glarth:combat/action/blocking_init
execute if score @s tbcAttackStage matches 7 if score @s tbcAttackTimer matches 17 run function glarth:combat/action_enemy/util/next_stage

# Summon Baby Zombies + Main to Middle
execute if score @s tbcAttackStage matches 8 run scoreboard players add @s tbcAttackTimer 1
execute if score @s tbcAttackStage matches 8 facing entity @e[tag=tbcMarkerMiddle,type=area_effect_cloud] feet rotated ~ 0 run tp @s ^ ^ ^0.07 ~ ~
execute if score @s tbcAttackStage matches 8 as @e[tag=tbcAttackDummy] at @s run tp @s ~ ~0.05 ~ facing entity @e[tag=tbcTargetAS,limit=1]
execute if score @s tbcAttackStage matches 8 as @e[tag=tbcAttackDummy] at @s run particle block dirt ~ ~ ~ 0.3 0.1 0.3 0.1 10
execute if score @s tbcAttackStage matches 8 if score @s tbcAttackTimer matches 10 run playsound minecraft:entity.zombie.hurt hostile @a ~ ~ ~ 1 2
execute if score @s tbcAttackStage matches 8 if score @s tbcAttackTimer matches 20 run playsound minecraft:entity.zombie.ambient hostile @a ~ ~ ~ 1 2
execute if score @s tbcAttackStage matches 8 if score @s tbcAttackTimer matches 30 run tag @e[tag=tbcAttackDummy,limit=1,sort=nearest] add tbcAD_Sel
execute if score @s tbcAttackStage matches 8 if score @s tbcAttackTimer matches 30 run function glarth:combat/action_enemy/util/next_stage

# Main to Pos + Third to Target
execute if score @s tbcAttackStage matches 9 as @e[tag=tbcAD_Sel] at @s facing entity @e[tag=tbcTargetAS,type=armor_stand] feet rotated ~ 0 run tp @s ^ ^ ^0.15 ~ ~
execute if score @s tbcAttackStage matches 9 facing entity @e[tag=tbcSelMarker,type=area_effect_cloud] feet rotated ~ 0 run tp @s ^ ^ ^0.2 ~ ~
execute if score @s tbcAttackStage matches 9 if entity @e[tag=tbcSelMarker,distance=..0.2,type=area_effect_cloud] run item replace entity @s armor.head with diamond_hoe{CustomModelData:223}
execute if score @s tbcAttackStage matches 9 if entity @e[tag=tbcSelMarker,distance=..0.2,type=area_effect_cloud] run tag @e[tag=tbcMarkerMiddleX,type=area_effect_cloud] remove tbcMarkerMiddleX
execute if score @s tbcAttackStage matches 9 if entity @e[tag=tbcSelMarker,distance=..0.2,type=area_effect_cloud] run tag @e[tag=tbcMarkerMiddleY] remove tbcMarkerMiddleY
execute if score @s tbcAttackStage matches 9 if entity @e[tag=tbcSelMarker,distance=..0.2,type=area_effect_cloud] run function glarth:combat/set_loc
execute if score @s tbcAttackStage matches 9 if entity @e[tag=tbcSelMarker,distance=..0.2,type=area_effect_cloud] run function glarth:combat/action_enemy/util/next_stage

# Third Baby Zombie to Target
execute if score @s tbcAttackStage matches 10 as @e[tag=tbcAD_Sel] at @s facing entity @e[tag=tbcTargetAS,type=armor_stand] feet rotated ~ 0 run tp @s ^ ^ ^0.2 ~ ~
execute if score @s tbcAttackStage matches 10 as @e[tag=tbcAD_Sel] at @s if entity @e[tag=tbcTargetAS,type=armor_stand,distance=..2] run function glarth:combat/action_enemy/util/next_stage

# Third Baby Zombie Attack
execute if score @s tbcAttackStage matches 11 run scoreboard players add @s tbcAttackTimer 1
execute if score @s tbcAttackStage matches 11 if score @s tbcAttackTimer matches 1 as @e[tag=tbcTarget,limit=1] run function glarth:combat/action/blocking_start
execute if score @s tbcAttackStage matches 11 if score @s tbcAttackTimer matches 10 as @e[tag=tbcTarget,limit=1] run function glarth:combat/action/blocking_end
execute if score @s tbcAttackStage matches 11 if score @s tbcAttackTimer matches 0..8 as @e[tag=tbcAD_Sel] at @s rotated ~ 0 run tp @s ^ ^ ^0.1
execute if score @s tbcAttackStage matches 11 if score @s tbcAttackTimer matches 8 as @e[tag=tbcAD_Sel] at @s if score @e[tag=tbcTarget,limit=1] blocked matches 0 run particle minecraft:block stone ^ ^1 ^1 0 0 0 0 100
execute if score @s tbcAttackStage matches 11 if score @s tbcAttackTimer matches 8 run scoreboard players operation damage tbcStats = @e[tag=tbcTurn] tbcStrength
execute if score @s tbcAttackStage matches 11 if score @s tbcAttackTimer matches 8 as @e[tag=tbcTarget,limit=1] run function glarth:combat/action_enemy/util/damage
execute if score @s tbcAttackStage matches 11 if score @s tbcAttackTimer matches 11 as @e[tag=tbcAD_Sel] at @s run particle smoke ~ ~ ~ 0.5 0.5 0.5 0.1 100
execute if score @s tbcAttackStage matches 11 if score @s tbcAttackTimer matches 11 as @e[tag=tbcAD_Sel] at @s run playsound minecraft:entity.zombie.death hostile @a ~ ~ ~ 1 1.7
execute if score @s tbcAttackStage matches 11 if score @s tbcAttackTimer matches 11 as @e[tag=tbcAD_Sel] at @s run kill @e[tag=tbcAD_Sel]
execute if score @s tbcAttackStage matches 11 if score @s tbcAttackTimer matches 14 run tag @e[tag=tbcAttackDummy,limit=1,sort=nearest] add tbcAD_Sel
execute if score @s tbcAttackStage matches 11 if score @s tbcAttackTimer matches 14 as @e[tag=tbcTarget,limit=1] run function glarth:combat/action/blocking_init
execute if score @s tbcAttackStage matches 11 if score @s tbcAttackTimer matches 14 run function glarth:combat/action_enemy/util/next_stage

# Fourth Baby Zombie to Target
execute if score @s tbcAttackStage matches 12 as @e[tag=tbcAD_Sel] at @s facing entity @e[tag=tbcTargetAS,type=armor_stand] feet rotated ~ 0 run tp @s ^ ^ ^0.2 ~ ~
execute if score @s tbcAttackStage matches 12 as @e[tag=tbcAD_Sel] at @s if entity @e[tag=tbcTargetAS,type=armor_stand,distance=..2] run function glarth:combat/action_enemy/util/next_stage

# Fourth Baby Zombie Attack
execute if score @s tbcAttackStage matches 13 run scoreboard players add @s tbcAttackTimer 1
execute if score @s tbcAttackStage matches 13 if score @s tbcAttackTimer matches 1 as @e[tag=tbcTarget,limit=1] run function glarth:combat/action/blocking_start
execute if score @s tbcAttackStage matches 13 if score @s tbcAttackTimer matches 10 as @e[tag=tbcTarget,limit=1] run function glarth:combat/action/blocking_end
execute if score @s tbcAttackStage matches 13 if score @s tbcAttackTimer matches 0..8 as @e[tag=tbcAD_Sel] at @s rotated ~ 0 run tp @s ^ ^ ^0.1
execute if score @s tbcAttackStage matches 13 if score @s tbcAttackTimer matches 8 as @e[tag=tbcAD_Sel] at @s if score @e[tag=tbcTarget,limit=1] blocked matches 0 run particle minecraft:block stone ^ ^1 ^1 0 0 0 0 100
execute if score @s tbcAttackStage matches 13 if score @s tbcAttackTimer matches 8 run scoreboard players operation damage tbcStats = @e[tag=tbcTurn] tbcStrength
execute if score @s tbcAttackStage matches 13 if score @s tbcAttackTimer matches 8 as @e[tag=tbcTarget,limit=1] run function glarth:combat/action_enemy/util/damage
execute if score @s tbcAttackStage matches 13 if score @s tbcAttackTimer matches 11 as @e[tag=tbcAD_Sel] at @s run particle smoke ~ ~ ~ 0.5 0.5 0.5 0.1 100
execute if score @s tbcAttackStage matches 13 if score @s tbcAttackTimer matches 11 as @e[tag=tbcAD_Sel] at @s run playsound minecraft:entity.zombie.death hostile @a ~ ~ ~ 1 1.7
execute if score @s tbcAttackStage matches 13 if score @s tbcAttackTimer matches 11 as @e[tag=tbcAD_Sel] at @s run kill @e[tag=tbcAD_Sel]
execute if score @s tbcAttackStage matches 13 if score @s tbcAttackTimer matches 14 run function glarth:combat/action_enemy/util/done