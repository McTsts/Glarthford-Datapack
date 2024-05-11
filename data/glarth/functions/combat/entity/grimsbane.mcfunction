function glarth:combat/entity/extends/boss
function glarth:combat/entity/implements/type/darkness
#Overwrite
data merge entity @s {ArmorItems:[{id:"stone",count:1,components:{"minecraft:custom_data":{CustomName:'{"translate":"tbc.short_name.enemy.boss.grimsbane","color":"dark_gray"}'}}},{},{},{id:"diamond_hoe",count:1,components:{"minecraft:damage":72}}],CustomNameVisible:1,CustomName:'{"translate":"tbc.enemy.boss.grimsbane","color":"dark_gray"}'}
execute if entity b249813e-68b2-4549-9057-a4af4b21203e run data merge entity @s {ArmorItems:[{id:"stone",count:1,components:{"minecraft:custom_data":{CustomName:'{"translate":"tbc.short_name.enemy.grimsbane.taco","color":"gold"}'}}},{},{},{id:"diamond_hoe",count:1,components:{"minecraft:custom_model_data":347}}],CustomNameVisible:1,CustomName:'{"translate":"tbc.enemy.grimsbane.taco","color":"gold"}'}
execute if entity 8069e003-c654-4077-937f-45a017a1321b run data merge entity @s {ArmorItems:[{id:"stone",count:1,components:{"minecraft:custom_data":{CustomName:'{"translate":"tbc.short_name.enemy.grimsbane.taco","color":"gold"}'}}},{},{},{id:"diamond_hoe",count:1,components:{"minecraft:custom_model_data":347}}],CustomNameVisible:1,CustomName:'{"translate":"tbc.enemy.grimsbane.taco","color":"gold"}'}
execute if entity 1c361569-6b3e-4ab0-b27f-b9f0df43f336 run data merge entity @s {ArmorItems:[{id:"stone",count:1,components:{"minecraft:custom_data":{CustomName:'{"translate":"tbc.short_name.enemy.grimsbane.taco","color":"gold"}'}}},{},{},{id:"diamond_hoe",count:1,components:{"minecraft:custom_model_data":347}}],CustomNameVisible:1,CustomName:'{"translate":"tbc.enemy.grimsbane.taco","color":"gold"}'}

scoreboard players set @s attack_059 6
scoreboard players set @s attack_054 6
scoreboard players set @s attack_042 6
scoreboard players set @s attack_093 6
scoreboard players set @s attack_209 6
scoreboard players set @s attack_038 3
scoreboard players set @s attack_012 3
scoreboard players set @s attack_065 24
scoreboard players set @s attack_066 18
execute if score difficulty tbcStats matches 1 run scoreboard players set @s tbcHealth 12000
execute if score difficulty tbcStats matches 2 run scoreboard players set @s tbcHealth 18000
execute if score difficulty tbcStats matches 3 run scoreboard players set @s tbcHealth 26000
execute if score difficulty tbcStats matches 4 run scoreboard players set @s tbcHealth 32000
execute if score difficulty tbcStats matches 5 run scoreboard players set @s tbcHealth 42000
execute if score difficulty tbcStats matches 6 run scoreboard players set @s tbcHealth 50000
scoreboard players set @s tbcSpeed 14
scoreboard players set @s tbcArmor 0
execute if entity @e[tag=evGrimsbaneMoves] run tag @s add stage_014
execute if score game Stats matches 0 run tag @s add stage_014

#Spawn
tag @s add tbcGrimsbane
function glarth:combat/spawn