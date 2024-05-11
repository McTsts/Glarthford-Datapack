#Call Parents
function glarth:combat/entity/extends/illager
function glarth:combat/entity/implements/type/illusion
#Overwrite
data merge entity @s {ArmorItems:[{id:"stone",Count:1,tag:{CustomName:'{"translate":"tbc.short_name.enemy.illager.illusioner","color":"yellow"}'}},{},{},{id:"diamond_hoe",Count:1,tag:{CustomModelData:279}}],CustomNameVisible:1,CustomName:"{\"translate\":\"tbc.enemy.illager.illusioner\",\"color\":\"yellow\"}"}


scoreboard players set @s attack_019 1
scoreboard players set @s attack_105 6
scoreboard players set @s attack_099 3
scoreboard players set @s tbcQueue 100

#Spawn
tag @s add tbcIllusionerYellow
function glarth:combat/spawn