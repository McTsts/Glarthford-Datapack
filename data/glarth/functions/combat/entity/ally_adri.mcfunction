function glarth:combat/entity/extends/ally_evil_ts
#Overwrite
data merge entity @s {ArmorItems:[{id:"stone",Count:1,tag:{CustomName:'{"translate":"adri","color":"red"}',NoColor:'{"translate":"adri"}'}},{},{},{id:"diamond_hoe",Count:1,tag:{CustomModelData:256}}],CustomNameVisible:1,CustomName:'{"translate":"adri","color":"red"}'}

scoreboard players set @s attack_024 1
scoreboard players set @s attack_026 1

#Spawn
tag @s add tbcAllyAdri
function glarth:combat/spawn