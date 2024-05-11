#Call Parents
function glarth:combat/entity/extends/enemy
function glarth:combat/entity/implements/lonely
function glarth:combat/entity/implements/type/ender
#Overwrite
data merge entity @s {ArmorItems:[{id:"stone",Count:1,tag:{CustomName:'{"translate":"tbc.short_name.enemy.ender_priest.ender_guard","color":"dark_purple"}'}},{},{},{id:"diamond_hoe",Count:1,tag:{CustomModelData:466}}],CustomNameVisible:1,CustomName:"{\"translate\":\"tbc.enemy.ender_priest.ender_guard\",\"color\":\"dark_purple\"}"}
scoreboard players add @s tbcArmor 15
execute if score difficulty tbcStats matches 1..3 run scoreboard players remove @s tbcHealth 55
execute if score difficulty tbcStats matches 4 run scoreboard players remove @s tbcHealth 25
execute if score difficulty tbcStats matches 5 run scoreboard players remove @s tbcHealth 10
scoreboard players add @s tbcStrength 20
scoreboard players remove @s tbcDodge 5
scoreboard players set @s attack_243 1
scoreboard players set @s attack_013 1
scoreboard players set @s attack_121 1
scoreboard players set @s attack_155 1
scoreboard players set @s attack_154 1
scoreboard players set @s attack_128 1
#Spawn
tag @s add tbcEnderGuard
function glarth:combat/spawn