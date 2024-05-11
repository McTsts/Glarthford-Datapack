#Call Parents
function glarth:combat/entity/extends/enemy
function glarth:combat/entity/implements/no_anim
function glarth:combat/entity/implements/type/default
#Overwrite
data merge entity @s {ArmorItems:[{id:"stone",count:1,components:{"minecraft:custom_data":{CustomName:'{"translate":"tbc.short_name.enemy.evil_king","color":"gold"}'}}},{},{},{id:"diamond_hoe",count:1,components:{"minecraft:custom_model_data":530}}],CustomNameVisible:1,CustomName:'{"translate":"tbc.enemy.evil_king","color":"gold"}'}

scoreboard players set @s attack_233 1
scoreboard players set @s attack_234 1

tag @s add death_033


#Spawn
tag @s add tbcEvilKing
function glarth:combat/spawn