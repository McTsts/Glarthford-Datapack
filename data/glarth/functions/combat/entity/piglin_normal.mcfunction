#Call Parents
function glarth:combat/entity/extends/piglin
#Overwrite
data merge entity @s {ArmorItems:[{id:"stone",Count:1,tag:{CustomName:'{"translate":"tbc.short_name.enemy.piglin.default","color":"light_purple"}'}},{},{},{id:"diamond_hoe",Count:1,tag:{CustomModelData:483}}],CustomNameVisible:1,CustomName:"{\"translate\":\"tbc.enemy.piglin.default\",\"color\":\"light_purple\"}"}
scoreboard players set @s attack_032 12
#Spawn
tag @s add tbcPiglinNormal
function glarth:combat/spawn