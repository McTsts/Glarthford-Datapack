tag @s remove stage_053
tag @s remove tbcUnselectable
tag @s remove tbcLonely
execute at @s as @e[distance=..1.5] at @s run tp @s ~ ~-2 ~4

# special attacks
scoreboard players set @s attack_061 0
scoreboard players set @s attack_064 0
scoreboard players set @s attack_189 1
scoreboard players set @s attack_060 2
scoreboard players set @s attack_128 2

scoreboard players set @e[tag=tbcEnemy] tbcSel 0
scoreboard players set @s tbcSel 1
function glarth:combat/selection