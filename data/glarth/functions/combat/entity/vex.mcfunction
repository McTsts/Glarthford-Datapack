#Call Parents
function glarth:combat/entity/extends/enemy
function glarth:combat/entity/implements/type/air
#Overwrite
data merge entity @s {ArmorItems:[{id:"stone",Count:1,tag:{CustomName:'{"translate":"tbc.short_name.enemy.evoker.vex","color":"aqua"}'}},{},{},{id:"diamond_hoe",Count:1,tag:{CustomModelData:44}}],CustomNameVisible:1,CustomName:"{\"translate\":\"tbc.enemy.evoker.vex\",\"color\":\"aqua\"}"}
scoreboard players set @s attack_035 1
scoreboard players remove @s tbcHealth 60
execute if score difficulty tbcStats matches 1..3 run scoreboard players set @s tbcSpeed 4
execute if score difficulty tbcStats matches 4..5 run scoreboard players set @s tbcSpeed 6
execute if score difficulty tbcStats matches 6 run scoreboard players set @s tbcSpeed 8
#Spawn
tag @s add tbcVex
function glarth:combat/spawn