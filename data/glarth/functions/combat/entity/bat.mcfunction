#Call Parents
function glarth:combat/entity/extends/enemy
function glarth:combat/entity/implements/type/darkness
#Overwrite
data merge entity @s {ArmorItems:[{id:"stone",Count:1,tag:{CustomName:'{"translate":"tbc.short_name.enemy.bat","color":"white"}'}},{},{},{id:"diamond_hoe",Count:1,tag:{CustomModelData:35}}],CustomNameVisible:1,CustomName:"{\"translate\":\"tbc.enemy.bat\",\"color\":\"white\"}"}
scoreboard players set @s attack_001 1
scoreboard players operation @s tbcHealth /= 2 Const
#Spawn
tag @s add tbcBat
function glarth:combat/spawn