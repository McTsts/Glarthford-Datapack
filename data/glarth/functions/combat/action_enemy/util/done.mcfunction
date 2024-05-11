scoreboard players set @e[scores={tbcID=1..}] tbcAttackStage 0
scoreboard players set @e[scores={tbcID=1..}] tbcAttackTimer 0
scoreboard players set damage tbcStats 0
scoreboard players set fire tbcStats 0
scoreboard players set poison tbcStats 0
scoreboard players set infection tbcStats 0
scoreboard players set slowness tbcStats 0
scoreboard players set pumpkin tbcStats 0
scoreboard players set wither tbcStats 0
tag @e remove tbcMarkerMiddleY
tag @e remove tbcMarkerMiddleX
execute as @e[scores={tbcID=1..}] run function glarth:combat/set_loc
execute as @e[tag=charQB] run function glarth:combat/set_loc
execute as @e[scores={tbcID=1..}] at @s as @e[tag=charQE,limit=1,sort=nearest] run replaceitem entity @s armor.head air
execute as @e[scores={tbcID=1}] run function glarth:combat/done