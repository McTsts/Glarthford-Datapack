execute as @s[scores={playerid=1}] run data modify storage glarth:main combat.inv[0] set from storage glarth:main inv
execute as @s[scores={playerid=2}] run data modify storage glarth:main combat.inv[1] set from storage glarth:main inv
execute as @s[scores={playerid=3}] run data modify storage glarth:main combat.inv[2] set from storage glarth:main inv
data modify storage glarth:main combat.turn set from storage glarth:main inv