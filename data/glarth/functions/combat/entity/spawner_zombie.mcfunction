#Call Parents
function glarth:combat/entity/extends/block
function glarth:combat/entity/implements/type/default
#Overwrite
data merge entity @s {ArmorItems:[{id:"stone",count:1,components:{"minecraft:custom_data":{CustomName:'{"translate":"tbc.short_name.enemy.spawner.zombie","color":"dark_green"}'}}},{},{},{id:"diamond_hoe",count:1,components:{"minecraft:custom_model_data":365}}],CustomNameVisible:1,CustomName:'{"translate":"tbc.enemy.spawner.zombie","color":"dark_green"}'}

scoreboard players set @s attack_132 1
scoreboard players set @s tbcCharge 0
tag @s add death_009
tag @s add stage_016

#Spawn
tag @s add tbcZombieSpawner
function glarth:combat/spawn