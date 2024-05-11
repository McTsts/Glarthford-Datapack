execute as @s[scores={playerid=1}] run data modify storage glarth:main combat.turne set from storage glarth:main combat.effect[0]
execute as @s[scores={playerid=2}] run data modify storage glarth:main combat.turne set from storage glarth:main combat.effect[1]
execute as @s[scores={playerid=3}] run data modify storage glarth:main combat.turne set from storage glarth:main combat.effect[2]
data modify storage glarth:main combat.turne prepend value {}

function glarth:combat/peffect/set
