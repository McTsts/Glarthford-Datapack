#Call Parents
function glarth:combat/entity/extends/enemy
function glarth:combat/entity/implements/type/ender
#Overwrite
data merge entity @s {ArmorItems:[{id:"stone",count:1,components:{"minecraft:custom_data":{CustomName:'{"translate":"tbc.short_name.enemy.ender_priest.ender_knight","color":"dark_purple"}'}}},{},{},{id:"diamond_hoe",count:1,components:{"minecraft:custom_model_data":359}}],CustomNameVisible:1,CustomName:'{"translate":"tbc.enemy.ender_priest.ender_knight","color":"dark_purple"}'}
scoreboard players set @s attack_119 1
scoreboard players set @s attack_120 1
scoreboard players set @s attack_121 2
scoreboard players set @s attack_154 2
scoreboard players set @s attack_155 2
scoreboard players set @s attack_156 1
scoreboard players set @s attack_128 1
scoreboard players set @s tbcHealth 20
scoreboard players set @s tbcQueue 100
#Spawn
tag @s add tbcEnderDodge
tag @s add tbcEnderKnightFake
function glarth:combat/spawn

