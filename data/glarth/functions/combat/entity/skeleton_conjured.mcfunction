#Call Parents
function glarth:combat/entity/extends/skeleton
function glarth:combat/entity/implements/mini_boss
function glarth:combat/entity/implements/tall
function glarth:combat/entity/implements/type/magic
#Overwrite
data merge entity @s {ArmorItems:[{id:"stone",Count:1,tag:{CustomName:'{"translate":"tbc.short_name.enemy.skeleton.conjured","color":"gray"}'}},{},{},{id:"diamond_hoe",Count:1,tag:{CustomModelData:204}}],CustomNameVisible:1,CustomName:"{\"translate\":\"tbc.enemy.skeleton.conjured\",\"color\":\"gray\"}"}
scoreboard players operation @s tbcHealth *= 2 Const
scoreboard players add @s tbcStrength 20
scoreboard players set @s attack_025 1
scoreboard players set @s attack_026 1
scoreboard players set @s attack_060 1
scoreboard players set @s attack_125 1002
#Spawn
tag @s add tbcSkeletonConjured
function glarth:combat/spawn