#Call Parents
function glarth:combat/entity/extends/dummy
function glarth:combat/entity/implements/type/illusion
function glarth:combat/entity/implements/no_health
function glarth:combat/entity/implements/no_anim
#Overwrite
data merge entity @s {ArmorItems:[{id:"stone",count:1,components:{"minecraft:custom_data":{CustomName:'{"translate":"tbc.short_name.enemy.illager.bannerman.illusioner","color":"blue"}'}}},{},{},{id:"diamond_hoe",count:1,components:{"minecraft:custom_model_data":285}}],CustomNameVisible:1,CustomName:'{"translate":"tbc.enemy.illager.bannerman.illusioner","color":"blue"}'}
#Spawn
tag @s add tbcIllusionerFake
tag @s add tbcIllager
function glarth:combat/spawn