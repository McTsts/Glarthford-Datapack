# Call Parents
function glarth:combat/entity/extends/boss
function glarth:combat/entity/implements/type/darkness
#Overwrite
data merge entity @s {ArmorItems:[{id:"stone",count:1,components:{"minecraft:custom_data":{CustomName:'{"translate":"tbc.short_name.enemy.boss.roberto","color":"white"}'}}},{},{},{id:"diamond_hoe",count:1,components:{"minecraft:damage":70}}],CustomNameVisible:1,CustomName:'{"translate":"tbc.enemy.boss.roberto","color":"white"}'}
scoreboard players set @s attack_004 1
scoreboard players set @s attack_016 1
scoreboard players set @s attack_017 1
scoreboard players set @s attack_018 1
scoreboard players set @s attack_019 1
scoreboard players set @s attack_140 1
scoreboard players set @s attack_142 1
execute if score difficulty tbcStats matches 1 run scoreboard players set @s tbcHealth 350
execute if score difficulty tbcStats matches 2 run scoreboard players set @s tbcHealth 450
execute if score difficulty tbcStats matches 3 run scoreboard players set @s tbcHealth 550
execute if score difficulty tbcStats matches 4 run scoreboard players set @s tbcHealth 650
execute if score difficulty tbcStats matches 5 run scoreboard players set @s tbcHealth 750
execute if score difficulty tbcStats matches 6 run scoreboard players set @s tbcHealth 900

#Spawn
tag @s add tbcRoberto
function glarth:combat/spawn