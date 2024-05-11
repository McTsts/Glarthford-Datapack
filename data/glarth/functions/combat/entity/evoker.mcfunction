#Call Parents
function glarth:combat/entity/extends/enemy
function glarth:combat/entity/implements/mini_boss
function glarth:combat/entity/implements/type/earth
#Overwrite
data merge entity @s {ArmorItems:[{id:"stone",count:1,components:{"minecraft:custom_data":{CustomName:'{"translate":"tbc.short_name.enemy.evoker.evoker","color":"gold"}'}}},{},{},{id:"diamond_hoe",count:1,components:{"minecraft:damage":39}}],CustomNameVisible:1,CustomName:'{"translate":"tbc.enemy.evoker.evoker","color":"gold"}'}

scoreboard players set @s attack_016 1
scoreboard players set @s attack_017 1
scoreboard players set @s attack_033 1
scoreboard players set @s attack_034 1
scoreboard players set @s attack_036 1
scoreboard players set @s attack_110 1



execute if score difficulty tbcStats matches 1 run scoreboard players set @s tbcHealth 350
execute if score difficulty tbcStats matches 2 run scoreboard players set @s tbcHealth 400
execute if score difficulty tbcStats matches 3 run scoreboard players set @s tbcHealth 450
execute if score difficulty tbcStats matches 4 run scoreboard players set @s tbcHealth 550
execute if score difficulty tbcStats matches 5 run scoreboard players set @s tbcHealth 650
execute if score difficulty tbcStats matches 6 run scoreboard players set @s tbcHealth 800
scoreboard players set @s tbcTOU 1
#Spawn
tag @s add tbcEvoker
function glarth:combat/spawn