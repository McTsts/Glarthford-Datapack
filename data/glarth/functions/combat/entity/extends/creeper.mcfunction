function glarth:combat/entity/extends/enemy
data merge entity @s {ArmorItems:[{id:"stone",count:1,components:{"minecraft:custom_data":{CustomName:'{"translate":"tbc.short_name.enemy.creeper.default","color":"green"}'}}},{},{},{id:"diamond_hoe",count:1,components:{"minecraft:damage":147}}],CustomNameVisible:1,CustomName:'{"translate":"tbc.enemy.creeper.default","color":"green"}'}

execute if score difficulty tbcStats matches 1..3 run scoreboard players add @s tbcHealth 20
execute if score difficulty tbcStats matches 4 run scoreboard players add @s tbcHealth 40
execute if score difficulty tbcStats matches 5 run scoreboard players add @s tbcHealth 60
execute if score difficulty tbcStats matches 6 run scoreboard players add @s tbcHealth 80

scoreboard players add @s tbcStrength 5
scoreboard players set @s tbcDodge 0

scoreboard players set @s attack_038 1
scoreboard players set @s attack_039 1
scoreboard players set @s attack_040 1
tag @s add stage_001

tag @s add tbcCreeperType