#Call Parents
function glarth:combat/entity/extends/enemy
function glarth:combat/entity/implements/mini_boss
function glarth:combat/entity/implements/type/magic
#Overwrite
data merge entity @s {ArmorItems:[{id:"stone",Count:1,tag:{CustomName:'{"translate":"tbc.short_name.enemy.summoner","color":"green"}'}},{},{},{id:"diamond_hoe",Count:1,tag:{Damage:163}}],CustomNameVisible:1,CustomName:"{\"translate\":\"tbc.enemy.summoner\",\"color\":\"green\"}"}

scoreboard players set @s attack_152 1



execute if score difficulty tbcStats matches 1 run scoreboard players set @s tbcHealth 250
execute if score difficulty tbcStats matches 2 run scoreboard players set @s tbcHealth 300
execute if score difficulty tbcStats matches 3 run scoreboard players set @s tbcHealth 350
execute if score difficulty tbcStats matches 4 run scoreboard players set @s tbcHealth 450
execute if score difficulty tbcStats matches 5 run scoreboard players set @s tbcHealth 550
#Spawn
tag @s add tbcSummoner
function glarth:combat/spawn