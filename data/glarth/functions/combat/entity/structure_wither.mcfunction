#Call Parents
function glarth:combat/entity/extends/block
function glarth:combat/entity/implements/tall
function glarth:combat/entity/implements/type/fire
function glarth:combat/entity/implements/no_anim
#Overwrite
data merge entity @s {ArmorItems:[{id:"stone",count:1,components:{"minecraft:custom_data":{CustomName:'{"translate":"tbc.short_name.enemy.golem.wither","color":"dark_gray"}'}}},{},{},{id:"diamond_hoe",count:1,components:{"minecraft:custom_model_data":491}}],CustomNameVisible:1,CustomName:'{"translate":"tbc.enemy.golem.wither","color":"dark_gray"}'}

tag @s add death_024
tag @s add stage_054

tag @s add tbcShovelBlock

#Spawn
tag @s add tbcStrWither
function glarth:combat/spawn