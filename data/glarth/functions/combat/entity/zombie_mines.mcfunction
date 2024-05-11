#Call Parents
function glarth:combat/entity/extends/zombie
function glarth:combat/entity/implements/type/earth
#Overwrite
data merge entity @s {ArmorItems:[{id:"stone",Count:1,tag:{CustomName:'{"translate":"tbc.short_name.enemy.zombie.default","color":"dark_green"}'}},{},{},{id:"diamond_hoe",Count:1,tag:{CustomModelData:535}}],CustomNameVisible:1,CustomName:"{\"translate\":\"tbc.enemy.zombie.default\",\"color\":\"dark_green\"}"}
scoreboard players set @s attack_131 2
scoreboard players set @s attack_139 1
#Spawn
tag @s add tbcZombieMines
function glarth:combat/spawn