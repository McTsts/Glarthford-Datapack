function glarth:combat/entity/extends/ally_evil_ts
#Overwrite
data merge entity @s {ArmorItems:[{id:"stone",Count:1,tag:{CustomName:'{"translate":"suso","color":"blue"}',NoColor:'{"translate":"suso"}'}},{},{},{id:"diamond_hoe",Count:1,tag:{CustomModelData:360}}],CustomNameVisible:1,CustomName:'{"translate":"suso","color":"blue"}'}

scoreboard players set @s attack_022 3
scoreboard players set @s attack_023 1
scoreboard players set @s attack_029 1

#Spawn
tag @s add tbcAllySuso
function glarth:combat/spawn