function glarth:combat/entity/extends/ally_evil_ts
#Overwrite
data merge entity @s {ArmorItems:[{id:"stone",count:1,components:{"minecraft:custom_data":{CustomName:'{"translate":"adri","color":"red"}',NoColor:'{"translate":"adri"}'}}},{},{},{id:"diamond_hoe",count:1,components:{"minecraft:custom_model_data":256}}],CustomNameVisible:1,CustomName:'{"translate":"adri","color":"red"}'}

scoreboard players set @s attack_024 1
scoreboard players set @s attack_026 1

#Spawn
tag @s add tbcAllyAdri
function glarth:combat/spawn