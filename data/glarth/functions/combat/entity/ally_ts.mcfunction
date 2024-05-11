function glarth:combat/entity/extends/ally_evil_ts
#Overwrite
data merge entity @s {ArmorItems:[{id:"stone",count:1,components:{"minecraft:custom_data":{CustomName:'{"translate":"mctsts","color":"green"}',NoColor:'{"translate":"mctsts"}'}}},{},{},{id:"diamond_hoe",count:1,components:{"minecraft:damage":1}}],CustomNameVisible:1,CustomName:'{"translate":"mctsts","color":"green"}'}

scoreboard players set @s attack_030 3
scoreboard players set @s attack_029 1
#Spawn
tag @s add tbcAllyTs
function glarth:combat/spawn