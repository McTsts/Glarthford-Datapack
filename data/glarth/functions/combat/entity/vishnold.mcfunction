function glarth:combat/entity/extends/boss
function glarth:combat/entity/implements/type/poison
#Overwrite
data merge entity @s {ArmorItems:[{id:"stone",Count:1,tag:{CustomName:'{"translate":"tbc.short_name.enemy.boss.vishnold","color":"green"}'}},{},{},{id:"diamond_hoe",Count:1,tag:{Damage:37}}],CustomNameVisible:1,CustomName:"{\"translate\":\"tbc.enemy.boss.vishnold\",\"color\":\"green\"}"}
scoreboard players set @s attack_049 1
scoreboard players set @s attack_050 1
scoreboard players set @s attack_051 1
scoreboard players set @s attack_054 1
scoreboard players set @s attack_055 1
tag @s add death_001
execute if score difficulty tbcStats matches 1 run scoreboard players set @s tbcHealth 150
execute if score difficulty tbcStats matches 2 run scoreboard players set @s tbcHealth 200
execute if score difficulty tbcStats matches 3 run scoreboard players set @s tbcHealth 250
execute if score difficulty tbcStats matches 4 run scoreboard players set @s tbcHealth 300
execute if score difficulty tbcStats matches 5 run scoreboard players set @s tbcHealth 350

#Spawn
tag @s add tbcVishnold
tag @s add tbcVishnoldBig
function glarth:combat/spawn