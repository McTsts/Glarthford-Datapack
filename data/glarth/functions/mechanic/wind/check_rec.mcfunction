scoreboard players remove @s windRec 1
execute if score @s windRec matches 1.. unless block ~ ~ ~ #glarth:transparent positioned ^ ^ ^1 run scoreboard players add @s windCheck 1
execute if score @s windRec matches 1.. if block ~ ~ ~ #glarth:transparent positioned ^ ^ ^1 run function glarth:mechanic/wind/check_rec