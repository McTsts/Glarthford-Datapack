execute if score @s tbcAttackStage matches 0 run scoreboard players add @s tbcAttackTimer 1
execute if score @s tbcAttackStage matches 0 if score @s tbcAttackTimer matches 1 run scoreboard players set @s attack_018 0
execute if score @s tbcAttackStage matches 0 if score @s tbcAttackTimer matches 1 run scoreboard players set tbcUnlocked Stats 3
execute if score @s tbcAttackStage matches 0 if score @s tbcAttackTimer matches 1 run tellraw @a ""
execute if score @s tbcAttackStage matches 0 if score @s tbcAttackTimer matches 1 run function glarth:dialogue/illusioner_s/lines/tbc7
execute if score @s tbcAttackStage matches 0 if score @s tbcAttackTimer matches 1 run tellraw @a ""
execute if score @s tbcAttackStage matches 0 if score @s tbcAttackTimer matches 60 as @e[tag=tbcEnemy4,type=armor_stand] at @s run kill @e[distance=..2,type=armor_stand,tag=!tbcSelector]
execute if score @s tbcAttackStage matches 0 if score @s tbcAttackTimer matches 90 run effect give @a[tag=inTBC,gamemode=adventure] blindness 2 0 true
execute if score @s tbcAttackStage matches 0 if score @s tbcAttackTimer matches 100 run function glarth:combat/init_tbc/enemy1
execute if score @s tbcAttackStage matches 0 if score @s tbcAttackTimer matches 100 as @e[tag=tbcEnemy1,type=armor_stand] run function glarth:combat/entity/illusioner_yellow
execute if score @s tbcAttackStage matches 0 if score @s tbcAttackTimer matches 100 as @e[tag=tbcEnemy1,type=armor_stand] run function glarth:combat/set_loc
execute if score @s tbcAttackStage matches 0 if score @s tbcAttackTimer matches 100 run scoreboard players set @e[tag=tbcEnemy1] tbcSel 1
execute if score @s tbcAttackStage matches 0 if score @s tbcAttackTimer matches 100 run kill @e[distance=..2,tag=!tbcSelector,type=armor_stand]