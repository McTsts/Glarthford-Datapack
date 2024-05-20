tellraw @a ["",{"nbt":"ArmorItems[0].components.minecraft:custom_data.CustomName","entity":"@e[tag=tbcTurn]","interpret":true},{"text":" >> ","color":"gray"},{"translate":"tbc.msg.use","with":[{"translate":"tbc.attack.pouch.golden_apple","bold":true}]}]
execute if entity @a[scores={playerid=1},gamemode=adventure] run scoreboard players add @s tbcHealth 100
execute if entity @a[scores={playerid=2},gamemode=adventure] run scoreboard players add @s tbcHealth 100
execute if entity @a[scores={playerid=3},gamemode=adventure] run scoreboard players add @s tbcHealth 100
tag @s add tbcSkipThis