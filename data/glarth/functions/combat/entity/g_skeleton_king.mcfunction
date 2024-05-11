function glarth:combat/entity/extends/enemy
function glarth:combat/entity/implements/type/darkness
#Overwrite
data merge entity @s {ArmorItems:[{id:"stone",count:1,components:{"minecraft:custom_data":{CustomName:'{"translate":"tbc.short_name.enemy.grimsbane.skeleton_king","color":"gray"}'}}},{},{},{id:"diamond_hoe",count:1,components:{"minecraft:damage":21}}],CustomNameVisible:1,CustomName:'{"translate":"tbc.enemy.grimsbane.skeleton_king","color":"gray"}'}
scoreboard players set @s attack_243 1
scoreboard players set @s attack_011 1
scoreboard players set @s attack_059 1
scoreboard players set @s attack_061 1
execute if score difficulty tbcStats matches 1..4 run scoreboard players set @s tbcHealth 30
execute if score difficulty tbcStats matches 5 run scoreboard players set @s tbcHealth 40
execute if score difficulty tbcStats matches 6 run scoreboard players set @s tbcHealth 50
scoreboard players add @s tbcDodge 5
scoreboard players set @s tbcArmor 10
scoreboard players set @s tbcSpeed 6
#Spawn
tag @s add tbcSkeletonKingFake
function glarth:combat/spawn



