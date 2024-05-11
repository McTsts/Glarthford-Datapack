#Call Parents
function glarth:combat/entity/extends/zombie
function glarth:combat/entity/implements/type/earth
function glarth:combat/entity/implements/speed/double
data merge entity @s {ArmorItems:[{id:"stone",count:1,components:{"minecraft:custom_data":{CustomName:'{"translate":"tbc.short_name.enemy.zombie.default","color":"dark_green"}'}}},{},{},{id:"diamond_hoe",count:1,components:{"minecraft:custom_model_data":523}}],CustomNameVisible:1,CustomName:'{"translate":"tbc.enemy.zombie.default","color":"dark_green"}'}
#Overwrite
scoreboard players set @s attack_131 3
scoreboard players set @s attack_213 1
scoreboard players set @s attack_141 1
scoreboard players operation @s tbcHealth *= 3 Const
scoreboard players operation @s tbcHealth /= 2 Const
#Spawn
tag @s add tbcZombieCowboy
function glarth:combat/spawn