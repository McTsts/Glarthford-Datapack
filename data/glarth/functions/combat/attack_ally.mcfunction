function glarth:combat/get_weight

scoreboard players operation weight tbcAttack -= @s attack_001
execute if score weight tbcAttack matches ..0 run function glarth:combat/action_ally/001_init
scoreboard players operation weight tbcAttack -= @s attack_002
execute if score weight tbcAttack matches ..0 run function glarth:combat/action_ally/002_init
scoreboard players operation weight tbcAttack -= @s attack_003
execute if score weight tbcAttack matches ..0 run function glarth:combat/action_ally/003_init
scoreboard players operation weight tbcAttack -= @s attack_004
execute if score weight tbcAttack matches ..0 run function glarth:combat/action_ally/004_init
scoreboard players operation weight tbcAttack -= @s attack_005
execute if score weight tbcAttack matches ..0 run function glarth:combat/action_ally/005_init
scoreboard players operation weight tbcAttack -= @s attack_006
execute if score weight tbcAttack matches ..0 run function glarth:combat/action_ally/006_init
scoreboard players operation weight tbcAttack -= @s attack_007
execute if score weight tbcAttack matches ..0 run function glarth:combat/action_ally/007_init
scoreboard players operation weight tbcAttack -= @s attack_008
execute if score weight tbcAttack matches ..0 run function glarth:combat/action_ally/008_init
scoreboard players operation weight tbcAttack -= @s attack_009
execute if score weight tbcAttack matches ..0 run function glarth:combat/action_ally/009_init
scoreboard players operation weight tbcAttack -= @s attack_010
execute if score weight tbcAttack matches ..0 run function glarth:combat/action_ally/010_init
scoreboard players operation weight tbcAttack -= @s attack_011
execute if score weight tbcAttack matches ..0 run function glarth:combat/action_ally/011_init
scoreboard players operation weight tbcAttack -= @s attack_012
execute if score weight tbcAttack matches ..0 run function glarth:combat/action_ally/012_init
scoreboard players operation weight tbcAttack -= @s attack_013
execute if score weight tbcAttack matches ..0 run function glarth:combat/action_ally/013_init
scoreboard players operation weight tbcAttack -= @s attack_014
execute if score weight tbcAttack matches ..0 run function glarth:combat/action_ally/014_init
scoreboard players operation weight tbcAttack -= @s attack_015
execute if score weight tbcAttack matches ..0 run function glarth:combat/action_ally/015_init
scoreboard players operation weight tbcAttack -= @s attack_016
execute if score weight tbcAttack matches ..0 run function glarth:combat/action_ally/016_init
scoreboard players operation weight tbcAttack -= @s attack_017
execute if score weight tbcAttack matches ..0 run function glarth:combat/action_ally/017_init
scoreboard players operation weight tbcAttack -= @s attack_018
execute if score weight tbcAttack matches ..0 run function glarth:combat/action_ally/018_init
scoreboard players operation weight tbcAttack -= @s attack_019
execute if score weight tbcAttack matches ..0 run function glarth:combat/action_ally/019_init
scoreboard players operation weight tbcAttack -= @s attack_020
execute if score weight tbcAttack matches ..0 run function glarth:combat/action_ally/020_init

execute if score @s tbcAttack matches -1 run tellraw @a [{"text":"ERROR: Attack system has failed. Attempting to proceed. (weight: ","color":"red"},{"score":{"name":"weight","objective":"tbcAttack"}},{"text":")"}]
execute if score @s tbcAttack matches -1 run function glarth:combat/action_enemy/006_init