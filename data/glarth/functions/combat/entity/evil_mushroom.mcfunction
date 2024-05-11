#Call Parents
function glarth:combat/entity/extends/enemy
function glarth:combat/entity/implements/lonely
function glarth:combat/entity/implements/tall
function glarth:combat/entity/implements/no_anim
function glarth:combat/entity/implements/type/poison
#Overwrite
data merge entity @s {ArmorItems:[{id:"stone",Count:1,tag:{CustomName:'{"translate":"tbc.short_name.enemy.evil_mushroom","color":"red"}'}},{},{},{id:"diamond_hoe",Count:1,tag:{CustomModelData:527}}],CustomNameVisible:0,CustomName:"{\"translate\":\"tbc.enemy.evil_mushroom\",\"color\":\"red\"}"}

scoreboard players set @s attack_229 1
scoreboard players set @s attack_231 1
scoreboard players operation @s tbcStrength *= 2 Const

tag @s add death_033


#Spawn
tag @s add tbcEvilMushroom
function glarth:combat/spawn