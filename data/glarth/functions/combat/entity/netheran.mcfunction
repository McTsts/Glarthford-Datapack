# Parents
function glarth:combat/entity/extends/boss
function glarth:combat/entity/implements/type/fire
#Overwrite
data merge entity @s {ArmorItems:[{id:"stone",count:1,components:{"minecraft:custom_data":{CustomName:'{"translate":"tbc.short_name.enemy.boss.netheran","color":"red"}'}}},{},{},{id:"diamond_hoe",count:1,components:{"minecraft:damage":29}}],CustomNameVisible:1,CustomName:'{"translate":"tbc.enemy.boss.netheran","color":"red"}'}
scoreboard players set @s attack_032 2
scoreboard players set @s attack_043 2
scoreboard players set @s attack_044 2
scoreboard players set @s attack_045 2
scoreboard players set @s attack_046 2
scoreboard players set @s attack_047 2
scoreboard players set @s attack_048 2
scoreboard players set @s attack_134 2
scoreboard players set @s attack_136 2
tag @s add stage_002
execute if score difficulty tbcStats matches 1 run scoreboard players set @s tbcHealth 700
execute if score difficulty tbcStats matches 2 run scoreboard players set @s tbcHealth 900
execute if score difficulty tbcStats matches 3 run scoreboard players set @s tbcHealth 1100
execute if score difficulty tbcStats matches 4 run scoreboard players set @s tbcHealth 1400
execute if score difficulty tbcStats matches 5 run scoreboard players set @s tbcHealth 1800
execute if score difficulty tbcStats matches 6 run scoreboard players set @s tbcHealth 2200
scoreboard players add @s tbcEscape 1

#Spawn
tag @s add tbcNetheran
function glarth:combat/spawn