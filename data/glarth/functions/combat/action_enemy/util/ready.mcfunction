execute if entity @s[tag=!tbcReady] run scoreboard players remove unready tbcStats 1
tag @s add tbcReady
execute if score unready tbcStats matches 0 run function glarth:combat/action_enemy/util/next_stage
