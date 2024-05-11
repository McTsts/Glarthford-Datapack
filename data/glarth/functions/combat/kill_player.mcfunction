execute if entity @e[tag=tbcTurn,type=!player] run tellraw @a ["",[{"nbt":"ArmorItems[0].tag.CustomName","entity":"@e[tag=tbcTurn,type=!player]","interpret":true}],{"text":" >> ","color":"gray"},{"translate":"tbc.msg.death1","with":[{"nbt":"EnderItems[{Slot:0b}].tag.name","entity":"@s[type=player]","interpret":true},{"selector":"@s[type=!player]"}]}]
execute unless entity @e[tag=tbcTurn,type=!player] run tellraw @a ["",[{"nbt":"EnderItems[{Slot:0b}].tag.name","entity":"@e[type=player,tag=tbcTurn]","interpret":true}],{"text":" >> ","color":"gray"},{"translate":"tbc.msg.death1","with":[{"nbt":"EnderItems[{Slot:0b}].tag.name","entity":"@s[type=player]","interpret":true},{"selector":"@s[type=!player]"}]}]
execute as @s[scores={playerid=1}] as @e[tag=tbcPlayerAS1] at @s run kill @e[tag=charQ,distance=..2]
execute as @s[scores={playerid=2}] as @e[tag=tbcPlayerAS2] at @s run kill @e[tag=charQ,distance=..2]
execute as @s[scores={playerid=3}] as @e[tag=tbcPlayerAS3] at @s run kill @e[tag=charQ,distance=..2]
execute as @s[scores={playerid=1}] run kill @e[tag=tbcPlayerAS1]
execute as @s[scores={playerid=2}] run kill @e[tag=tbcPlayerAS2]
execute as @s[scores={playerid=3}] run kill @e[tag=tbcPlayerAS3]
tag @s remove inTBC
scoreboard players reset @s playerid
gamemode spectator @s
scoreboard players set @s tbcBlindness 0
tag @s remove tbcAttackable

execute unless score lobbyTBC Stats matches 1.. run kill @s
execute if score lobbyTBC Stats matches 1.. run tag @s add tbcLobbyKilled

execute if score lobbyTBC Stats matches 1.. unless entity @a[scores={playerid=1..},gamemode=adventure,tag=!tbcLobbyKilled] run scoreboard players set lobbyTBC Stats 1
execute if score lobbyTBC Stats matches 1.. unless entity @a[scores={playerid=1..},gamemode=adventure,tag=!tbcLobbyKilled] run function glarth:combat/end