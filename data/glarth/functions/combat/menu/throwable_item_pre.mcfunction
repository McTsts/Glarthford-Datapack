execute if score A tbcAttackParamX matches 1 run scoreboard players operation @s tbcThrowable = @s tbcThrowable1
execute if score A tbcAttackParamX matches 2 run scoreboard players operation @s tbcThrowable = @s tbcThrowable2
execute if score A tbcAttackParamX matches 3 run scoreboard players operation @s tbcThrowable = @s tbcThrowable3
execute if score A tbcAttackParamX matches 4 run scoreboard players operation @s tbcThrowable = @s tbcThrowable4
execute if score A tbcAttackParamX matches 5 run scoreboard players operation @s tbcThrowable = @s tbcThrowable5
execute if score A tbcAttackParamX matches 6 run scoreboard players operation @s tbcThrowable = @s tbcThrowable6
execute if score A tbcAttackParamX matches 7 run scoreboard players operation @s tbcThrowable = @s tbcThrowable7
execute if score A tbcAttackParamX matches 8 run scoreboard players operation @s tbcThrowable = @s tbcThrowable8
execute if score A tbcAttackParamX matches 9 run scoreboard players operation @s tbcThrowable = @s tbcThrowable9
execute if score A tbcAttackParamX matches 10 run scoreboard players operation @s tbcThrowable = @s tbcThrowable10
execute if score A tbcAttackParamX matches 11 run scoreboard players operation @s tbcThrowable = @s tbcThrowable11
execute if score A tbcAttackParamX matches 12 run scoreboard players operation @s tbcThrowable = @s tbcThrowable12
execute if score A tbcAttackParamX matches 13 run scoreboard players operation @s tbcThrowable = @s tbcThrowable13
execute if score A tbcAttackParamX matches 14..15 run scoreboard players set @s tbcThrowable 1
scoreboard players set 64 Const 64
scoreboard players operation @s tbcThrowable < 64 Const

scoreboard players set tbc0 tbcStats 0
execute if score @s tbcThrowable matches 10 run scoreboard players set tbc0 tbcStats 1
execute if score @s tbcThrowable matches 20 run scoreboard players set tbc0 tbcStats 1
execute if score @s tbcThrowable matches 30 run scoreboard players set tbc0 tbcStats 1
execute if score @s tbcThrowable matches 40 run scoreboard players set tbc0 tbcStats 1
execute if score @s tbcThrowable matches 50 run scoreboard players set tbc0 tbcStats 1
execute if score @s tbcThrowable matches 60 run scoreboard players set tbc0 tbcStats 1