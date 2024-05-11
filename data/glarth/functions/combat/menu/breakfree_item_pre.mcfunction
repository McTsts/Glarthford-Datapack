execute if score A tbcAttackParamX matches 1 run scoreboard players set @s tbcBreakfree 1
execute if score A tbcAttackParamX matches 2 run scoreboard players set @s tbcBreakfree 1
execute if score A tbcAttackParamX matches 3 run scoreboard players operation @s tbcBreakfree = @s tbcFood27
execute if score A tbcAttackParamX matches 4 run scoreboard players operation @s tbcBreakfree = @s tbcFood28
execute if score A tbcAttackParamX matches 5 run scoreboard players set @s tbcBreakfree 1
execute if score A tbcAttackParamX matches 6 run scoreboard players set @s tbcBreakfree 1
execute if score A tbcAttackParamX matches 7 run scoreboard players set @s tbcBreakfree 1
scoreboard players set 64 Const 64
scoreboard players operation @s tbcBreakfree < 64 Const

scoreboard players set tbc0 tbcStats 0
execute if score @s tbcBreakfree matches 10 run scoreboard players set tbc0 tbcStats 1
execute if score @s tbcBreakfree matches 20 run scoreboard players set tbc0 tbcStats 1
execute if score @s tbcBreakfree matches 30 run scoreboard players set tbc0 tbcStats 1
execute if score @s tbcBreakfree matches 40 run scoreboard players set tbc0 tbcStats 1
execute if score @s tbcBreakfree matches 50 run scoreboard players set tbc0 tbcStats 1
execute if score @s tbcBreakfree matches 60 run scoreboard players set tbc0 tbcStats 1