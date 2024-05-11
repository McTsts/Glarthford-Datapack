#Call Parents
function glarth:combat/entity/extends/dummy
function glarth:combat/entity/implements/type/illusion
function glarth:combat/entity/implements/no_health
function glarth:combat/entity/implements/no_anim
#Overwrite
data merge entity @s {ArmorItems:[{id:"stone",count:1,components:{"minecraft:custom_data":{CustomName:'{"translate":"tbc.short_name.enemy.illager.illusioner","color":"yellow"}'}}},{},{},{id:"diamond_hoe",count:1,components:{"minecraft:custom_model_data":279}}],CustomNameVisible:1,CustomName:'{"translate":"tbc.enemy.illager.illusioner","color":"yellow"}'}
#Spawn
tag @s add tbcIllusionerYellowFake
tag @s add tbcIllager
function glarth:combat/spawn