execute as @s[scores={playerid=1}] run data modify storage glarth:main eff set from storage glarth:main combat.effect[0]
execute as @s[scores={playerid=2}] run data modify storage glarth:main eff set from storage glarth:main combat.effect[1]
execute as @s[scores={playerid=3}] run data modify storage glarth:main eff set from storage glarth:main combat.effect[2]

execute if score eId Temp matches 1 run data remove storage glarth:main eff[{id:"minecraft:speed"}]
execute if score eId Temp matches 3 run data remove storage glarth:main eff[{id:"minecraft:haste"}]
execute if score eId Temp matches 8 run data remove storage glarth:main eff[{id:"minecraft:jump_boost"}]
execute if score eId Temp matches 12 run data remove storage glarth:main eff[{id:"minecraft:fire_resistance"}]
execute if score eId Temp matches 16 run data remove storage glarth:main eff[{id:"minecraft:night_vision"}]
execute if score eId Temp matches 18 run data remove storage glarth:main eff[{id:"minecraft:weakness"}]
execute if score eDuration Temp matches 1.. run data modify storage glarth:main eff append from storage glarth:main combat.turne[0]

execute as @s[scores={playerid=1}] run data modify storage glarth:main combat.effect[0] set from storage glarth:main eff
execute as @s[scores={playerid=2}] run data modify storage glarth:main combat.effect[1] set from storage glarth:main eff
execute as @s[scores={playerid=3}] run data modify storage glarth:main combat.effect[2] set from storage glarth:main eff