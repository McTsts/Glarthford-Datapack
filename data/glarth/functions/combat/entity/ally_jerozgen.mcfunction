function glarth:combat/entity/extends/ally_evil_ts
#Overwrite
data merge entity @s {ArmorItems:[{id:"stone",Count:1,tag:{CustomName:'{"translate":"jerozgen","color":"gold"}',NoColor:'{"translate":"jerozgen"}'}},{},{},{id:"diamond_hoe",Count:1,tag:{CustomModelData:525}}],CustomNameVisible:1,CustomName:'{"translate":"jerozgen","color":"gold"}'}

scoreboard players set @s attack_027 2
scoreboard players set @s attack_028 2
scoreboard players set @s attack_029 1
#Spawn
tag @s add tbcAllyJerozgen
function glarth:combat/spawn