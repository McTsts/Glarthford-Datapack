execute unless entity @e[tag=tbcEnemy5,type=armor_stand] run scoreboard players set noEnemy Temp 5
execute unless entity @e[tag=tbcEnemy4,type=armor_stand] run scoreboard players set noEnemy Temp 4
execute unless entity @e[tag=tbcEnemy3,type=armor_stand] run scoreboard players set noEnemy Temp 3
execute unless entity @e[tag=tbcEnemy2,type=armor_stand] run scoreboard players set noEnemy Temp 2
execute unless entity @e[tag=tbcEnemy1,type=armor_stand] run scoreboard players set noEnemy Temp 1
#$say $(type_1) $(type_2) $(type_3) $(type_4)  $(type_5) 
$execute if score noEnemy Temp matches 1 run function glarth:combat/action_enemy/stages/summoning/summon_one {id:1,type:"$(type_1)",summoned_command:"$(summoned_command)"}
$execute if score noEnemy Temp matches 2 run function glarth:combat/action_enemy/stages/summoning/summon_one {id:2,type:"$(type_2)",summoned_command:"$(summoned_command)"}
$execute if score noEnemy Temp matches 3 run function glarth:combat/action_enemy/stages/summoning/summon_one {id:3,type:"$(type_3)",summoned_command:"$(summoned_command)"}
$execute if score noEnemy Temp matches 4 run function glarth:combat/action_enemy/stages/summoning/summon_one {id:4,type:"$(type_4)",summoned_command:"$(summoned_command)"}
$execute if score noEnemy Temp matches 5 run function glarth:combat/action_enemy/stages/summoning/summon_one {id:5,type:"$(type_5)",summoned_command:"$(summoned_command)"}