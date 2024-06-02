execute if score @s tbcAttackStage matches 0 run function glarth:combat/action_enemy/stages/generic/to_center {speed:0.2,next_range:0.3}

# spear down & set temp marker
execute if score @s tbcAttackStage matches 1 run scoreboard players add @s tbcAttackTimer 1
execute if score @s tbcAttackStage matches 1 if score @s tbcAttackTimer matches 1 run item replace entity @s armor.head with minecraft:diamond_hoe[custom_model_data=43]
execute if score @s tbcAttackStage matches 1 if score @s tbcAttackTimer matches 1 as @e[tag=tbcTargetAS,type=armor_stand] at @s positioned ^-1 ^ ^ run summon minecraft:area_effect_cloud ~ ~ ~ {Radius:0.0f,Duration:2147483647,Tags:["tbcTempMarker","tbc"]}

execute if score @s tbcAttackStage matches 1 run function glarth:combat/action_enemy/stages/generic/to_temp {speed:0.2,next_range:2.3}

# swipe attack, unequip spear & delete temp marker
execute if score @s tbcAttackStage matches 2 run function glarth:combat/action_enemy/stages/swipe/attack_customizable {speed:0.07,block_end:8,post_block:9,next_stage:15,particle:"swipe",function:"effects/double"}
execute if score @s tbcAttackStage matches 2 if score @s tbcAttackTimer matches 14 run item replace entity @s armor.head with minecraft:diamond_hoe[damage=39]
execute if score @s tbcAttackStage matches 2 if score @s tbcAttackTimer matches 14 run kill @e[tag=tbcTempMarker,type=area_effect_cloud]

execute if score @s tbcAttackStage matches 3 run function glarth:combat/action_enemy/stages/generic/to_center {speed:0.2,next_range:0.2}

execute if score @s tbcAttackStage matches 4 run function glarth:combat/action_enemy/stages/generic/done/to_home {speed:0.2,next_range:0.2}