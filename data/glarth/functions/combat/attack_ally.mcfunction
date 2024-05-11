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
scoreboard players operation weight tbcAttack -= @s attack_021
execute if score weight tbcAttack matches ..0 run function glarth:combat/action_ally/021_init
scoreboard players operation weight tbcAttack -= @s attack_022
execute if score weight tbcAttack matches ..0 run function glarth:combat/action_ally/022_init
scoreboard players operation weight tbcAttack -= @s attack_023
execute if score weight tbcAttack matches ..0 run function glarth:combat/action_ally/023_init
scoreboard players operation weight tbcAttack -= @s attack_024
execute if score weight tbcAttack matches ..0 run function glarth:combat/action_ally/024_init
scoreboard players operation weight tbcAttack -= @s attack_025
execute if score weight tbcAttack matches ..0 run function glarth:combat/action_ally/025_init
scoreboard players operation weight tbcAttack -= @s attack_026
execute if score weight tbcAttack matches ..0 run function glarth:combat/action_ally/026_init
scoreboard players operation weight tbcAttack -= @s attack_027
execute if score weight tbcAttack matches ..0 run function glarth:combat/action_ally/027_init
scoreboard players operation weight tbcAttack -= @s attack_028
execute if score weight tbcAttack matches ..0 run function glarth:combat/action_ally/028_init
scoreboard players operation weight tbcAttack -= @s attack_029
execute if score weight tbcAttack matches ..0 run function glarth:combat/action_ally/029_init
scoreboard players operation weight tbcAttack -= @s attack_030
execute if score weight tbcAttack matches ..0 run function glarth:combat/action_ally/030_init

execute if score @s tbcAttack matches -1 run tellraw @a [{"text":"ERROR: Attack system has failed. Attempting to proceed. (weight: ","color":"red"},{"score":{"name":"weight","objective":"tbcAttack"}},{"text":")"}]
execute if score @s tbcAttack matches -1 run function glarth:combat/action_enemy/006_init