#Call Parents
function glarth:combat/entity/extends/illager
function glarth:combat/entity/implements/type/illusion
#Overwrite
data merge entity @s {ArmorItems:[{id:"stone",count:1,components:{"minecraft:custom_data":{CustomName:'{"translate":"tbc.short_name.enemy.illager.illusioner","color":"blue"}'}}},{},{},{id:"diamond_hoe",count:1,components:{"minecraft:custom_model_data":266}}],CustomNameVisible:1,CustomName:'{"translate":"tbc.enemy.illager.illusioner","color":"blue"}'}


scoreboard players set @s attack_019 1

#Spawn
tag @s add tbcIllusioner
function glarth:combat/spawn