execute if score X tbcAttackParamX matches 0 run scoreboard players operation A tbcAttackParamX = 0 tbcAttackParamA
execute if score X tbcAttackParamX matches 0 run scoreboard players operation B tbcAttackParamX = 0 tbcAttackParamB
execute if score X tbcAttackParamX matches 0 run scoreboard players operation C tbcAttackParamX = 0 tbcAttackParamC
execute if score X tbcAttackParamX matches 0 run scoreboard players operation D tbcAttackParamX = 0 tbcAttackParamD

execute if score X tbcAttackParamX matches 1 run scoreboard players operation A tbcAttackParamX = 1 tbcAttackParamA
execute if score X tbcAttackParamX matches 1 run scoreboard players operation B tbcAttackParamX = 1 tbcAttackParamB
execute if score X tbcAttackParamX matches 1 run scoreboard players operation C tbcAttackParamX = 1 tbcAttackParamC
execute if score X tbcAttackParamX matches 1 run scoreboard players operation D tbcAttackParamX = 1 tbcAttackParamD

execute if score X tbcAttackParamX matches 2 run scoreboard players operation A tbcAttackParamX = 2 tbcAttackParamA
execute if score X tbcAttackParamX matches 2 run scoreboard players operation B tbcAttackParamX = 2 tbcAttackParamB
execute if score X tbcAttackParamX matches 2 run scoreboard players operation C tbcAttackParamX = 2 tbcAttackParamC
execute if score X tbcAttackParamX matches 2 run scoreboard players operation D tbcAttackParamX = 2 tbcAttackParamD

execute if score X tbcAttackParamX matches 3 run scoreboard players operation A tbcAttackParamX = 3 tbcAttackParamA
execute if score X tbcAttackParamX matches 3 run scoreboard players operation B tbcAttackParamX = 3 tbcAttackParamB
execute if score X tbcAttackParamX matches 3 run scoreboard players operation C tbcAttackParamX = 3 tbcAttackParamC
execute if score X tbcAttackParamX matches 3 run scoreboard players operation D tbcAttackParamX = 3 tbcAttackParamD

execute if score X tbcAttackParamX matches 4 run scoreboard players operation A tbcAttackParamX = 4 tbcAttackParamA
execute if score X tbcAttackParamX matches 4 run scoreboard players operation B tbcAttackParamX = 4 tbcAttackParamB
execute if score X tbcAttackParamX matches 4 run scoreboard players operation C tbcAttackParamX = 4 tbcAttackParamC
execute if score X tbcAttackParamX matches 4 run scoreboard players operation D tbcAttackParamX = 4 tbcAttackParamD

execute if score X tbcAttackParamX matches 5 run scoreboard players operation A tbcAttackParamX = 5 tbcAttackParamA
execute if score X tbcAttackParamX matches 5 run scoreboard players operation B tbcAttackParamX = 5 tbcAttackParamB
execute if score X tbcAttackParamX matches 5 run scoreboard players operation C tbcAttackParamX = 5 tbcAttackParamC
execute if score X tbcAttackParamX matches 5 run scoreboard players operation D tbcAttackParamX = 5 tbcAttackParamD

execute if score X tbcAttackParamX matches 6 run scoreboard players operation A tbcAttackParamX = 6 tbcAttackParamA
execute if score X tbcAttackParamX matches 6 run scoreboard players operation B tbcAttackParamX = 6 tbcAttackParamB
execute if score X tbcAttackParamX matches 6 run scoreboard players operation C tbcAttackParamX = 6 tbcAttackParamC
execute if score X tbcAttackParamX matches 6 run scoreboard players operation D tbcAttackParamX = 6 tbcAttackParamD

execute if score X tbcAttackParamX matches 7 run scoreboard players operation A tbcAttackParamX = 7 tbcAttackParamA
execute if score X tbcAttackParamX matches 7 run scoreboard players operation B tbcAttackParamX = 7 tbcAttackParamB
execute if score X tbcAttackParamX matches 7 run scoreboard players operation C tbcAttackParamX = 7 tbcAttackParamC
execute if score X tbcAttackParamX matches 7 run scoreboard players operation D tbcAttackParamX = 7 tbcAttackParamD

scoreboard players set S tbcAttackParamX 0
scoreboard players reset X tbcAttackParamX
scoreboard players set T tbcAttackParamX 1
execute unless score A tbcAttackParamX matches 1.. unless score B tbcAttackParamX matches 1.. unless score C tbcAttackParamX matches 1.. unless score D tbcAttackParamX matches 1.. run scoreboard players set T tbcAttackParamX -1