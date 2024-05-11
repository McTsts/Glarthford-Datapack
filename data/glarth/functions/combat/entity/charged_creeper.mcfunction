#Call Parents
function glarth:combat/entity/extends/creeper
function glarth:combat/entity/implements/type/thunder
#Overwrite
data merge entity @s {ArmorItems:[{id:"stone",count:1,components:{"minecraft:custom_data":{CustomName:'{"translate":"tbc.short_name.enemy.creeper.charged","color":"aqua"}'}}},{},{},{id:"diamond_hoe",count:1,components:{"minecraft:custom_model_data":47}}],CustomNameVisible:1,CustomName:'{"translate":"tbc.enemy.creeper.charged","color":"aqua"}'}

scoreboard players operation @s tbcHealth *= 2 Const
scoreboard players add @s tbcStrength 15
scoreboard players add @s tbcDodge 10
function glarth:combat/entity/implements/nerf/4
#Spawn
tag @s add tbcChargedCreeper
function glarth:combat/spawn