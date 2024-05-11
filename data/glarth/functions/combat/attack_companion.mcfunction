function glarth:combat/get_weight

scoreboard players operation weight tbcAttack -= @s attack_001
execute if score weight tbcAttack matches ..0 run function glarth:combat/action_companion/001_init
scoreboard players operation weight tbcAttack -= @s attack_002
execute if score weight tbcAttack matches ..0 run function glarth:combat/action_companion/002_init
scoreboard players operation weight tbcAttack -= @s attack_003
execute if score weight tbcAttack matches ..0 run function glarth:combat/action_companion/003_init
scoreboard players operation weight tbcAttack -= @s attack_004
execute if score weight tbcAttack matches ..0 run function glarth:combat/action_companion/004_init
scoreboard players operation weight tbcAttack -= @s attack_005
execute if score weight tbcAttack matches ..0 run function glarth:combat/action_companion/005_init
scoreboard players operation weight tbcAttack -= @s attack_006
execute if score weight tbcAttack matches ..0 run function glarth:combat/action_companion/006_init
scoreboard players operation weight tbcAttack -= @s attack_007
execute if score weight tbcAttack matches ..0 run function glarth:combat/action_companion/007_init
scoreboard players operation weight tbcAttack -= @s attack_008
execute if score weight tbcAttack matches ..0 run function glarth:combat/action_companion/008_init
scoreboard players operation weight tbcAttack -= @s attack_009
execute if score weight tbcAttack matches ..0 run function glarth:combat/action_companion/009_init
scoreboard players operation weight tbcAttack -= @s attack_010
execute if score weight tbcAttack matches ..0 run function glarth:combat/action_companion/010_init
scoreboard players operation weight tbcAttack -= @s attack_011
execute if score weight tbcAttack matches ..0 run function glarth:combat/action_companion/011_init

execute if score @s tbcAttack matches -1 run tellraw @a [{"text":"ERROR: Attack system has failed. Attempting to proceed. (weight: ","color":"red"},{"score":{"name":"weight","objective":"tbcAttack"}},{"text":")"}]
execute if score @s tbcAttack matches -1 run function glarth:combat/action_enemy/001_init