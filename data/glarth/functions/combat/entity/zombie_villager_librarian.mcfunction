#Call Parents
function glarth:combat/entity/extends/zombie
function glarth:combat/entity/implements/type/default
#Overwrite
scoreboard players set @s attack_057 1
scoreboard players set @s attack_113 1
scoreboard players set @s attack_131 1
scoreboard players set @s attack_241 1001
data merge entity @s {ArmorItems:[{id:"stone",count:1,components:{"minecraft:custom_data":{CustomName:'{"translate":"tbc.short_name.enemy.zombie.villager","color":"dark_green"}'}}},{},{},{id:"diamond_hoe",count:1,components:{"minecraft:custom_model_data":537}}],CustomNameVisible:1,CustomName:'{"translate":"tbc.enemy.zombie.villager","color":"dark_green"}'}
#Spawn
tag @s add tbcZombieVillagerLibrarian
function glarth:combat/spawn