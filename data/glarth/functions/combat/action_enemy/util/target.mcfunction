execute if score @s playerid matches 1 run function glarth:combat/action_enemy/util/target1
execute if score @s playerid matches 2 run function glarth:combat/action_enemy/util/target2
execute if score @s playerid matches 3 run function glarth:combat/action_enemy/util/target3

execute if entity @s[tag=tbcPlayerAS1] run function glarth:combat/action_enemy/util/target1
execute if entity @s[tag=tbcPlayerAS2] run function glarth:combat/action_enemy/util/target2
execute if entity @s[tag=tbcPlayerAS3] run function glarth:combat/action_enemy/util/target3

execute if entity @s[type=armor_stand,tag=!tbcPlayerAS] unless score @s playerid matches 1..3 run function glarth:combat/action_enemy/util/targeta