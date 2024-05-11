scoreboard players add @s pcRec 1
tp @e[tag=pcRecEval] ~ ~ ~
execute store result score X pcRec run data get entity @e[tag=pcRecEval,limit=1] Pos[0] 100
execute store result score Y pcRec run data get entity @e[tag=pcRecEval,limit=1] Pos[1] 100
execute store result score Z pcRec run data get entity @e[tag=pcRecEval,limit=1] Pos[2] 100
execute if score @s pcSneak matches 1.. run scoreboard players remove Y pcRec 33
execute if score X pcRec matches 16122..16127 if score Y pcRec matches 2525..2593 if score Z pcRec matches -11205..-11095 run function glarth:mechanic/lobby/pc/user
execute positioned ^ ^ ^0.025 unless score @s pcRec matches 200.. run function glarth:mechanic/lobby/pc/rec