#Call Parents
function glarth:combat/entity/extends/zombie
function glarth:combat/entity/implements/type/default
#Overwrite
scoreboard players set @s attack_057 1
scoreboard players set @s attack_113 1
scoreboard players set @s attack_131 1
scoreboard players set @s attack_242 1001
data merge entity @s {ArmorItems:[{id:"stone",Count:1,tag:{CustomName:'{"translate":"tbc.short_name.enemy.zombie.villager","color":"dark_green"}'}},{},{},{id:"diamond_hoe",Count:1,tag:{CustomModelData:536}}],CustomNameVisible:1,CustomName:"{\"translate\":\"tbc.enemy.zombie.villager\",\"color\":\"dark_green\"}"}
#Spawn
tag @s add tbcZombieVillagerCartographer
function glarth:combat/spawn