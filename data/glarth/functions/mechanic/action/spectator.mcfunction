gamemode spectator @s
tp @s @r[gamemode=adventure]
clear @s
scoreboard players set @s edgeJ 0
function glarth:mechanic/lobby/music
tag @s remove hasWon

tag @s remove inTBC
tag @s remove tbcAttackable
scoreboard players reset @s playerid

tag @s remove talkedToR
tag @s remove inSewer
tag @s remove hasWon
tag @s remove triedAstro
tag @s remove workerC
tag @s remove workerB