#Call Parents
function glarth:combat/entity/extends/skeleton
function glarth:combat/entity/implements/type/ice
#Overwrite
execute if score difficulty tbcStats matches 1..3 run scoreboard players remove @s tbcHealth 40
execute if score difficulty tbcStats matches 4 run scoreboard players remove @s tbcHealth 20
execute if score difficulty tbcStats matches 6 run scoreboard players add @s tbcHealth 20
data merge entity @s {ArmorItems:[{id:"stone",count:1,components:{"minecraft:custom_data":{CustomName:'{"translate":"tbc.short_name.enemy.skeleton.stray","color":"aqua"}'}}},{},{},{id:"diamond_hoe",count:1,components:{"minecraft:damage":145}}],CustomNameVisible:1,CustomName:'{"translate":"tbc.enemy.skeleton.stray","color":"aqua"}'}

scoreboard players set @s attack_004 1
scoreboard players set @s attack_224 1
scoreboard players set @s attack_025 1
scoreboard players set @s attack_243 0
scoreboard players set @s attack_008 0
scoreboard players set @s attack_009 0
scoreboard players set @s attack_010 0
scoreboard players set @s attack_013 0
scoreboard players set @s attack_201 1
#Spawn
tag @s add tbcStray
function glarth:combat/spawn