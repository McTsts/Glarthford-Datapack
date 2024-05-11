# Parents
function glarth:combat/entity/extends/enemy
function glarth:combat/entity/implements/no_health
function glarth:combat/entity/implements/type/default
#Overwrite
data merge entity @s {ArmorItems:[{id:"stone",Count:1,tag:{CustomName:'{"translate":"tbc.short_name.enemy.necromancer.dog","color":"gray"}'}},{},{},{id:"diamond_hoe",Count:1,tag:{CustomModelData:237}}],CustomNameVisible:1,CustomName:"{\"translate\":\"tbc.enemy.necromancer.dog\",\"color\":\"gray\"}"}
scoreboard players set @s attack_082 1
scoreboard players set @s attack_083 1

execute if score difficulty tbcStats matches 1 run scoreboard players set @s tbcHealth 10
execute if score difficulty tbcStats matches 2 run scoreboard players set @s tbcHealth 20
execute if score difficulty tbcStats matches 3 run scoreboard players set @s tbcHealth 30
execute if score difficulty tbcStats matches 4 run scoreboard players set @s tbcHealth 40
execute if score difficulty tbcStats matches 5 run scoreboard players set @s tbcHealth 50
execute if score difficulty tbcStats matches 6 run scoreboard players set @s tbcHealth 60
tag @s add death_003
tag @s add death_004
# Spawn
tag @s add tbcNecroDog
function glarth:combat/spawn