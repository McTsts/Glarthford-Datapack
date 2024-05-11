#Call Parents
function glarth:combat/entity/extends/enemy
function glarth:combat/entity/implements/type/default
function glarth:combat/entity/implements/lonely
function glarth:combat/entity/implements/irrelevant
#Overwrite
data merge entity @s {ArmorItems:[{id:"stone",count:1,components:{"minecraft:custom_data":{CustomName:'{"translate":"tbc.short_name.enemy.squid","color":"blue"}'}}},{},{},{id:"diamond_hoe",count:1,components:{"minecraft:custom_model_data":156}}],CustomNameVisible:1,CustomName:'{"translate":"tbc.enemy.squid","color":"blue"}'}
scoreboard players set @s attack_019 1
scoreboard players set @s attack_057 2
scoreboard players operation @s tbcHealth /= 3 Const
scoreboard players add @s tbcDodge 30
scoreboard players add @s tbcArmor 10
#Spawn
tag @s add tbcSquid
function glarth:combat/spawn