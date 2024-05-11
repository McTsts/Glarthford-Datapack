#Call Parents
function glarth:combat/entity/extends/block
function glarth:combat/entity/implements/type/default
#Overwrite
data merge entity @s {ArmorItems:[{id:"stone",Count:1,tag:{CustomName:'{"translate":"tbc.short_name.enemy.spawner.wskeleton","color":"dark_gray"}'}},{},{},{id:"diamond_hoe",Count:1,tag:{CustomModelData:367}}],CustomNameVisible:1,CustomName:"{\"translate\":\"tbc.enemy.spawner.wskeleton\",\"color\":\"dark_gray\"}"}

scoreboard players set @s attack_132 1
scoreboard players set @s tbcCharge 0
tag @s add death_009
tag @s add stage_018

#Spawn
tag @s add tbcWSkeletonSpawner
function glarth:combat/spawn