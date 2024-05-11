execute if score rotationX tbcWhip matches ..0 run scoreboard players set rotationXX tbcWhip 0
execute if score rotationX tbcWhip matches 1.. run scoreboard players set rotationXX tbcWhip 1
execute if score rotationX tbcWhip matches 5.. run scoreboard players set rotationXX tbcWhip 5
execute if score rotationX tbcWhip matches 10.. run scoreboard players set rotationXX tbcWhip 10
execute if score rotationX tbcWhip matches 20.. run scoreboard players set rotationXX tbcWhip 20
execute if score rotationX tbcWhip matches 30.. run scoreboard players set rotationXX tbcWhip 30

scoreboard players operation rotationX tbcWhip -= rotationXX tbcWhip

execute if score rotationXX tbcWhip matches 0 positioned ^ ^ ^0.2 run function glarth:combat/action_enemy/helper/whip_crit


execute if score rotationXX tbcWhip matches 1 if score dir tbcWhip matches -4 rotated ~0.001 ~ run function glarth:combat/action_enemy/helper/whip_crit_rot
execute if score rotationXX tbcWhip matches 1 if score dir tbcWhip matches -3 rotated ~0.003 ~ run function glarth:combat/action_enemy/helper/whip_crit_rot
execute if score rotationXX tbcWhip matches 1 if score dir tbcWhip matches -2 rotated ~0.006 ~ run function glarth:combat/action_enemy/helper/whip_crit_rot
execute if score rotationXX tbcWhip matches 1 if score dir tbcWhip matches -1 rotated ~0.012 ~ run function glarth:combat/action_enemy/helper/whip_crit_rot
execute if score rotationXX tbcWhip matches 1 if score dir tbcWhip matches 0 rotated ~ ~ run function glarth:combat/action_enemy/helper/whip_crit_rot
execute if score rotationXX tbcWhip matches 1 if score dir tbcWhip matches 1 rotated ~-0.012 ~ run function glarth:combat/action_enemy/helper/whip_crit_rot
execute if score rotationXX tbcWhip matches 1 if score dir tbcWhip matches 2 rotated ~-0.006 ~ run function glarth:combat/action_enemy/helper/whip_crit_rot
execute if score rotationXX tbcWhip matches 1 if score dir tbcWhip matches 3 rotated ~-0.003 ~ run function glarth:combat/action_enemy/helper/whip_crit_rot
execute if score rotationXX tbcWhip matches 1 if score dir tbcWhip matches 4 rotated ~-0.001 ~ run function glarth:combat/action_enemy/helper/whip_crit_rot

execute if score rotationXX tbcWhip matches 5 if score dir tbcWhip matches -4 rotated ~0.005 ~ run function glarth:combat/action_enemy/helper/whip_crit_rot
execute if score rotationXX tbcWhip matches 5 if score dir tbcWhip matches -3 rotated ~0.015 ~ run function glarth:combat/action_enemy/helper/whip_crit_rot
execute if score rotationXX tbcWhip matches 5 if score dir tbcWhip matches -2 rotated ~0.030 ~ run function glarth:combat/action_enemy/helper/whip_crit_rot
execute if score rotationXX tbcWhip matches 5 if score dir tbcWhip matches -1 rotated ~0.060 ~ run function glarth:combat/action_enemy/helper/whip_crit_rot
execute if score rotationXX tbcWhip matches 5 if score dir tbcWhip matches 0 rotated ~ ~ run function glarth:combat/action_enemy/helper/whip_crit_rot
execute if score rotationXX tbcWhip matches 5 if score dir tbcWhip matches 1 rotated ~-0.060 ~ run function glarth:combat/action_enemy/helper/whip_crit_rot
execute if score rotationXX tbcWhip matches 5 if score dir tbcWhip matches 2 rotated ~-0.030 ~ run function glarth:combat/action_enemy/helper/whip_crit_rot
execute if score rotationXX tbcWhip matches 5 if score dir tbcWhip matches 3 rotated ~-0.015 ~ run function glarth:combat/action_enemy/helper/whip_crit_rot
execute if score rotationXX tbcWhip matches 5 if score dir tbcWhip matches 4 rotated ~-0.005 ~ run function glarth:combat/action_enemy/helper/whip_crit_rot

