#Call Parents
function glarth:combat/entity/extends/enemy
function glarth:combat/entity/implements/tall
function glarth:combat/entity/implements/type/air
function glarth:combat/entity/implements/mini_boss
tag @s remove tbcMiniBoss
#Overwrite
data merge entity @s {ArmorItems:[{id:"stone",Count:1,tag:{CustomName:'{"translate":"tbc.short_name.enemy.crystal_guardian","color":"gold"}'}},{},{},{id:"diamond_hoe",Count:1,tag:{CustomModelData:419}}],CustomNameVisible:1,CustomName:"{\"translate\":\"tbc.enemy.crystal_guardian\",\"color\":\"gold\"}"}

scoreboard players set @s attack_069 1
scoreboard players set @s attack_071 1
scoreboard players set @s attack_155 1
scoreboard players set @s attack_161 1


scoreboard players set @s tbcDodge -100
scoreboard players operation @s tbcHealth *= 4 Const
tag @s add death_019
#Spawn
tag @s add tbcShulkerGuardian
function glarth:combat/spawn