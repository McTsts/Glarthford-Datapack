#Call Parents
function glarth:combat/entity/extends/zombie
function glarth:combat/entity/implements/type/magic
#Overwrite
data merge entity @s {ArmorItems:[{id:"stone",count:1,components:{"minecraft:custom_data":{CustomName:'{"translate":"tbc.short_name.enemy.zombie.pumpkin","color":"gold"}'}}},{},{},{id:"diamond_hoe",count:1,components:{"minecraft:custom_model_data":162}}],CustomNameVisible:1,CustomName:'{"translate":"tbc.enemy.zombie.pumpkin","color":"gold"}'}
scoreboard players add @s tbcArmor 5
scoreboard players operation @s tbcHealth *= 3 Const
scoreboard players operation @s tbcHealth /= 2 Const
scoreboard players set @s attack_057 2
scoreboard players set @s attack_009 2
scoreboard players set @s attack_067 2
scoreboard players set @s attack_131 1
scoreboard players set @s attack_138 1
tag @s add stage_019

#Spawn
tag @s add tbcZombiePumpkin
function glarth:combat/spawn
