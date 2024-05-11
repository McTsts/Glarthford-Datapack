# Call Parents
function glarth:combat/entity/extends/boss
function glarth:combat/entity/implements/type/default
#Overwrite
data merge entity @s {ArmorItems:[{id:"stone",Count:1,tag:{CustomName:'{"translate":"tbc.short_name.enemy.boss.raid_leader","color":"gray"}'}},{},{},{id:"diamond_hoe",Count:1,tag:{CustomModelData:385}}],CustomNameVisible:1,CustomName:"{\"translate\":\"tbc.enemy.boss.raid_leader\",\"color\":\"gray\"}"}
# Standard Illager Attacks
scoreboard players set @s attack_092 1
scoreboard players set @s attack_093 1
scoreboard players set @s attack_094 1
scoreboard players set @s attack_095 1
scoreboard players set @s attack_096 1
scoreboard players set @s attack_097 1
scoreboard players set @s attack_057 1
scoreboard players set @s attack_019 1
scoreboard players set @s attack_016 1
scoreboard players set @s attack_017 1
scoreboard players set @s attack_104 1
# Summonings
scoreboard players set @s attack_100 3
scoreboard players set @s attack_101 3
scoreboard players set @s attack_126 1
scoreboard players set @s attack_127 1
# Iron Golem
scoreboard players set @s attack_147 8


execute if score difficulty tbcStats matches 1 run scoreboard players set @s tbcHealth 400
execute if score difficulty tbcStats matches 2 run scoreboard players set @s tbcHealth 500
execute if score difficulty tbcStats matches 3 run scoreboard players set @s tbcHealth 600
execute if score difficulty tbcStats matches 4 run scoreboard players set @s tbcHealth 900
execute if score difficulty tbcStats matches 5 run scoreboard players set @s tbcHealth 1200
execute if score difficulty tbcStats matches 6 run scoreboard players set @s tbcHealth 1500
scoreboard players set @s tbcTOU 2
tag @s add death_008
tag @s add stage_015

#Spawn
tag @s add tbcIllager
tag @s add tbcRaidLeader
function glarth:combat/spawn