#Call Parents
function glarth:combat/entity/extends/enemy
function glarth:combat/entity/implements/no_anim
function glarth:combat/entity/implements/type/earth
#Overwrite
data merge entity @s {ArmorItems:[{id:"stone",count:1,components:{"minecraft:custom_data":{CustomName:'{"translate":"tbc.short_name.enemy.evil_quad","color":"gray"}'}}},{},{},{id:"diamond_hoe",count:1,components:{"minecraft:custom_model_data":529}}],CustomNameVisible:1,CustomName:'{"translate":"tbc.enemy.evil_quad","color":"gray"}'}

scoreboard players set @s attack_004 1
scoreboard players set @s attack_235 1
scoreboard players operation @s tbcStrength *= 2 Const

tag @s add death_033


#Spawn
tag @s add tbcEvilQuad
function glarth:combat/spawn