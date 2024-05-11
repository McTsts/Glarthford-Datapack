#Call Parents
function glarth:combat/entity/extends/block
function glarth:combat/entity/implements/tall
function glarth:combat/entity/implements/type/default
function glarth:combat/entity/implements/no_anim
#Overwrite
data merge entity @s {ArmorItems:[{id:"stone",Count:1,tag:{CustomName:'{"translate":"tbc.short_name.enemy.golem.iron","color":"white"}'}},{},{},{id:"diamond_hoe",Count:1,tag:{CustomModelData:374}}],CustomNameVisible:1,CustomName:"{\"translate\":\"tbc.enemy.golem.iron\",\"color\":\"white\"}"}

tag @s add death_014
tag @s add stage_023

#Spawn
tag @s add tbcStrIronGolem
function glarth:combat/spawn