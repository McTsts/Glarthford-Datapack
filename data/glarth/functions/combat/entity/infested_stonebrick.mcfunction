#Call Parents
function glarth:combat/entity/extends/block
function glarth:combat/entity/implements/type/default
#Overwrite
data merge entity @s {ArmorItems:[{id:"stone",count:1,components:{"minecraft:custom_data":{CustomName:'{"translate":"tbc.short_name.enemy.block.infested_stonebrick","color":"dark_green"}'}}},{},{},{id:"diamond_hoe",count:1,components:{"minecraft:custom_model_data":369}}],CustomNameVisible:1,CustomName:'{"translate":"tbc.enemy.block.infested_stonebrick","color":"dark_green"}'}

scoreboard players set @s attack_141 1
tag @s add death_010
scoreboard players set @s tbcSpeed 16

scoreboard players set @s tbcStrength 30

#Spawn
tag @s add tbcInfestedStonebrick
function glarth:combat/spawn