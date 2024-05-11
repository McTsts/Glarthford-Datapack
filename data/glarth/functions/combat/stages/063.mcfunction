# EP Jump Queue
scoreboard players add @s tbcSpeed 1000
execute if score difficulty tbcStats matches 1 if score @s tbcArmor matches 20.. run tag @s add stage_074
execute if score difficulty tbcStats matches 1 if score @s tbcArmor matches ..20 run scoreboard players add @s tbcArmor 05
execute if score difficulty tbcStats matches 2..3 if score @s tbcArmor matches 30.. run tag @s add stage_074
execute if score difficulty tbcStats matches 2..3 if score @s tbcArmor matches ..30 run scoreboard players add @s tbcArmor 05
execute if score difficulty tbcStats matches 4..6 if score @s tbcArmor matches 40.. run tag @s add stage_074
execute if score difficulty tbcStats matches 4..6 if score @s tbcArmor matches ..40 run scoreboard players add @s tbcArmor 05
tag @s add stage_064