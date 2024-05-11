#Call Parents
function glarth:combat/entity/extends/zombie
function glarth:combat/entity/implements/type/earth
#Overwrite
data merge entity @s {ArmorItems:[{id:"stone",Count:1,tag:{CustomName:'{"translate":"tbc.short_name.enemy.zombie.husk","color":"#E6C893"}'}},{},{},{id:"diamond_hoe",Count:1,tag:{CustomModelData:533}}],CustomNameVisible:1,CustomName:"{\"translate\":\"tbc.enemy.zombie.husk\",\"color\":\"#E6C893\"}"}

scoreboard players set @s attack_001 0
scoreboard players set @s attack_002 0

scoreboard players set @s attack_005 1
scoreboard players set @s attack_238 2
scoreboard players set @s attack_239 2
scoreboard players set @s attack_240 4

scoreboard players operation @s tbcHealth *= 2 Const
scoreboard players remove @s tbcDodge 20
#Spawn
tag @s add tbcHusk
function glarth:combat/spawn