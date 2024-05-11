# 0 - Prepare Attack
execute if score @s tbcAttackStage matches 0 run summon endermite 0 0 0 {NoGravity:1,Invisible:1,NoAI:1,Silent:1,Tags:["tbcAttackDummy","tbcAD1"]}
execute if score @s tbcAttackStage matches 0 run summon endermite 0 0 0 {NoGravity:1,Invisible:1,NoAI:1,Silent:1,Tags:["tbcAttackDummy","tbcAD2A"]}
execute if score @s tbcAttackStage matches 0 run summon endermite 0 0 0 {NoGravity:1,Invisible:1,NoAI:1,Silent:1,Tags:["tbcAttackDummy","tbcAD3A"]}
execute if score @s tbcAttackStage matches 0 run summon endermite 0 0 0 {NoGravity:1,Invisible:1,NoAI:1,Silent:1,Tags:["tbcAttackDummy","tbcAD4A"]}
execute if score @s tbcAttackStage matches 0 run summon endermite 0 0 0 {NoGravity:1,Invisible:1,NoAI:1,Silent:1,Tags:["tbcAttackDummy","tbcAD5A"]}
execute if score @s tbcAttackStage matches 0 run summon endermite 0 0 0 {NoGravity:1,Invisible:1,NoAI:1,Silent:1,Tags:["tbcAttackDummy","tbcAD6A"]}
execute if score @s tbcAttackStage matches 0 run summon endermite 0 0 0 {NoGravity:1,Invisible:1,NoAI:1,Silent:1,Tags:["tbcAttackDummy","tbcAD2B"]}
execute if score @s tbcAttackStage matches 0 run summon endermite 0 0 0 {NoGravity:1,Invisible:1,NoAI:1,Silent:1,Tags:["tbcAttackDummy","tbcAD3B"]}
execute if score @s tbcAttackStage matches 0 run summon endermite 0 0 0 {NoGravity:1,Invisible:1,NoAI:1,Silent:1,Tags:["tbcAttackDummy","tbcAD4B"]}
execute if score @s tbcAttackStage matches 0 run summon endermite 0 0 0 {NoGravity:1,Invisible:1,NoAI:1,Silent:1,Tags:["tbcAttackDummy","tbcAD5B"]}
execute if score @s tbcAttackStage matches 0 run summon endermite 0 0 0 {NoGravity:1,Invisible:1,NoAI:1,Silent:1,Tags:["tbcAttackDummy","tbcAD6B"]}
execute if score @s tbcAttackStage matches 0 as @e[tag=tbcAD1] at @e[tag=tbcMarkerMiddle,type=area_effect_cloud] facing entity @e[tag=tbcTargetAS,limit=1] feet rotated ~ 0 run tp @s ^ ^ ^-4
execute if score @s tbcAttackStage matches 0 as @e[tag=tbcAD2A] at @e[tag=tbcMarkerMiddle,type=area_effect_cloud] facing entity @e[tag=tbcTargetAS,limit=1] feet rotated ~ 0 run tp @s ^-0.6 ^ ^-3.8
execute if score @s tbcAttackStage matches 0 as @e[tag=tbcAD2B] at @e[tag=tbcMarkerMiddle,type=area_effect_cloud] facing entity @e[tag=tbcTargetAS,limit=1] feet rotated ~ 0 run tp @s ^0.6 ^ ^-3.8
execute if score @s tbcAttackStage matches 0 as @e[tag=tbcAD3A] at @e[tag=tbcMarkerMiddle,type=area_effect_cloud] facing entity @e[tag=tbcTargetAS,limit=1] feet rotated ~ 0 run tp @s ^-1.2 ^ ^-3.6
execute if score @s tbcAttackStage matches 0 as @e[tag=tbcAD3B] at @e[tag=tbcMarkerMiddle,type=area_effect_cloud] facing entity @e[tag=tbcTargetAS,limit=1] feet rotated ~ 0 run tp @s ^1.2 ^ ^-3.6
execute if score @s tbcAttackStage matches 0 as @e[tag=tbcAD4A] at @e[tag=tbcMarkerMiddle,type=area_effect_cloud] facing entity @e[tag=tbcTargetAS,limit=1] feet rotated ~ 0 run tp @s ^-1.8 ^ ^-3.4
execute if score @s tbcAttackStage matches 0 as @e[tag=tbcAD4B] at @e[tag=tbcMarkerMiddle,type=area_effect_cloud] facing entity @e[tag=tbcTargetAS,limit=1] feet rotated ~ 0 run tp @s ^1.8 ^ ^-3.4
execute if score @s tbcAttackStage matches 0 as @e[tag=tbcAD5A] at @e[tag=tbcMarkerMiddle,type=area_effect_cloud] facing entity @e[tag=tbcTargetAS,limit=1] feet rotated ~ 0 run tp @s ^-2.4 ^ ^-3.2
execute if score @s tbcAttackStage matches 0 as @e[tag=tbcAD5B] at @e[tag=tbcMarkerMiddle,type=area_effect_cloud] facing entity @e[tag=tbcTargetAS,limit=1] feet rotated ~ 0 run tp @s ^2.4 ^ ^-3.2
execute if score @s tbcAttackStage matches 0 as @e[tag=tbcAD6A] at @e[tag=tbcMarkerMiddle,type=area_effect_cloud] facing entity @e[tag=tbcTargetAS,limit=1] feet rotated ~ 0 run tp @s ^-3.0 ^ ^-3.0
execute if score @s tbcAttackStage matches 0 as @e[tag=tbcAD6B] at @e[tag=tbcMarkerMiddle,type=area_effect_cloud] facing entity @e[tag=tbcTargetAS,limit=1] feet rotated ~ 0 run tp @s ^3.0 ^ ^-3.0
execute if score @s tbcAttackStage matches 0 run function glarth:combat/action_enemy/util/next_stage

