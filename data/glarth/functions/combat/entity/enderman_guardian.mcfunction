#Call Parents
function glarth:combat/entity/extends/enemy
function glarth:combat/entity/implements/type/ender
function glarth:combat/entity/implements/mini_boss
tag @s remove tbcMiniBoss
#Overwrite
data merge entity @s {ArmorItems:[{id:"stone",Count:1,tag:{CustomName:'{"translate":"tbc.short_name.enemy.crystal_guardian","color":"dark_purple"}'}},{},{},{id:"diamond_hoe",Count:1,tag:{CustomModelData:436}}],CustomNameVisible:1,CustomName:"{\"translate\":\"tbc.enemy.crystal_guardian\",\"color\":\"dark_purple\"}"}

scoreboard players set @s attack_121 1
scoreboard players set @s attack_154 1
scoreboard players set @s attack_155 1
scoreboard players set @s attack_161 1
scoreboard players set @s attack_174 2

scoreboard players operation @s tbcHealth *= 4 Const
tag @s add death_019
#Spawn
tag @s add tbcEnderDodge
tag @s add tbcEndermanGuardian
function glarth:combat/spawn