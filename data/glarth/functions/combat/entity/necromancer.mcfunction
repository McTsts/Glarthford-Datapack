# Parents
function glarth:combat/entity/extends/boss
function glarth:combat/entity/implements/type/magic
#Overwrite
data merge entity @s {ArmorItems:[{id:"stone",Count:1,tag:{CustomName:'{"translate":"tbc.short_name.enemy.boss.necromancer","color":"dark_red"}'}},{},{},{id:"diamond_hoe",Count:1,tag:{CustomModelData:223}}],CustomNameVisible:1,CustomName:"{\"translate\":\"tbc.enemy.boss.necromancer\",\"color\":\"dark_red\"}"}
scoreboard players set @s attack_072 1
scoreboard players set @s attack_076 1
scoreboard players set @s attack_077 1
scoreboard players set @s attack_078 1
scoreboard players set @s attack_079 0
execute if score difficulty tbcStats matches 1 run scoreboard players set @s tbcHealth 1000
execute if score difficulty tbcStats matches 2 run scoreboard players set @s tbcHealth 1200
execute if score difficulty tbcStats matches 3 run scoreboard players set @s tbcHealth 1400
execute if score difficulty tbcStats matches 4 run scoreboard players set @s tbcHealth 1600
execute if score difficulty tbcStats matches 5 run scoreboard players set @s tbcHealth 1800
tag @s add stage_012
tag @s add stage_013

#Spawn
tag @s add tbcNecromancer
function glarth:combat/spawn