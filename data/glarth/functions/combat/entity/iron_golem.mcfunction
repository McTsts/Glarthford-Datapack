#Call Parents
function glarth:combat/entity/extends/enemy
function glarth:combat/entity/implements/type/default
#Overwrite
data merge entity @s {ArmorItems:[{id:"stone",Count:1,tag:{CustomName:'{"translate":"tbc.short_name.enemy.golem.iron","color":"white"}'}},{},{},{id:"diamond_hoe",Count:1,tag:{CustomModelData:379}}],CustomNameVisible:1,CustomName:"{\"translate\":\"tbc.enemy.golem.iron\",\"color\":\"white\"}"}
scoreboard players set @s attack_001 1
scoreboard players set @s attack_002 2
scoreboard players set @s attack_088 2
scoreboard players set @s attack_113 1
scoreboard players set @s attack_110 1
scoreboard players operation @s tbcStrength *= 2 Const
scoreboard players operation @s tbcHealth *= 5 Const
scoreboard players set @s tbcQueue 1000
tag @s add death_018
#Spawn
tag @s add tbcIronGolem
function glarth:combat/spawn