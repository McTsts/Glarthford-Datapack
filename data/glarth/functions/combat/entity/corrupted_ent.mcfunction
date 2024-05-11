#Call Parents
function glarth:combat/entity/extends/enemy
function glarth:combat/entity/implements/type/earth
function glarth:combat/entity/implements/irrelevant
function glarth:combat/entity/implements/lonely
#Overwrite
data merge entity @s {ArmorItems:[{id:"stone",count:1,components:{"minecraft:custom_data":{CustomName:'{"translate":"tbc.short_name.enemy.corrupted_ent","color":"dark_green"}'}}},{},{},{id:"diamond_hoe",count:1,components:{"minecraft:custom_model_data":202}}],CustomNameVisible:1,CustomName:'{"translate":"tbc.enemy.corrupted_ent","color":"dark_green"}'}
scoreboard players set @s attack_061 1
scoreboard players set @s attack_068 2
scoreboard players set @s attack_057 3
scoreboard players set @s attack_084 3
scoreboard players operation @s tbcHealth /= 2 Const
scoreboard players add @s tbcDodge 0
scoreboard players add @s tbcArmor 50
scoreboard players remove @s tbcStrength 10

#Spawn
tag @s add tbcCorruptedEnt
function glarth:combat/spawn