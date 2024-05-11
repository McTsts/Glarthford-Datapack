#Call Parents
function glarth:combat/entity/extends/skeleton
function glarth:combat/entity/implements/lonely
function glarth:combat/entity/implements/type/default
#Overwrite
data merge entity @s {ArmorItems:[{id:"stone",count:1,components:{"minecraft:custom_data":{CustomName:'{"translate":"tbc.short_name.enemy.skeleton.guard","color":"gray"}'}}},{},{},{id:"diamond_hoe",count:1,components:{"minecraft:custom_model_data":177}}],CustomNameVisible:1,CustomName:'{"translate":"tbc.enemy.skeleton.guard","color":"gray"}'}
scoreboard players add @s tbcArmor 15
execute if score difficulty tbcStats matches 1..3 run scoreboard players remove @s tbcHealth 55
execute if score difficulty tbcStats matches 4 run scoreboard players remove @s tbcHealth 25
execute if score difficulty tbcStats matches 5 run scoreboard players remove @s tbcHealth 10
scoreboard players add @s tbcStrength 20
scoreboard players remove @s tbcDodge 5
scoreboard players set @s attack_011 0
scoreboard players set @s attack_009 0
scoreboard players set @s attack_013 0
scoreboard players set @s attack_128 2
#Spawn
tag @s add tbcSkeletonKnight
function glarth:combat/spawn