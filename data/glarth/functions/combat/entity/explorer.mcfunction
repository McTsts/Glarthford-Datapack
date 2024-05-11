function glarth:combat/entity/extends/ally
#Overwrite
data merge entity @s {ArmorItems:[{id:"stone",Count:1,tag:{CustomName:'{"translate":"tbc.short_name.ally.explorer","color":"#8C5800"}',NoColor:'{"translate":"tbc.ally.explorer"}'}},{},{},{id:"diamond_hoe",Count:1,tag:{Damage:52}}],CustomNameVisible:1,CustomName:"{\"translate\":\"tbc.ally.explorer\",\"color\":\"#8C5800\"}"}
scoreboard players set @s charType 2

execute if score difficulty tbcStats matches 1 run scoreboard players set @s attack_006 02
execute if score difficulty tbcStats matches 2 run scoreboard players set @s attack_006 04
execute if score difficulty tbcStats matches 3 run scoreboard players set @s attack_006 06
execute if score difficulty tbcStats matches 4 run scoreboard players set @s attack_006 08
execute if score difficulty tbcStats matches 5 run scoreboard players set @s attack_006 10
execute if score difficulty tbcStats matches 6 run scoreboard players set @s attack_006 12
scoreboard players set @s attack_011 2
scoreboard players set @s attack_019 2
scoreboard players set @s attack_020 0

scoreboard players set @s tbcHealth 20
scoreboard players set @s tbcStrength 40
tag @s remove tbcAttackable
#Spawn
tag @s add tbcExplorer
function glarth:combat/spawn