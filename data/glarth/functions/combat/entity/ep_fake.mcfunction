#Call Parents
function glarth:combat/entity/extends/dummy
function glarth:combat/entity/implements/type/illusion
function glarth:combat/entity/implements/no_health
function glarth:combat/entity/implements/no_anim
#Overwrite
data merge entity @s {ArmorItems:[{id:"stone",Count:1,tag:{CustomName:'{"translate":"tbc.short_name.enemy.boss.ender_priest","color":"dark_purple"}'}},{},{},{id:"diamond_hoe",Count:1,tag:{CustomModelData:464}}],CustomNameVisible:1,CustomName:"{\"translate\":\"tbc.enemy.boss.ender_priest\",\"color\":\"dark_purple\"}"}
#Spawn
tag @s add tbcEPFake
function glarth:combat/spawn