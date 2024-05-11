scoreboard players set @e[tag=tbcEnemy] tbcSel 0
scoreboard players set @e[tag=tbcEnemy,sort=nearest,limit=1] tbcSel 1
scoreboard players set r Random 5
function glarth:util/rand_tbc
scoreboard players operation fire tbcStats = attackFire tbcStats
scoreboard players operation damage tbcStats = attackStrength tbcStats
scoreboard players operation damage tbcStats *= 20 Const
scoreboard players operation damage tbcStats += n Random
scoreboard players set r Random 7
function glarth:util/rand_tbc
execute if score @e[scores={tbcSel=1},limit=1] tbcArmor matches 100.. run scoreboard players set damage tbcStats 0
execute if score n Random matches 1 run scoreboard players operation damage tbcStats -= @e[scores={tbcSel=1}] tbcArmor
execute if score n Random matches 2 run scoreboard players operation damage tbcStats *= 2 Const
execute if score n Random matches 2 run scoreboard players operation damage tbcStats -= @e[scores={tbcSel=1}] tbcArmor
execute if score n Random matches 2 run scoreboard players operation damage tbcStats /= 2 Const
execute if entity @e[tag=tbcEnderDodge,scores={tbcSel=1}] run scoreboard players set dodged tbcStats 3
execute as @e[tag=tbcTurn] run function glarth:combat/action/util/damage
execute as @e[tag=tbcTurn] at @s run playsound minecraft:entity.arrow.hit player @s ~ ~ ~ 1 1
kill @s