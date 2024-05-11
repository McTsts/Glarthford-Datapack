#Call Parents
function glarth:combat/entity/extends/dummy
function glarth:combat/entity/implements/type/darkness
function glarth:combat/entity/implements/no_anim
#Overwrite
data merge entity @s {ArmorItems:[{id:"stone",Count:1,tag:{CustomName:'{"translate":"tbc.short_name.enemy.boss.bat","color":"white"}'}},{},{},{id:"diamond_hoe",Count:1,tag:{CustomModelData:35}}],CustomNameVisible:1,CustomName:"{\"translate\":\"tbc.enemy.boss.bat\",\"color\":\"white\"}"}
#Spawn
tag @s add tbcBatFake
function glarth:combat/spawn