tag @s remove stage_008
tag @s remove tbcUnselectable
tag @s remove tbcLonely
scoreboard players set @s attack_062 0
execute at @s as @e[distance=..1.5] at @s run tp @s ~-7 ~-2 ~

scoreboard players set @e[tag=tbcEnemy] tbcSel 0
scoreboard players set @s tbcSel 1
function glarth:combat/selection