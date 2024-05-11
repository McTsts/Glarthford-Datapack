function glarth:combat/entity/extends/ally_evil_ts
#Overwrite
data merge entity @s {ArmorItems:[{id:"stone",count:1,components:{"minecraft:custom_data":{CustomName:'{"translate":"gibbs","color":"gray"}',NoColor:'{"translate":"gibbs"}'}}},{},{},{id:"diamond_hoe",count:1,components:{"minecraft:custom_model_data":348}}],CustomNameVisible:1,CustomName:'{"translate":"gibbs","color":"gray"}'}

scoreboard players set @s attack_021 1
scoreboard players set @s attack_025 1

scoreboard players add @s tbcHealth 5

#Spawn
tag @s add tbcAllyGibbs
function glarth:combat/spawn