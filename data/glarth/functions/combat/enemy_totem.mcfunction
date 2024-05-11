tellraw @a ["",{"nbt":"ArmorItems[0].tag.CustomName","entity":"@e[tag=tbcTurn,type=!player]","interpret":true},[{"nbt":"EnderItems[{Slot:0b}].tag.name","entity":"@p[tag=tbcTurn]","interpret":true}],{"text":" >> ","color":"gray"},{"translate":"tbc.msg.use2","with":[[{"nbt":"EnderItems[{Slot:0b}].tag.name","entity":"@s[type=player]","interpret":true},{"selector":"@s[type=!player]"}],{"translate":"tbc.attack.passive.totem","bold":true}]}]
execute if entity @s[tag=tbcRaidLeader] as @a at @s run playsound minecraft:raid_leader6 voice @s ~ ~ ~ 1 1 1
particle minecraft:totem_of_undying ~ ~ ~ 0.7 0.7 0.7 0.2 50
playsound minecraft:item.totem.use hostile @a ~ ~ ~ 0.5 1
execute if score difficulty tbcStats matches 0 run scoreboard players set @s tbcHealth 20
execute if score difficulty tbcStats matches 1 run scoreboard players set @s tbcHealth 50
execute if score difficulty tbcStats matches 2 run scoreboard players set @s tbcHealth 100
execute if score difficulty tbcStats matches 3 run scoreboard players set @s tbcHealth 200
execute if score difficulty tbcStats matches 4 run scoreboard players set @s tbcHealth 300
execute if score difficulty tbcStats matches 5 run scoreboard players set @s tbcHealth 400
execute if score difficulty tbcStats matches 6 run scoreboard players set @s tbcHealth 500
scoreboard players operation @s tbcHealth < @s tbcMaxHealth
scoreboard players remove @s tbcTOU 1
