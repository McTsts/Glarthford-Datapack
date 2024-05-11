#Call Parents
function glarth:combat/entity/extends/enemy
function glarth:combat/entity/implements/lonely
function glarth:combat/entity/implements/tall
function glarth:combat/entity/implements/speed/double
function glarth:combat/entity/implements/type/air
#Overwrite
scoreboard players set @s attack_111 1
scoreboard players set @s attack_112 1
data merge entity @s {ArmorItems:[{id:"stone",count:1,components:{"minecraft:custom_data":{CustomName:'{"translate":"tbc.short_name.enemy.zombie.chicken","color":"dark_green"}'}}},{},{},{id:"diamond_hoe",count:1,components:{"minecraft:custom_model_data":344}}],CustomNameVisible:1,CustomName:'{"translate":"tbc.enemy.zombie.chicken","color":"dark_green"}'}


#Spawn
tag @s add tbcZombieChicken
function glarth:combat/spawn