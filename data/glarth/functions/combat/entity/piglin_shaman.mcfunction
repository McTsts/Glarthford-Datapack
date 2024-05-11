#Call Parents
function glarth:combat/entity/extends/piglin
#Overwrite
data merge entity @s {ArmorItems:[{id:"stone",Count:1,tag:{CustomName:'{"translate":"tbc.short_name.enemy.piglin.shaman","color":"light_purple"}'}},{},{},{id:"diamond_hoe",Count:1,tag:{CustomModelData:485}}],CustomNameVisible:1,CustomName:"{\"translate\":\"tbc.enemy.piglin.shaman\",\"color\":\"light_purple\"}"}
scoreboard players set @s attack_041 2
scoreboard players set @s attack_042 2
scoreboard players set @s attack_043 2
scoreboard players set @s attack_046 2
scoreboard players set @s attack_048 2
#Spawn
tag @s add tbcPiglinShaman
function glarth:combat/spawn