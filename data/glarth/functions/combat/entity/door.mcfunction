#Call Parents
function glarth:combat/entity/extends/enemy
function glarth:combat/entity/implements/tall
function glarth:combat/entity/implements/type/magic
#Overwrite
data merge entity @s {ArmorItems:[{id:"stone",count:1,components:{"minecraft:custom_data":{CustomName:'{"translate":"block.minecraft.spruce_door","color":"gold"}'}}},{},{},{id:"diamond_hoe",count:1,components:{"minecraft:custom_model_data":225}}],CustomNameVisible:1,CustomName:'{"translate":"block.minecraft.spruce_door","color":"gold"}'}
scoreboard players set @s attack_002 1
scoreboard players set @s attack_004 1
scoreboard players set @s attack_008 1
scoreboard players set @s attack_024 1
scoreboard players set @s tbcHealth 1200
#Spawn
tag @s add tbcEnemyTall
tag @s add tbcSpruceDoor
function glarth:combat/spawn