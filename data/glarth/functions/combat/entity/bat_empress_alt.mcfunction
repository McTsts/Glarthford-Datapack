function glarth:combat/entity/extends/boss
function glarth:combat/entity/implements/type/darkness
#Overwrite
data merge entity @s {ArmorItems:[{id:"stone",count:1,components:{"minecraft:custom_data":{CustomName:'{"translate":"tbc.short_name.enemy.boss.bat","color":"white"}'}}},{},{},{id:"diamond_hoe",count:1,components:{"minecraft:damage":178}}],CustomNameVisible:1,CustomName:'{"translate":"tbc.enemy.boss.bat","color":"white"}'}

execute if score difficulty tbcStats matches 1 run scoreboard players set @s tbcHealth 420
execute if score difficulty tbcStats matches 2 run scoreboard players set @s tbcHealth 450
execute if score difficulty tbcStats matches 3 run scoreboard players set @s tbcHealth 500
execute if score difficulty tbcStats matches 4 run scoreboard players set @s tbcHealth 600
execute if score difficulty tbcStats matches 5 run scoreboard players set @s tbcHealth 700
execute if score difficulty tbcStats matches 6 run scoreboard players set @s tbcHealth 800

scoreboard players set @s attack_001 1
scoreboard players set @s attack_002 1
scoreboard players set @s attack_023 1

#Spawn
tag @s add tbcBat
function glarth:combat/spawn