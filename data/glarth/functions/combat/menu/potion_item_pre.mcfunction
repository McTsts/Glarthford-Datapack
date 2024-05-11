execute if score A tbcAttackParamX matches 1 run scoreboard players operation @s tbcPotion = @s tbcPotion1
execute if score A tbcAttackParamX matches 2 run scoreboard players operation @s tbcPotion = @s tbcPotion2
execute if score A tbcAttackParamX matches 3 run scoreboard players operation @s tbcPotion = @s tbcPotion3
execute if score A tbcAttackParamX matches 4 run scoreboard players operation @s tbcPotion = @s tbcPotion4
execute if score A tbcAttackParamX matches 5 run scoreboard players operation @s tbcPotion = @s tbcPotion5
execute if score A tbcAttackParamX matches 6 run scoreboard players operation @s tbcPotion = @s tbcPotion6
execute if score A tbcAttackParamX matches 7 run scoreboard players operation @s tbcPotion = @s tbcPotion7
execute if score A tbcAttackParamX matches 8 run scoreboard players operation @s tbcPotion = @s tbcPotion8
scoreboard players set 64 Const 64
scoreboard players operation @s tbcPotion < 64 Const

scoreboard players set tbc0 tbcStats 0
execute if score @s tbcPotion matches 10 run scoreboard players set tbc0 tbcStats 1
execute if score @s tbcPotion matches 20 run scoreboard players set tbc0 tbcStats 1
execute if score @s tbcPotion matches 30 run scoreboard players set tbc0 tbcStats 1
execute if score @s tbcPotion matches 40 run scoreboard players set tbc0 tbcStats 1
execute if score @s tbcPotion matches 50 run scoreboard players set tbc0 tbcStats 1
execute if score @s tbcPotion matches 60 run scoreboard players set tbc0 tbcStats 1