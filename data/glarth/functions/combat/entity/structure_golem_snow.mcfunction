#Call Parents
function glarth:combat/entity/extends/block
function glarth:combat/entity/implements/tall
function glarth:combat/entity/implements/type/default
function glarth:combat/entity/implements/no_anim
#Overwrite
data merge entity @s {ArmorItems:[{id:"stone",count:1,components:{"minecraft:custom_data":{CustomName:'{"translate":"tbc.short_name.enemy.golem.snow","color":"white"}'}}},{},{},{id:"diamond_hoe",count:1,components:{"minecraft:custom_model_data":370}}],CustomNameVisible:1,CustomName:'{"translate":"tbc.enemy.golem.snow","color":"white"}'}

tag @s add death_011
tag @s add stage_021

tag @s add tbcShovelBlock

#Spawn
tag @s add tbcStrSnowGolem
function glarth:combat/spawn