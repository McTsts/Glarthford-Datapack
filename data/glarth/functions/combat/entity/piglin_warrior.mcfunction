#Call Parents
function glarth:combat/entity/extends/piglin
#Overwrite
data merge entity @s {ArmorItems:[{id:"stone",Count:1,tag:{CustomName:'{"translate":"tbc.short_name.enemy.piglin.warrior","color":"light_purple"}'}},{},{},{id:"diamond_hoe",Count:1,tag:{CustomModelData:484}}],CustomNameVisible:1,CustomName:"{\"translate\":\"tbc.enemy.piglin.warrior\",\"color\":\"light_purple\"}"}
scoreboard players set @s attack_128 6
scoreboard players set @s attack_024 6
scoreboard players set @s attack_214 4
#Spawn
tag @s add tbcPiglinWarrior
function glarth:combat/spawn