tag @e remove tbcVia
tag @e remove tbcViaAS
tag @s add tbcViaAS
execute if entity @s[tag=tbcPlayerAS1] as @e[scores={playerid=1}] run tag @s add tbcVia
execute if entity @s[tag=tbcPlayerAS2] as @e[scores={playerid=2}] run tag @s add tbcVia
execute if entity @s[tag=tbcPlayerAS3] as @e[scores={playerid=3}] run tag @s add tbcVia
execute if entity @s[tag=!tbcPlayerAS] run tag @s add tbcVia