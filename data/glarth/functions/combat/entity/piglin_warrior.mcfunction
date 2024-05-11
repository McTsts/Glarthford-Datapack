#Call Parents
function glarth:combat/entity/extends/piglin
#Overwrite
data merge entity @s {ArmorItems:[{id:"stone",count:1,components:{"minecraft:custom_data":{CustomName:'{"translate":"tbc.short_name.enemy.piglin.warrior","color":"light_purple"}'}}},{},{},{id:"diamond_hoe",count:1,components:{"minecraft:custom_model_data":484}}],CustomNameVisible:1,CustomName:'{"translate":"tbc.enemy.piglin.warrior","color":"light_purple"}'}
scoreboard players set @s attack_128 6
scoreboard players set @s attack_024 1
scoreboard players set @s attack_244 5
scoreboard players set @s attack_214 4
#Spawn
tag @s add tbcPiglinWarrior
function glarth:combat/spawn