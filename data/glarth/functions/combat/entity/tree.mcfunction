#Call Parents
function glarth:combat/entity/extends/dummy
function glarth:combat/entity/implements/immortal
#Overwrite
data merge entity @s {ArmorItems:[{id:"stone",count:1,components:{"minecraft:custom_data":{CustomName:'{"translate":"tbc.short_name.enemy.tree","color":"white"}'}}}],CustomNameVisible:1,CustomName:'{"translate":"tbc.enemy.tree","color":"white"}'}
#Spawn
tag @s add tbcTree
function glarth:combat/spawn