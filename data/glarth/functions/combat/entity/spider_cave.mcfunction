#Call Parents
function glarth:combat/entity/extends/spider
function glarth:combat/entity/implements/type/poison
#Overwrite
data merge entity @s {ArmorItems:[{id:"stone",Count:1,tag:{CustomName:'{"translate":"tbc.short_name.enemy.spider.cave","color":"dark_aqua"}'}},{},{},{id:"diamond_hoe",Count:1,tag:{CustomModelData:352}}],CustomNameVisible:1,CustomName:"{\"translate\":\"tbc.enemy.spider.cave\",\"color\":\"dark_aqua\"}"}

scoreboard players set @s attack_115 2

#Spawn
tag @s add tbcCaveSpider
function glarth:combat/spawn