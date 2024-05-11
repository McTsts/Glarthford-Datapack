#Call Parents
function glarth:combat/entity/extends/enemy
function glarth:combat/entity/implements/tall
function glarth:combat/entity/implements/type/air
#Overwrite
data merge entity @s {ArmorItems:[{id:"stone",Count:1,tag:{CustomName:'{"translate":"tbc.short_name.enemy.shulker","color":"dark_purple"}'}},{},{},{id:"diamond_hoe",Count:1,tag:{CustomModelData:205}}],CustomNameVisible:1,CustomName:"{\"translate\":\"tbc.enemy.shulker\",\"color\":\"dark_purple\"}"}

scoreboard players set @s attack_069 1
scoreboard players set @s attack_070 1
scoreboard players set @s attack_071 1
scoreboard players set @s tbcDodge -100
scoreboard players operation @s tbcHealth *= 2 Const
#Spawn
tag @s add tbcShulker
function glarth:combat/spawn