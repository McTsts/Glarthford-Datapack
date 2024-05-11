function glarth:combat/entity/extends/ally
#Overwrite
execute unless entity @a[scores={playerid=1,charSpouse=2}] run data merge entity @s {ArmorItems:[{id:"stone",Count:1,tag:{CustomName:'{"translate":"tbc.short_name.ally.wife","color":"#FF8488"}',NoColor:'{"translate":"tbc.ally.wife"}'}},{},{},{id:"diamond_hoe",Count:1,tag:{Damage:33}}],CustomNameVisible:1,CustomName:"{\"translate\":\"tbc.ally.wife\",\"color\":\"#FF8488\"}"}
execute unless entity @a[scores={playerid=1,charSpouse=2}] run scoreboard players set @s charType 2
execute if entity @a[scores={playerid=1,charSpouse=2}] run data merge entity @s {ArmorItems:[{id:"stone",Count:1,tag:{CustomName:'{"translate":"tbc.short_name.ally.husband","color":"aqua"}',NoColor:'{"translate":"tbc.ally.husband"}'}},{},{},{id:"diamond_hoe",Count:1,tag:{CustomModelData:157}}],CustomNameVisible:1,CustomName:"{\"translate\":\"tbc.ally.husband\",\"color\":\"aqua\"}"}
execute if entity @a[name=Asometric,gamemode=adventure] unless entity @a[name=5uso,gamemode=adventure] run data merge entity @s {ArmorItems:[{id:"stone",Count:1,tag:{CustomName:'{"translate":"5uso","color":"blue"}',NoColor:'{"translate":"Suso"}'}},{},{},{id:"diamond_hoe",Count:1,tag:{CustomModelData:360}}],CustomNameVisible:1,CustomName:"{\"translate\":\"Suso\",\"color\":\"blue\"}"}
execute if entity @a[name=Asometric,gamemode=adventure] unless entity @a[name=5uso,gamemode=adventure] run scoreboard players set @s charType 1
execute if entity @a[name=5uso,gamemode=adventure] unless entity @a[name=Asometric,gamemode=adventure] run data merge entity @s {ArmorItems:[{id:"stone",Count:1,tag:{CustomName:'{"translate":"Asometric","color":"red"}',NoColor:'{"translate":"Asometric"}'}},{},{},{id:"diamond_hoe",Count:1,tag:{CustomModelData:256}}],CustomNameVisible:1,CustomName:"{\"translate\":\"Asometric\",\"color\":\"red\"}"}
execute if entity @a[name=5uso,gamemode=adventure] unless entity @a[name=Asometric,gamemode=adventure] run scoreboard players set @s charType 1

scoreboard players set wifeCounter Temp 0

execute if score difficulty tbcStats matches 1 run scoreboard players set @s attack_006 2
execute if score difficulty tbcStats matches 2 run scoreboard players set @s attack_006 3
execute if score difficulty tbcStats matches 3 run scoreboard players set @s attack_006 4
execute if score difficulty tbcStats matches 4 run scoreboard players set @s attack_006 5
execute if score difficulty tbcStats matches 5 run scoreboard players set @s attack_006 6
scoreboard players set @s attack_011 1
scoreboard players set @s tbcHealth 10
scoreboard players set @s tbcStrength 60
tag @s remove tbcAttackable
#Spawn
tag @s add tbcSpouse
function glarth:combat/spawn