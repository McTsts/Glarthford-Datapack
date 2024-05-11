# Parents
function glarth:combat/entity/extends/enemy
function glarth:combat/entity/implements/no_health
function glarth:combat/entity/implements/type/default
#Overwrite
data merge entity @s {ArmorItems:[{id:"stone",Count:1,tag:{CustomName:'{"translate":"tbc.short_name.enemy.necromancer.dog","color":"gray"}'}},{},{},{id:"diamond_hoe",Count:1,tag:{CustomModelData:237}}],CustomNameVisible:1,CustomName:"{\"translate\":\"tbc.enemy.necromancer.dog\",\"color\":\"gray\"}"}
scoreboard players set @s attack_082 1
scoreboard players set @s attack_083 1

scoreboard players set @s tbcHealth 15
tag @s add death_003
tag @s add death_004
# Spawn
tag @s add tbcNecroDog
function glarth:combat/spawn