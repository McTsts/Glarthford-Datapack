scoreboard players add @s tbcCharge 1
execute if score @s tbcCharge matches 2.. run tag @s remove stage_065
execute if score @s tbcCharge matches 2.. run scoreboard players remove @s tbcSpeed 1000
execute if score @s tbcCharge matches 2.. run scoreboard players set @s tbcCharge 0