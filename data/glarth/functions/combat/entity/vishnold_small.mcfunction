# Call Parents
function glarth:combat/entity/vishnold
function glarth:combat/entity/implements/type/poison
#Overwrite
data merge entity @s {ArmorItems:[{id:"stone",Count:1,tag:{CustomName:'{"translate":"tbc.short_name.enemy.boss.vishnold","color":"green"}'}},{},{},{id:"diamond_hoe",Count:1,tag:{CustomModelData:143}}],CustomNameVisible:1,CustomName:"{\"translate\":\"tbc.enemy.boss.vishnold\",\"color\":\"green\"}"}
tag @s remove death_001
scoreboard players set @s attack_050 0
scoreboard players set @s attack_055 0
execute if score difficulty tbcStats matches 1 run scoreboard players set @s tbcHealth 10
execute if score difficulty tbcStats matches 2 run scoreboard players set @s tbcHealth 50
execute if score difficulty tbcStats matches 3 run scoreboard players set @s tbcHealth 80
execute if score difficulty tbcStats matches 4 run scoreboard players set @s tbcHealth 120
execute if score difficulty tbcStats matches 5 run scoreboard players set @s tbcHealth 150
scoreboard players remove @s tbcSpeed 4

#Spawn
tag @s remove tbcVishnoldBig
tag @s add tbcVishnoldSmall
function glarth:combat/spawn