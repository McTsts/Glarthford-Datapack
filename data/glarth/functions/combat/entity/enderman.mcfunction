#Call Parents
function glarth:combat/entity/extends/enemy
function glarth:combat/entity/implements/type/ender
#Overwrite
data merge entity @s {ArmorItems:[{id:"stone",Count:1,tag:{CustomName:'{"translate":"tbc.short_name.enemy.enderman","color":"dark_purple"}'}},{},{},{id:"diamond_hoe",Count:1,tag:{Damage:31}}],CustomNameVisible:1,CustomName:"{\"translate\":\"tbc.enemy.enderman\",\"color\":\"dark_purple\"}"}
scoreboard players set @s attack_119 1
scoreboard players set @s attack_120 1
scoreboard players set @s attack_121 2
scoreboard players operation @s tbcHealth *= 2 Const
#Spawn
tag @s add tbcEnderDodge
tag @s add tbcEnderman
function glarth:combat/spawn