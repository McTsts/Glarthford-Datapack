#Call Parents
function glarth:combat/entity/extends/piglin
#Overwrite
data merge entity @s {ArmorItems:[{id:"stone",Count:1,tag:{CustomName:'{"translate":"tbc.short_name.enemy.piglin.architect","color":"light_purple"}'}},{},{},{id:"diamond_hoe",Count:1,tag:{CustomModelData:486}}],CustomNameVisible:1,CustomName:"{\"translate\":\"tbc.enemy.piglin.architect\",\"color\":\"light_purple\"}"}
scoreboard players set @s attack_209 12
#Spawn
tag @s add tbcPiglinArchitect
function glarth:combat/spawn