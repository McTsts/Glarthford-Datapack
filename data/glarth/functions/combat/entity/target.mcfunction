#Call Parents
function glarth:combat/entity/extends/dummy
function glarth:combat/entity/implements/immortal
#Overwrite
data merge entity @s {ArmorItems:[{id:"stone",count:1,components:{"minecraft:custom_data":{CustomName:'{"translate":"tbc.short_name.enemy.target","color":"white"}'}}}],CustomNameVisible:1,CustomName:'{"translate":"tbc.enemy.target","color":"white"}'}
#Spawn
tag @s add tbcTarget
function glarth:combat/spawn