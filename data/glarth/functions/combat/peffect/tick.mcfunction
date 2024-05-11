execute as @s[scores={playerid=1}] run data modify storage glarth:main eff set from storage glarth:main combat.effect[0]
execute as @s[scores={playerid=2}] run data modify storage glarth:main eff set from storage glarth:main combat.effect[1]
execute as @s[scores={playerid=3}] run data modify storage glarth:main eff set from storage glarth:main combat.effect[2]

execute if score eId Temp matches 1 run data remove storage glarth:main eff[{Id:1}]
execute if score eId Temp matches 3 run data remove storage glarth:main eff[{Id:3}]
execute if score eId Temp matches 8 run data remove storage glarth:main eff[{Id:8}]
execute if score eId Temp matches 12 run data remove storage glarth:main eff[{Id:12}]
execute if score eId Temp matches 16 run data remove storage glarth:main eff[{Id:16}]
execute if score eId Temp matches 18 run data remove storage glarth:main eff[{Id:18}]
execute if score eDuration Temp matches 1.. run data modify storage glarth:main eff append from storage glarth:main combat.turne[0]

execute as @s[scores={playerid=1}] run data modify storage glarth:main combat.effect[0] set from storage glarth:main eff
execute as @s[scores={playerid=2}] run data modify storage glarth:main combat.effect[1] set from storage glarth:main eff
execute as @s[scores={playerid=3}] run data modify storage glarth:main combat.effect[2] set from storage glarth:main eff