function glarth:combat/death

execute unless entity @s[scores={tbcTOU=1..}] unless entity @s[tag=tbcDeathUndo] run function glarth:combat/kill_enemy
tag @s remove tbcDeathUndo

execute if entity @s[scores={tbcTOU=1..}] run tellraw @a ["",{"nbt":"ArmorItems[0].tag.CustomName","entity":"@e[tag=tbcTurn,type=!player]","interpret":true},[{"nbt":"EnderItems[{Slot:0b}].tag.name","entity":"@p[tag=tbcTurn]","interpret":true}],{"text":" >> ","color":"gray"},{"translate":"tbc.msg.use2","with":[[{"nbt":"EnderItems[{Slot:0b}].tag.name","entity":"@s[type=player]","interpret":true},{"selector":"@s[type=!player]"}],{"translate":"tbc.attack.passive.totem","bold":true}]}]
execute if entity @s[scores={tbcTOU=1..}] at @s if entity @s[tag=tbcRaidLeader] as @a at @s run playsound minecraft:raid_leader6 voice @s ~ ~ ~ 1 1 1
execute if entity @s[scores={tbcTOU=1..}] at @s run particle minecraft:totem_of_undying ~ ~ ~ 0.7 0.7 0.7 0.2 50
execute if entity @s[scores={tbcTOU=1..}] at @s run playsound minecraft:item.totem.use hostile @a ~ ~ ~ 0.5 1
execute if entity @s[scores={tbcTOU=1..}] at @s run scoreboard players set @s tbcHealth 100
execute if entity @s[scores={tbcTOU=1..}] at @s run scoreboard players remove @s tbcTOU 1



