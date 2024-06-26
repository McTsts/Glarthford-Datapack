# Call Parents
function glarth:combat/entity/extends/boss
function glarth:combat/entity/implements/type/darkness
#Overwrite
data merge entity @s {ArmorItems:[{id:"stone",count:1,components:{"minecraft:custom_data":{CustomName:'{"translate":"tbc.short_name.enemy.boss.skeleton_king","color":"gray"}'}}},{},{},{id:"diamond_hoe",count:1,components:{"minecraft:damage":21}}],CustomNameVisible:1,CustomName:'{"translate":"tbc.enemy.boss.skeleton_king","color":"gray"}'}
scoreboard players set @s attack_008 2
scoreboard players set @s attack_011 1
scoreboard players set @s attack_010 1
scoreboard players set @s attack_060 2
scoreboard players set @s attack_061 1
scoreboard players set @s attack_062 1
tag @s add stage_006
tag @s add stage_007
execute if score difficulty tbcStats matches 1 run scoreboard players set @s tbcHealth 600
execute if score difficulty tbcStats matches 2 run scoreboard players set @s tbcHealth 800
execute if score difficulty tbcStats matches 3 run scoreboard players set @s tbcHealth 1000
execute if score difficulty tbcStats matches 4 run scoreboard players set @s tbcHealth 1200
execute if score difficulty tbcStats matches 5 run scoreboard players set @s tbcHealth 1400
execute if score difficulty tbcStats matches 6 run scoreboard players set @s tbcHealth 1800

#Spawn
tag @s add tbcSkeletonKing
function glarth:combat/spawn

# do fireworks even though it's tale 2
scoreboard players set doFireworks tbcStats 1