function glarth:combat/entity/extends/ally
#Overwrite
data merge entity @s {ArmorItems:[{id:"stone",Count:1,tag:{CustomName:'{"translate":"tbc.short_name.ally.archaeologist","color":"gray"}',NoColor:'{"translate":"tbc.ally.archaeologist"}'}},{},{},{id:"diamond_hoe",Count:1,tag:{Damage:14}}],CustomNameVisible:1,CustomName:"{\"translate\":\"tbc.ally.archaeologist\",\"color\":\"gray\"}"}
scoreboard players set @s attack_006 1
scoreboard players set @s attack_010 3
scoreboard players set @s attack_011 2
scoreboard players set @s attack_012 3
scoreboard players set @s attack_014 3
tag @s add stage_005
execute if score difficulty tbcStats matches 1 run scoreboard players set @s tbcHealth 25
execute if score difficulty tbcStats matches 2 run scoreboard players set @s tbcHealth 20
execute if score difficulty tbcStats matches 3 run scoreboard players set @s tbcHealth 15
execute if score difficulty tbcStats matches 4 run scoreboard players set @s tbcHealth 10
execute if score difficulty tbcStats matches 5 run scoreboard players set @s tbcHealth 5
scoreboard players set @s tbcQueue 100
scoreboard players operation @s tbcStrength *= 2 Const
scoreboard players add @s tbcDodge 10

#Spawn
tag @s add tbcArchaeologist
function glarth:combat/spawn