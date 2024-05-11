function glarth:combat/entity/extends/ally_evil_ts
#Overwrite
data merge entity @s {ArmorItems:[{id:"stone",count:1,components:{"minecraft:custom_data":{CustomName:'{"translate":"suso","color":"blue"}',NoColor:'{"translate":"suso"}'}}},{},{},{id:"diamond_hoe",count:1,components:{"minecraft:custom_model_data":360}}],CustomNameVisible:1,CustomName:'{"translate":"suso","color":"blue"}'}

scoreboard players set @s attack_022 3
scoreboard players set @s attack_023 1
scoreboard players set @s attack_029 1

#Spawn
tag @s add tbcAllySuso
function glarth:combat/spawn