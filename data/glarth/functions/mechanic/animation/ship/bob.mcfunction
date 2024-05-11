scoreboard players add shipAnim Animation 1
execute if score shipAnim Animation matches 1..100 as @e[tag=shipMove,type=armor_stand] at @s run tp @s ~ ~0.003 ~
execute if score shipAnim Animation matches 101..200 as @e[tag=shipMove,type=armor_stand] at @s run tp @s ~ ~-0.003 ~
execute if score shipAnim Animation matches 200 run function glarth:mechanic/animation/ship/next