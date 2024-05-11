#Call Parents
function glarth:combat/entity/extends/piglin
#Overwrite
data merge entity @s {ArmorItems:[{id:"stone",count:1,components:{"minecraft:custom_data":{CustomName:'{"translate":"tbc.short_name.enemy.piglin.architect","color":"light_purple"}'}}},{},{},{id:"diamond_hoe",count:1,components:{"minecraft:custom_model_data":486}}],CustomNameVisible:1,CustomName:'{"translate":"tbc.enemy.piglin.architect","color":"light_purple"}'}
scoreboard players set @s attack_209 12
#Spawn
tag @s add tbcPiglinArchitect
function glarth:combat/spawn