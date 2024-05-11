#Call Parents
function glarth:combat/entity/extends/zombie
function glarth:combat/entity/implements/type/earth
#Overwrite
data merge entity @s {ArmorItems:[{id:"stone",count:1,components:{"minecraft:custom_data":{CustomName:'{"translate":"tbc.short_name.enemy.zombie.sewage","color":"dark_green"}'}}},{},{},{id:"diamond_hoe",count:1,components:{"minecraft:custom_model_data":45}}],CustomNameVisible:1,CustomName:'{"translate":"tbc.enemy.zombie.sewage","color":"dark_green"}'}
scoreboard players set @s attack_001 0
scoreboard players set @s attack_002 0
scoreboard players set @s attack_003 2
scoreboard players set @s attack_005 2
scoreboard players set @s attack_140 2
scoreboard players set @s attack_084 1

#Spawn
tag @s add tbcZombieSewage
function glarth:combat/spawn