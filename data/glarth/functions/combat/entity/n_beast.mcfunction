function glarth:combat/entity/extends/enemy
function glarth:combat/entity/implements/immortal
function glarth:combat/entity/implements/very_tall
function glarth:combat/entity/implements/type/unholy
#Overwrite
data merge entity @s {ArmorItems:[{id:"stone",count:1,components:{"minecraft:custom_data":{CustomName:'{"translate":"tbc.short_name.enemy.necromancer.beast","color":"dark_green"}'}}},{},{},{id:"diamond_hoe",count:1,components:{"minecraft:custom_model_data":251}}],CustomNameVisible:0,CustomName:'{"translate":"tbc.enemy.necromancer.beast","color":"dark_green"}'}
scoreboard players set @s attack_088 2
scoreboard players set @s attack_090 1
scoreboard players set @s attack_091 1

scoreboard players add @s tbcStrength 25

scoreboard players add @s tbcQueue 1000

tag @s add stage_075
# Spawn
tag @s add tbcNecroBeast
function glarth:combat/spawn