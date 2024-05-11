execute if score @s tbcAttackStage matches 0 run scoreboard players add @s tbcAttackTimer 1
execute if score @s tbcAttackStage matches 0 if score @s tbcAttackTimer matches 20 run function glarth:combat/action_enemy/util/next_stage

execute if score @s tbcAttackStage matches 1 run scoreboard players add @s tbcAttackTimer 1
execute if score @s tbcAttackStage matches 1 if score @s tbcAttackTimer matches 5 facing entity @e[tag=tbcTargetAS,type=armor_stand] feet rotated ~ 0 run tp @s ~ ~ ~ ~ ~
execute if score @s tbcAttackStage matches 1 if score @s tbcAttackTimer matches 20 run function glarth:combat/action_enemy/util/next_stage

execute if score @s tbcAttackStage matches 2 as @e[tag=tbcTarget,limit=1] run function glarth:combat/action/blocking_init
execute if score @s tbcAttackStage matches 2 run summon minecraft:armor_stand ^ ^ ^1 {Small:1,Marker:1,NoGravity:1,Invisible:1,Tags:["tbc","tbcFang","tbcFangN"]}
execute if score @s tbcAttackStage matches 2 run tp @e[tag=tbcFangN,type=armor_stand] ^ ^ ^ facing entity @e[tag=tbcTargetAS,limit=1,type=armor_stand,sort=nearest]
execute if score @s tbcAttackStage matches 2 run tag @e[tag=tbcFangN,type=armor_stand] remove tbcFangN
execute if score @s tbcAttackStage matches 2 run function glarth:combat/action_enemy/util/next_stage

execute if score @s tbcAttackStage matches 4 as @e[tag=tbcTarget,limit=1] run function glarth:combat/action/blocking_init
execute if score @s tbcAttackStage matches 4 run summon minecraft:armor_stand ^ ^ ^1 {Small:1,Marker:1,NoGravity:1,Invisible:1,Tags:["tbc","tbcFang","tbcFangN"]}
execute if score @s tbcAttackStage matches 4 run tp @e[tag=tbcFangN,type=armor_stand] ^ ^ ^ facing entity @e[tag=tbcTargetAS,limit=1,type=armor_stand,sort=nearest]
execute if score @s tbcAttackStage matches 4 run tag @e[tag=tbcFangN,type=armor_stand] remove tbcFangN
execute if score @s tbcAttackStage matches 4 run function glarth:combat/action_enemy/util/next_stage

execute if score @s tbcAttackStage matches 6 as @e[tag=tbcTarget,limit=1] run function glarth:combat/action/blocking_init
execute if score @s tbcAttackStage matches 6 run summon minecraft:armor_stand ^ ^ ^1 {Small:1,Marker:1,NoGravity:1,Invisible:1,Tags:["tbc","tbcFang","tbcFangN"]}
execute if score @s tbcAttackStage matches 6 run tp @e[tag=tbcFangN,type=armor_stand] ^ ^ ^ facing entity @e[tag=tbcTargetAS,limit=1,type=armor_stand,sort=nearest]
execute if score @s tbcAttackStage matches 6 run tag @e[tag=tbcFangN,type=armor_stand] remove tbcFangN
execute if score @s tbcAttackStage matches 6 run function glarth:combat/action_enemy/util/next_stage

execute if score @s tbcAttackStage matches 8 as @e[tag=tbcTarget,limit=1] run function glarth:combat/action/blocking_init
execute if score @s tbcAttackStage matches 8 run summon minecraft:armor_stand ^ ^ ^1 {Small:1,Marker:1,NoGravity:1,Invisible:1,Tags:["tbc","tbcFang","tbcFangN"]}
execute if score @s tbcAttackStage matches 8 run tp @e[tag=tbcFangN,type=armor_stand] ^ ^ ^ facing entity @e[tag=tbcTargetAS,limit=1,type=armor_stand,sort=nearest]
execute if score @s tbcAttackStage matches 8 run tag @e[tag=tbcFangN,type=armor_stand] remove tbcFangN
execute if score @s tbcAttackStage matches 8 run function glarth:combat/action_enemy/util/next_stage

execute if score @s tbcAttackStage matches 10 run scoreboard players add @s tbcAttackTimer 1
execute if score @s tbcAttackStage matches 10 if score @s tbcAttackTimer matches 20 run function glarth:combat/action_enemy/util/next_stage
execute if score @s tbcAttackStage matches 2..10 run function glarth:combat/action_enemy/helper/fangs2

execute if score @s tbcAttackStage matches 11 run scoreboard players add @s tbcAttackTimer 1
execute if score @s tbcAttackStage matches 11 if score @s tbcAttackTimer matches 20 run function glarth:combat/action_enemy/util/done
