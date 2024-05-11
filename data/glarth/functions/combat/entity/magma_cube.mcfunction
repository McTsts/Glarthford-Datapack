#Call Parents
function glarth:combat/entity/extends/enemy
function glarth:combat/entity/implements/type/fire
#Overwrite
data merge entity @s {ArmorItems:[{id:"stone",count:1,components:{"minecraft:custom_data":{CustomName:'{"translate":"tbc.short_name.enemy.magma_cube","color":"red"}'}}},{},{},{id:"diamond_hoe",count:1,components:{"minecraft:custom_model_data":144}}],CustomNameVisible:1,CustomName:'{"translate":"tbc.enemy.magma_cube","color":"red"}'}

scoreboard players set @s attack_014 1
scoreboard players set @s attack_043 1
scoreboard players set @s attack_056 1
#Spawn
tag @s add tbcMagmaCube
function glarth:combat/spawn