#Call Parents
function glarth:combat/entity/extends/enemy
function glarth:combat/entity/implements/type/ice
#Overwrite
data merge entity @s {ArmorItems:[{id:"stone",count:1,components:{"minecraft:custom_data":{CustomName:'{"translate":"tbc.short_name.enemy.golem.snow","color":"white"}'}}},{},{},{id:"diamond_hoe",count:1,components:{"minecraft:custom_model_data":373}}],CustomNameVisible:1,CustomName:'{"translate":"tbc.enemy.golem.snow","color":"white"}'}
scoreboard players set @s attack_025 1
scoreboard players set @s attack_146 2
scoreboard players set @s attack_201 2
scoreboard players set @s tbcQueue 1000
tag @s add death_013
#Spawn
tag @s add tbcSnowGolem
function glarth:combat/spawn