# 1 - Ravager to Target
execute if score @s tbcAttackStage matches 1 as @e[tag=tbcAttackDummy] at @s facing entity @e[tag=tbcTargetAS,type=armor_stand] feet rotated ~ 0 run tp @s ^ ^ ^0.2 ~ ~
execute if score @s tbcAttackStage matches 1 as @e[tag=tbcAD1] at @s if entity @e[tag=tbcTargetAS,type=armor_stand,distance=..4.5] run function glarth:combat/action_enemy/util/next_stage

# 2 - Ravager Swipe
execute if score @s tbcAttackStage matches 2 run scoreboard players add @s tbcAttackTimer 1
execute if score @s tbcAttackStage matches 2 if score @s tbcAttackTimer matches 20 run playsound minecraft:entity.endermite.ambient hostile @a ~ ~ ~ 1 1.7
execute if score @s tbcAttackStage matches 2 if score @s tbcAttackTimer matches 20 as @e[tag=tbcTarget,limit=1] run function glarth:combat/action/blocking_start
execute if score @s tbcAttackStage matches 2 if score @s tbcAttackTimer matches 30 as @e[tag=tbcTarget,limit=1] run function glarth:combat/action/blocking_end
execute if score @s tbcAttackStage matches 2 if score @s tbcAttackTimer matches 0..30 as @e[tag=tbcAttackDummy] at @s facing entity @e[tag=tbcTurn] eyes rotated ~180 0 run tp @s ^ ^ ^0.15
execute if score @s tbcAttackStage matches 2 if score @s tbcAttackTimer matches 31 run scoreboard players operation damage tbcStats = @e[tag=tbcTurn] tbcStrength
execute if score @s tbcAttackStage matches 2 if score @s tbcAttackTimer matches 31 run scoreboard players operation damage tbcStats += @e[tag=tbcTurn] tbcStrength
execute if score @s tbcAttackStage matches 2 if score @s tbcAttackTimer matches 31 as @e[tag=tbcTarget,limit=1] run function glarth:combat/action_enemy/util/damage
execute if score @s tbcAttackStage matches 2 if score @s tbcAttackTimer matches 45 as @e[tag=tbcAttackDummy] at @s run particle dragon_breath ~ ~ ~ 0.5 0.5 0.5 0.1 100
execute if score @s tbcAttackStage matches 2 if score @s tbcAttackTimer matches 45 as @e[tag=tbcAttackDummy] at @s run playsound minecraft:entity.endermite.death hostile @a ~ ~ ~ 1 1.7
execute if score @s tbcAttackStage matches 2 if score @s tbcAttackTimer matches 45 as @e[tag=tbcAttackDummy] at @s run tp @e[tag=tbcAttackDummy,limit=1] 0 0 0
execute if score @s tbcAttackStage matches 2 if score @s tbcAttackTimer matches 45 as @e[tag=tbcAttackDummy] at @s run data merge entity @e[tag=tbcAttackDummy,limit=1] {Health:0.0f,DeathTime:19s}
execute if score @s tbcAttackStage matches 2 if score @s tbcAttackTimer matches 60 run tag @e[tag=tbcAttackDummy,limit=1,sort=nearest] add tbcAttackDummy
execute if score @s tbcAttackStage matches 2 if score @s tbcAttackTimer matches 60 as @e[tag=tbcTarget,limit=1] run function glarth:combat/action/blocking_init
execute if score @s tbcAttackStage matches 2 if score @s tbcAttackTimer matches 60 run kill @e[tag=tbcAttackDummy]
execute if score @s tbcAttackStage matches 2 if score @s tbcAttackTimer matches 60 run function glarth:combat/action_enemy/util/done