execute if score rotationXX tbcWhip matches 10 if score dir tbcWhip matches -4 rotated ~0.01 ~ run function glarth:combat/action_enemy/helper/whip_crit_rot
execute if score rotationXX tbcWhip matches 10 if score dir tbcWhip matches -3 rotated ~0.03 ~ run function glarth:combat/action_enemy/helper/whip_crit_rot
execute if score rotationXX tbcWhip matches 10 if score dir tbcWhip matches -2 rotated ~0.06 ~ run function glarth:combat/action_enemy/helper/whip_crit_rot
execute if score rotationXX tbcWhip matches 10 if score dir tbcWhip matches -1 rotated ~0.12 ~ run function glarth:combat/action_enemy/helper/whip_crit_rot
execute if score rotationXX tbcWhip matches 10 if score dir tbcWhip matches 0 rotated ~ ~ run function glarth:combat/action_enemy/helper/whip_crit_rot
execute if score rotationXX tbcWhip matches 10 if score dir tbcWhip matches 1 rotated ~-0.12 ~ run function glarth:combat/action_enemy/helper/whip_crit_rot
execute if score rotationXX tbcWhip matches 10 if score dir tbcWhip matches 2 rotated ~-0.06 ~ run function glarth:combat/action_enemy/helper/whip_crit_rot
execute if score rotationXX tbcWhip matches 10 if score dir tbcWhip matches 3 rotated ~-0.03 ~ run function glarth:combat/action_enemy/helper/whip_crit_rot
execute if score rotationXX tbcWhip matches 10 if score dir tbcWhip matches 4 rotated ~-0.01 ~ run function glarth:combat/action_enemy/helper/whip_crit_rot

execute if score rotationXX tbcWhip matches 20 if score dir tbcWhip matches -4 rotated ~0.02 ~ run function glarth:combat/action_enemy/helper/whip_crit_rot
execute if score rotationXX tbcWhip matches 20 if score dir tbcWhip matches -3 rotated ~0.06 ~ run function glarth:combat/action_enemy/helper/whip_crit_rot
execute if score rotationXX tbcWhip matches 20 if score dir tbcWhip matches -2 rotated ~0.12 ~ run function glarth:combat/action_enemy/helper/whip_crit_rot
execute if score rotationXX tbcWhip matches 20 if score dir tbcWhip matches -1 rotated ~0.24 ~ run function glarth:combat/action_enemy/helper/whip_crit_rot
execute if score rotationXX tbcWhip matches 20 if score dir tbcWhip matches 0 rotated ~ ~ run function glarth:combat/action_enemy/helper/whip_crit_rot
execute if score rotationXX tbcWhip matches 20 if score dir tbcWhip matches 1 rotated ~-0.24 ~ run function glarth:combat/action_enemy/helper/whip_crit_rot
execute if score rotationXX tbcWhip matches 20 if score dir tbcWhip matches 2 rotated ~-0.12 ~ run function glarth:combat/action_enemy/helper/whip_crit_rot
execute if score rotationXX tbcWhip matches 20 if score dir tbcWhip matches 3 rotated ~-0.06 ~ run function glarth:combat/action_enemy/helper/whip_crit_rot
execute if score rotationXX tbcWhip matches 20 if score dir tbcWhip matches 4 rotated ~-0.02 ~ run function glarth:combat/action_enemy/helper/whip_crit_rot

execute if score rotationXX tbcWhip matches 30 if score dir tbcWhip matches -4 rotated ~0.03 ~ run function glarth:combat/action_enemy/helper/whip_crit_rot
execute if score rotationXX tbcWhip matches 30 if score dir tbcWhip matches -3 rotated ~0.09 ~ run function glarth:combat/action_enemy/helper/whip_crit_rot
execute if score rotationXX tbcWhip matches 30 if score dir tbcWhip matches -2 rotated ~0.18 ~ run function glarth:combat/action_enemy/helper/whip_crit_rot
execute if score rotationXX tbcWhip matches 30 if score dir tbcWhip matches -1 rotated ~0.36 ~ run function glarth:combat/action_enemy/helper/whip_crit_rot
execute if score rotationXX tbcWhip matches 30 if score dir tbcWhip matches 0 rotated ~ ~ run function glarth:combat/action_enemy/helper/whip_crit_rot
execute if score rotationXX tbcWhip matches 30 if score dir tbcWhip matches 1 rotated ~-0.36 ~ run function glarth:combat/action_enemy/helper/whip_crit_rot
execute if score rotationXX tbcWhip matches 30 if score dir tbcWhip matches 2 rotated ~-0.18 ~ run function glarth:combat/action_enemy/helper/whip_crit_rot
execute if score rotationXX tbcWhip matches 30 if score dir tbcWhip matches 3 rotated ~-0.09 ~ run function glarth:combat/action_enemy/helper/whip_crit_rot
execute if score rotationXX tbcWhip matches 30 if score dir tbcWhip matches 4 rotated ~-0.03 ~ run function glarth:combat/action_enemy/helper/whip_crit_rot

scoreboard players set rotationXX tbcWhip -1