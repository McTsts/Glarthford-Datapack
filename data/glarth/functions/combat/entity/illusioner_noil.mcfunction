#Call Parents
function glarth:combat/entity/extends/illager
function glarth:combat/entity/implements/type/illusion
#Overwrite
data merge entity @s {ArmorItems:[{id:"stone",Count:1,tag:{CustomName:'{"translate":"tbc.short_name.enemy.illager.illusioner","color":"blue"}'}},{},{},{id:"diamond_hoe",Count:1,tag:{CustomModelData:266}}],CustomNameVisible:1,CustomName:"{\"translate\":\"tbc.enemy.illager.illusioner\",\"color\":\"blue\"}"}


scoreboard players set @s attack_019 1

#Spawn
tag @s add tbcIllusioner
function glarth:combat/spawn