scoreboard players set @s pcRec 200
execute if score @s pcSneak matches 0 run particle minecraft:bubble_pop ~ ~ ~-0.02 0 0 0 0 0 normal @s
execute if score @s pcSneak matches 1.. run particle minecraft:bubble_pop ~ ~-0.35 ~-0.02 0 0 0 0 1 normal @s

# Get Mouse Pos
scoreboard players remove Y pcRec 2500
scoreboard players operation Z pcRec *= -1 Const
scoreboard players remove Z pcRec 11100
scoreboard players operation Ys pcRec = Y pcRec 
scoreboard players operation Yo pcRec = height pcScroll
scoreboard players operation Yo pcRec *= 3 Const
scoreboard players operation Yo pcRec /= 19 Const
scoreboard players operation Ys pcRec -= Yo pcRec

# Click
execute if entity @s[tag=lobbyPCclicked] run function glarth:mechanic/lobby/pc/click

# Hover Effects
execute if score Y pcRec matches 77..89 if score Z pcRec matches 3..15 run scoreboard players set doVLogo pcData 1

execute if score Y pcRec matches 84..90 if score Z pcRec matches 23..37 run scoreboard players set animLink pcData 1
execute if score Y pcRec matches 84..90 if score Z pcRec matches 49..62 run scoreboard players set animLink pcData 2
execute if score Y pcRec matches 84..90 if score Z pcRec matches 72..92 run scoreboard players set animLink pcData 3

function glarth:mechanic/lobby/pc/scroll/detect
execute if score @s pcSpeed matches 4 run scoreboard players set @s pcSpeed 0
execute if score @s pcSpeed matches -4 run scoreboard players set @s pcSpeed 0
execute unless score @s pcSpeed matches 0 run scoreboard players operation @s pcSpeed *= 7 Const
execute unless score @s pcSpeed matches 0 run scoreboard players operation height pcScroll += @s pcSpeed
execute unless score @s pcSpeed matches 0 run function glarth:mechanic/lobby/pc/scroll