data modify storage glarth:main combat.turne prepend value []

execute if data storage glarth:main combat.turne[0] run function glarth:combat/peffect/get

execute as @s[scores={playerid=1}] run data modify storage glarth:main combat.turne set from storage glarth:main combat.effect[0]
execute as @s[scores={playerid=2}] run data modify storage glarth:main combat.turne set from storage glarth:main combat.effect[1]
execute as @s[scores={playerid=3}] run data modify storage glarth:main combat.turne set from storage glarth:main combat.effect[2]