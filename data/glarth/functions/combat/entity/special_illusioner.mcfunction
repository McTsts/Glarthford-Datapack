function glarth:combat/entity/extends/ally
#Overwrite
data merge entity @s {ArmorItems:[{id:"stone",Count:1,tag:{CustomName:'{"translate":"tbc.short_name.ally.illusioner","color":"yellow"}',NoColor:'{"translate":"tbc.ally.illusioner"}'}},{},{},{id:"diamond_hoe",Count:1,tag:{CustomModelData:279}}],CustomNameVisible:1,CustomName:"{\"translate\":\"tbc.ally.illusioner\",\"color\":\"yellow\"}"}
scoreboard players set @s attack_015 1
scoreboard players set @s tbcHealth 10
scoreboard players set @s tbcQueue 100

#Spawn
tag @s add tbcSpecialIllusioner
function glarth:combat/spawn