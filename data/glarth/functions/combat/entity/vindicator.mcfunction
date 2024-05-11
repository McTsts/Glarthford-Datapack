#Call Parents
function glarth:combat/entity/extends/illager
function glarth:combat/entity/implements/type/earth
#Overwrite
data merge entity @s {ArmorItems:[{id:"stone",count:1,components:{"minecraft:custom_data":{CustomName:'{"translate":"tbc.short_name.enemy.illager.vindicator","color":"gray"}'}}},{},{},{id:"diamond_hoe",count:1,components:{"minecraft:custom_model_data":267}}],CustomNameVisible:1,CustomName:'{"translate":"tbc.enemy.illager.vindicator","color":"gray"}'}

scoreboard players set @s attack_095 2
scoreboard players set @s attack_096 2
scoreboard players set @s attack_097 2

#Spawn
tag @s add tbcVindicator
function glarth:combat/spawn