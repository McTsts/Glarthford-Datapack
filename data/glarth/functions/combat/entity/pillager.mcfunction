#Call Parents
function glarth:combat/entity/extends/illager
function glarth:combat/entity/implements/type/darkness
#Overwrite
data merge entity @s {ArmorItems:[{id:"stone",Count:1,tag:{CustomName:'{"translate":"tbc.short_name.enemy.illager.pillager","color":"gray"}'}},{},{},{id:"diamond_hoe",Count:1,tag:{CustomModelData:260}}],CustomNameVisible:1,CustomName:"{\"translate\":\"tbc.enemy.illager.pillager\",\"color\":\"gray\"}"}

scoreboard players set @s attack_008 1
scoreboard players set @s attack_013 1
scoreboard players set @s attack_094 2

#Spawn
tag @s add tbcPillager
function glarth:combat/spawn