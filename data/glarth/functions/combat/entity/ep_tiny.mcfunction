#Call Parents
function glarth:combat/entity/extends/boss
function glarth:combat/entity/implements/no_health
function glarth:combat/entity/implements/type/ender
#Overwrite
data merge entity @s {ArmorItems:[{id:"stone",count:1,components:{"minecraft:custom_data":{CustomName:'{"translate":"tbc.short_name.enemy.boss.ender_priest","color":"dark_purple"}'}}},{},{},{id:"diamond_hoe",count:1,components:{"minecraft:custom_model_data":461}}],CustomNameVisible:1,CustomName:'{"translate":"tbc.enemy.boss.ender_priest","color":"dark_purple"}'}

# Early Attacks
scoreboard players set @s attack_049 1
scoreboard players set @s attack_050 1
scoreboard players set @s attack_051 1
scoreboard players set @s attack_055 1
tag @s add death_022


#Spawn
tag @s add tbcEnderPriestTiny
tag @s add tbcEnderPriest
function glarth:combat/spawn