#Call Parents
function glarth:combat/entity/extends/enemy
function glarth:combat/entity/implements/tall
function glarth:combat/entity/implements/type/fire
function glarth:combat/entity/implements/speed/double
function glarth:combat/entity/implements/no_anim
#Overwrite
data merge entity @s {ArmorItems:[{id:"stone",Count:1,tag:{CustomName:'{"translate":"tbc.short_name.enemy.golem.wither","color":"dark_gray"}'}},{},{},{id:"diamond_hoe",Count:1,tag:{CustomModelData:498}}],CustomNameVisible:0,CustomName:"{\"translate\":\"tbc.enemy.golem.wither\",\"color\":\"dark_gray\"}"}
scoreboard players set @s attack_123 1
scoreboard players set @s attack_124 1
scoreboard players set @s attack_211 1
scoreboard players set @s attack_212 1
scoreboard players operation @s tbcStrength *= 2 Const
scoreboard players operation @s tbcHealth *= 5 Const
tag @s add death_030
#Spawn
tag @s add tbcWither
function glarth:combat/spawn