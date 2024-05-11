execute if score spawnCounter tbcStats matches 0 run function glarth:combat/entity/evil_mushroom
execute if score spawnCounter tbcStats matches 1 run function glarth:combat/entity/evil_quad
execute if score spawnCounter tbcStats matches 2 run function glarth:combat/entity/evil_king
scoreboard players add spawnCounter tbcStats 1
scoreboard players operation spawnCounter tbcStats %= 3 Const