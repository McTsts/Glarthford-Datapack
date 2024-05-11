function glarth:combat/entity/extends/ally
#Overwrite
data merge entity @s {ArmorItems:[{id:"stone",Count:1,tag:{CustomName:'{"translate":"tbc.short_name.ally.chief","color":"white"}',NoColor:'{"translate":"tbc.ally.chief"}'}},{},{},{id:"diamond_hoe",Count:1,tag:{Damage:176}}],CustomNameVisible:1,CustomName:"{\"translate\":\"tbc.ally.chief\",\"color\":\"white\"}"}
scoreboard players set @s attack_002 1
execute if score difficulty tbcStats matches 1 run scoreboard players set @s tbcHealth 50
execute if score difficulty tbcStats matches 2 run scoreboard players set @s tbcHealth 25
execute if score difficulty tbcStats matches 3 run scoreboard players set @s tbcHealth 15
execute if score difficulty tbcStats matches 4 run scoreboard players set @s tbcHealth 10
execute if score difficulty tbcStats matches 5 run scoreboard players set @s tbcHealth 5
execute if score difficulty tbcStats matches 6 run scoreboard players set @s tbcHealth 2
#Spawn
tag @s add tbcMinerChief
function glarth:combat/spawn