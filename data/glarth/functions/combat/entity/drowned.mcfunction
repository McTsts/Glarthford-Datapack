#Call Parents
function glarth:combat/entity/extends/zombie
function glarth:combat/entity/implements/type/water
#Overwrite
data merge entity @s {ArmorItems:[{id:"stone",Count:1,tag:{CustomName:'{"translate":"tbc.short_name.enemy.zombie.drowned","color":"dark_aqua"}'}},{},{},{id:"diamond_hoe",Count:1,tag:{Damage:148}}],CustomNameVisible:1,CustomName:"{\"translate\":\"tbc.enemy.zombie.drowned\",\"color\":\"dark_aqua\"}"}

scoreboard players set @s attack_002 0
scoreboard players set @s attack_003 0
scoreboard players set @s attack_027 2
scoreboard players set @s attack_028 2
scoreboard players set @s attack_029 3
scoreboard players set @s attack_030 2
scoreboard players set @s attack_139 2
scoreboard players operation @s tbcHealth *= 2 Const
scoreboard players remove @s tbcDodge 20
#Spawn
tag @s add tbcDrowned
function glarth:combat/spawn