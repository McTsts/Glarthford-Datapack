#Call Parents
function glarth:combat/entity/extends/boss
function glarth:combat/entity/implements/type/ender
function glarth:combat/entity/implements/no_anim
function glarth:combat/entity/implements/nerf/4
#Overwrite
data merge entity @s {ArmorItems:[{id:"stone",count:1,components:{"minecraft:custom_data":{CustomName:'{"translate":"tbc.short_name.enemy.boss.ender_priest","color":"dark_purple"}'}}},{},{},{id:"diamond_hoe",count:1,components:{"minecraft:custom_model_data":394}}],CustomNameVisible:1,CustomName:'{"translate":"tbc.enemy.boss.ender_priest","color":"dark_purple"}'}

# Early Attacks
scoreboard players set @s attack_165 1
scoreboard players set @s attack_154 1
scoreboard players set @s attack_155 1
scoreboard players set @s attack_195 1

# Strength
execute if score difficulty tbcStats matches 1 run scoreboard players set @s tbcStrength 30
execute if score difficulty tbcStats matches 2 run scoreboard players set @s tbcStrength 35
execute if score difficulty tbcStats matches 3 run scoreboard players set @s tbcStrength 40
execute if score difficulty tbcStats matches 4 run scoreboard players set @s tbcStrength 45
execute if score difficulty tbcStats matches 5 run scoreboard players set @s tbcStrength 55
execute if score difficulty tbcStats matches 6 run scoreboard players set @s tbcStrength 70

# stages
tag @s add stage_035
tag @s add stage_036
tag @s add stage_037
tag @s add stage_038
tag @s add stage_039
tag @s add stage_040
tag @s add stage_041
tag @s add stage_042
tag @s add stage_043
tag @s add stage_044
tag @s add stage_045
tag @s add stage_046
tag @s add stage_047
tag @s add stage_048
tag @s add stage_049
tag @s add stage_050
tag @s add stage_051
tag @s add stage_052

tag @s add tbcEnderMorphed

# health
execute if score difficulty tbcStats matches 1 run scoreboard players set @s tbcHealth 1800
execute if score difficulty tbcStats matches 2 run scoreboard players set @s tbcHealth 2100
execute if score difficulty tbcStats matches 3 run scoreboard players set @s tbcHealth 2600
execute if score difficulty tbcStats matches 4 run scoreboard players set @s tbcHealth 3100
execute if score difficulty tbcStats matches 5 run scoreboard players set @s tbcHealth 3800
execute if score difficulty tbcStats matches 6 run scoreboard players set @s tbcHealth 5000

# Escape
scoreboard players add @s tbcEscape 4

#Spawn
tag @s add tbcEnderPriest2
tag @s add tbcEnderPriest
function glarth:combat/spawn