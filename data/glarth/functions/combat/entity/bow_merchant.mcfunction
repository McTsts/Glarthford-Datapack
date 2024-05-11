function glarth:combat/entity/extends/ally
#Overwrite
data merge entity @s {ArmorItems:[{id:"stone",count:1,components:{"minecraft:custom_data":{CustomName:'{"translate":"tbc.short_name.ally.bowm","color":"white"}',NoColor:'{"translate":"tbc.ally.bowm"}'}}},{},{},{id:"diamond_hoe",count:1,components:{"minecraft:custom_model_data":40}}],CustomNameVisible:1,CustomName:'{"translate":"tbc.ally.bowm","color":"white"}'}
scoreboard players set @s attack_005 1
scoreboard players set @s tbcHealth 50
scoreboard players set @s tbcQueue 100

#Spawn
tag @s add tbcBowMerchant
function glarth:combat/spawn