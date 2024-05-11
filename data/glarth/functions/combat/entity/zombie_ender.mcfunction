#Call Parents
function glarth:combat/entity/extends/zombie
function glarth:combat/entity/implements/type/ender
#Overwrite
data merge entity @s {ArmorItems:[{id:"stone",Count:1,tag:{CustomName:'{"translate":"tbc.short_name.enemy.zombie.ender","color":"dark_purple"}'}},{},{},{id:"diamond_hoe",Count:1,tag:{CustomModelData:460}}],CustomNameVisible:1,CustomName:"{\"translate\":\"tbc.enemy.zombie.ender\",\"color\":\"dark_purple\"}"}
scoreboard players set @s attack_119 3
scoreboard players operation @s tbcHealth /= 2 Const
scoreboard players set @s tbcQueue 100

#Spawn
tag @s add tbcZombieEnder
function glarth:combat/spawn