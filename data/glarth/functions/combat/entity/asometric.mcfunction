#Call Parents
function glarth:combat/entity/extends/boss
function glarth:combat/entity/implements/type/default
function glarth:combat/entity/implements/immortal
#Overwrite
data merge entity @s {ArmorItems:[{id:"stone",count:1,components:{"minecraft:custom_data":{CustomName:'{"translate":"tbc.short_name.enemy.boss.evil_adri","color":"dark_red"}'}}},{},{},{id:"diamond_hoe",count:1,components:{"minecraft:custom_model_data":256}}],CustomNameVisible:1,CustomName:'{"translate":"tbc.enemy.boss.evil_adri","color":"dark_red"}'}
scoreboard players add @s tbcDodge 0
scoreboard players add @s tbcArmor 0
scoreboard players set @s tbcSpeed 0

#Spawn
tag @s add tbcEvilAdri
function glarth:combat/spawn