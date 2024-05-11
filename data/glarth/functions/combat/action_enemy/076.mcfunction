execute if score @s tbcAttackStage matches 0 run scoreboard players add @s tbcAttackTimer 1
execute if score @s tbcAttackStage matches 0 if score @s tbcAttackTimer matches 11..20 run particle minecraft:spit ~ ~0.25 ~ 1 1 1 0.1 1
execute if score @s tbcAttackStage matches 0 if score @s tbcAttackTimer matches 21..30 run particle minecraft:spit ~ ~0.25 ~ 1 1 1 0.1 4
execute if score @s tbcAttackStage matches 0 if score @s tbcAttackTimer matches 31..40 run particle minecraft:spit ~ ~0.25 ~ 1 1 1 0.1 16
execute if score @s tbcAttackStage matches 0 if score @s tbcAttackTimer matches 41..50 run particle minecraft:spit ~ ~0.25 ~ 1 1 1 0.1 64
execute if score @s tbcAttackStage matches 0 if score @s tbcAttackTimer matches 20 unless entity @s[tag=tbcEnderPriest] run function glarth:dialogue/necromancer/lines/attack2
execute if score @s tbcAttackStage matches 0 if score @s tbcAttackTimer matches 50 at @s run playsound minecraft:entity.illusioner.prepare_mirror hostile @a ~ ~ ~ 2 1.5
execute if score @s tbcAttackStage matches 0 if score @s tbcAttackTimer matches 50 run function glarth:combat/action_enemy/util/next_stage

execute if score @s tbcAttackStage matches 1 unless entity @e[tag=tbcEnemy5] run scoreboard players set noEnemy Temp 5
execute if score @s tbcAttackStage matches 1 unless entity @e[tag=tbcEnemy4] run scoreboard players set noEnemy Temp 4
execute if score @s tbcAttackStage matches 1 unless entity @e[tag=tbcEnemy3] run scoreboard players set noEnemy Temp 3
execute if score @s tbcAttackStage matches 1 unless entity @e[tag=tbcEnemy2] run scoreboard players set noEnemy Temp 2
execute if score @s tbcAttackStage matches 1 run summon wolf ~ ~ ~ {NoAI:1b,Sitting:1b,Tags:["tbcEnemyN","tbc","charQEB"],Passengers:[{DisabledSlots:4144959,Invisible:1,NoGravity:1,Silent:1b,Marker:1,id:"armor_stand",Tags:["tbc","charQE","charQEdog"],CustomNameVisible:1,CustomName:"{\"translate\":\"tbc.enemy.necromancer.dog\",\"color\":\"gray\"}"},{DisabledSlots:4144959,Invisible:1,NoGravity:1,Silent:1b,Marker:1,id:"armor_stand",Tags:["tbc","charQEBee"],Pose:{Head:[0f,1f,0f]}}]}
execute if score @s tbcAttackStage matches 1 if score noEnemy Temp matches 2 run tag @e[tag=tbcEnemyN,type=wolf] add tbcEnemy2
execute if score @s tbcAttackStage matches 1 if score noEnemy Temp matches 3 run tag @e[tag=tbcEnemyN,type=wolf] add tbcEnemy3
execute if score @s tbcAttackStage matches 1 if score noEnemy Temp matches 4 run tag @e[tag=tbcEnemyN,type=wolf] add tbcEnemy4
execute if score @s tbcAttackStage matches 1 if score noEnemy Temp matches 5 run tag @e[tag=tbcEnemyN,type=wolf] add tbcEnemy5
execute if score @s tbcAttackStage matches 1 run tag @e[tag=tbcEnemyN,type=wolf] remove tbcEnemyN
execute if score @s tbcAttackStage matches 1 if score noEnemy Temp matches 2 as @e[tag=tbcEnemy2,type=wolf] run function glarth:combat/entity/n_dog
execute if score @s tbcAttackStage matches 1 if score noEnemy Temp matches 3 as @e[tag=tbcEnemy3,type=wolf] run function glarth:combat/entity/n_dog
execute if score @s tbcAttackStage matches 1 if score noEnemy Temp matches 4 as @e[tag=tbcEnemy4,type=wolf] run function glarth:combat/entity/n_dog
execute if score @s tbcAttackStage matches 1 if score noEnemy Temp matches 5 as @e[tag=tbcEnemy5,type=wolf] run function glarth:combat/entity/n_dog
execute if score @s tbcAttackStage matches 1 if score noEnemy Temp matches 2 as @e[tag=tbcEnemy2,type=wolf] run function glarth:combat/set_loc
execute if score @s tbcAttackStage matches 1 if score noEnemy Temp matches 3 as @e[tag=tbcEnemy3,type=wolf] run function glarth:combat/set_loc
execute if score @s tbcAttackStage matches 1 if score noEnemy Temp matches 4 as @e[tag=tbcEnemy4,type=wolf] run function glarth:combat/set_loc
execute if score @s tbcAttackStage matches 1 if score noEnemy Temp matches 5 as @e[tag=tbcEnemy5,type=wolf] run function glarth:combat/set_loc
execute if score @s tbcAttackStage matches 1 run function glarth:combat/action_enemy/util/next_stage

execute if score @s tbcAttackStage matches 2 run scoreboard players add @s tbcAttackTimer 1
execute if score @s tbcAttackStage matches 2 if score @s tbcAttackTimer matches 50 run function glarth:combat/action_enemy/util/done