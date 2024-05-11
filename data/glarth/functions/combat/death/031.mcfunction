# Speed
execute if score difficulty tbcStats matches 1..3 run scoreboard players set @s tbcSpeed 1
execute if score difficulty tbcStats matches 4..5 run scoreboard players set @s tbcSpeed 2
execute if score difficulty tbcStats matches 6 run scoreboard players set @s tbcSpeed 3
scoreboard players set @s tbcQueue 0

# Inulnerable
scoreboard players add @s tbcArmor 1000

# Remove Effects
scoreboard players set @s tbcFire 0
scoreboard players set @s tbcPoison 0
scoreboard players set @s tbcBee 0

# Display
data merge entity @s {Pose:{Head:[-70.0f,0.0f,0.0f]}}
execute at @s run tp @s ~ ~-0.7 ~

# Tech
tag @s add tbcLonely
tag @s add tbcUnselectable
tag @s add stage_060
tag @s add tbcDontUpdateLoc

# Select Different
execute if score @s tbcSel matches 1.. at @s run tag @e[tag=tbcEnemy,tag=!tbcUnselectable] add rand_sel
execute if score @s tbcSel matches 1.. at @s run function glarth:util/rand_sel/1
execute if score @s tbcSel matches 1.. at @s run scoreboard players set @e[tag=rand_sel_result] tbcSel 1
scoreboard players set @s tbcSel 0
function glarth:combat/selection

# Undo Death
execute if entity @e[tag=tbcBoss,tag=!tbcDontUpdateLoc] run tag @s add tbcDeathUndo
execute if entity @e[tag=tbcBoss,tag=!tbcDontUpdateLoc] run scoreboard players set @s tbcHealth 100
execute unless entity @e[tag=tbcBoss,tag=!tbcDontUpdateLoc] at @s run tag @e[tag=tbcEnemy,distance=0.1..] remove tbcBoss

# Turn Skip
execute if entity @s[tag=tbcTurn] run tag @s add tbcSkipThis

# Adjust Music
scoreboard players set piglins Temp 0
execute as @e[tag=tbcPiglin,tag=!tbcUnselectable] run scoreboard players add piglins Temp 1 
execute as @e[tag=tbcWither,tag=!tbcUnselectable] run scoreboard players add piglins Temp 1 

execute unless score piglins Temp matches 2.. run stopsound @a * time_to_fight1
execute unless entity @e[tag=tbcPiglinArchitect,tag=!tbcUnselectable] run stopsound @a * time_to_fight2
execute unless entity @e[tag=tbcPiglinNormal,tag=!tbcUnselectable] run stopsound @a * time_to_fight3
execute unless entity @e[tag=tbcPiglinWarrior,tag=!tbcUnselectable] run stopsound @a * time_to_fight4
execute unless entity @e[tag=tbcPiglinShaman,tag=!tbcUnselectable] run stopsound @a * time_to_fight5
execute unless score piglins Temp matches 3.. run stopsound @a * time_to_fight6