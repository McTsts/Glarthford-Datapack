# increment timer
execute if score @s tbcAttackStage matches 0 run scoreboard players add creeperTimer Temp 1
execute if score @s tbcAttackStage matches 1 run scoreboard players add creeperTimer Temp 2
execute if score @s tbcAttackStage matches 2 run scoreboard players add creeperTimer Temp 3

# update model
execute if score creeperTimer Temp matches 1..4 run data merge entity @s[tag=tbcCreeper] {ArmorItems:[{id:"stone",count:1,components:{"minecraft:custom_data":{CustomName:'{"translate":"tbc.short_name.enemy.creeper.default","color":"green"}'}}},{},{},{id:"diamond_hoe",count:1,components:{"minecraft:damage":147}}]}
execute if score creeperTimer Temp matches 1..4 run data merge entity @s[tag=tbcChargedCreeper] {ArmorItems:[{id:"stone",count:1,components:{"minecraft:custom_data":{CustomName:'{"translate":"tbc.short_name.enemy.creeper.charged","color":"aqua"}'}}},{},{},{id:"diamond_hoe",count:1,components:{"minecraft:custom_model_data":47}}]}
execute if score creeperTimer Temp matches 5..8 run data merge entity @s[tag=tbcCreeper] {ArmorItems:[{id:"stone",count:1,components:{"minecraft:custom_data":{CustomName:'{"translate":"tbc.short_name.enemy.creeper.default","color":"green"}'}}},{},{},{id:"diamond_hoe",count:1,components:{"minecraft:custom_model_data":46}}]}
execute if score creeperTimer Temp matches 5..8 run data merge entity @s[tag=tbcChargedCreeper] {ArmorItems:[{id:"stone",count:1,components:{"minecraft:custom_data":{CustomName:'{"translate":"tbc.short_name.enemy.creeper.charged","color":"aqua"}'}}},{},{},{id:"diamond_hoe",count:1,components:{"minecraft:custom_model_data":46}}]}

# reset timer
execute if score creeperTimer Temp matches 8.. run scoreboard players remove creeperTimer Temp 8