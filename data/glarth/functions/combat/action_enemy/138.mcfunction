execute if score @s tbcAttackStage matches 0 run scoreboard players add @s tbcAttackTimer 1
execute if score @s tbcAttackStage matches 0 if score @s tbcAttackTimer matches 25 at @s run playsound minecraft:entity.illusioner.prepare_blindness hostile @a ~ ~ ~ 2 0.7
execute if score @s tbcAttackStage matches 0 if score @s tbcAttackTimer matches 25 run scoreboard players set @e[tag=tbcTarget,limit=1] tbcPumpkin 2
execute if score @s tbcAttackStage matches 0 if score @s tbcAttackTimer matches 25 run item replace entity @a[tag=tbcTarget] armor.head with minecraft:carved_pumpkin[custom_name='""',enchantments={levels:{binding_curse:1},show_in_tooltip:0b},custom_model_data=1,hide_additional_tooltip={}]
execute if score @s tbcAttackStage matches 0 if score @s tbcAttackTimer matches 25 as @e[tag=tbcTargetAS] at @s run data merge entity @e[tag=charQ5,limit=1,sort=nearest] {ArmorItems:[{},{},{},{id:"carved_pumpkin",count:1,components:{"minecraft:custom_model_data":2}}]}
execute if score @s tbcAttackStage matches 0 if score @s tbcAttackTimer matches 25 run data merge entity @s {ArmorItems:[{id:"stone",count:1,components:{"minecraft:custom_data":{CustomName:'{"translate":"tbc.short_name.enemy.zombie.default","color":"dark_green"}'}}},{},{},{id:"diamond_hoe",count:1,components:{"minecraft:custom_model_data":368}}],CustomNameVisible:1,CustomName:'{"translate":"tbc.enemy.zombie.default","color":"dark_green"}'}
execute if score @s tbcAttackStage matches 0 if score @s tbcAttackTimer matches 25 run scoreboard players set @s attack_001 1
execute if score @s tbcAttackStage matches 0 if score @s tbcAttackTimer matches 25 run scoreboard players set @s attack_002 1
execute if score @s tbcAttackStage matches 0 if score @s tbcAttackTimer matches 25 run scoreboard players set @s attack_003 1
execute if score @s tbcAttackStage matches 0 if score @s tbcAttackTimer matches 25 run scoreboard players set @s attack_006 1
execute if score @s tbcAttackStage matches 0 if score @s tbcAttackTimer matches 25 run scoreboard players set @s attack_012 1
execute if score @s tbcAttackStage matches 0 if score @s tbcAttackTimer matches 25 run scoreboard players set @s attack_138 0
execute if score @s tbcAttackStage matches 0 if score @s tbcAttackTimer matches 25 run tag @s remove stage_019
execute if score @s tbcAttackStage matches 0 if score @s tbcAttackTimer matches 50 run function glarth:combat/action_enemy/util/done
