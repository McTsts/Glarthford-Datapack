#Call Parents
function glarth:combat/entity/extends/zombie
function glarth:combat/entity/implements/type/earth
#Overwrite
scoreboard players set @s attack_006 0
scoreboard players set @s attack_012 0
scoreboard players set @s attack_131 1
scoreboard players set @s attack_139 1
data merge entity @s {ArmorItems:[{id:"stone",count:1,components:{"minecraft:custom_data":{CustomName:'{"translate":"tbc.short_name.enemy.zombie.knight","color":"dark_green"}'}}},{},{},{id:"diamond_hoe",count:1,components:{"minecraft:custom_model_data":139}}],CustomNameVisible:1,CustomName:'{"translate":"tbc.enemy.zombie.knight","color":"dark_green"}'}
execute if score difficulty tbcStats matches 1..4 run scoreboard players add @s tbcArmor 15
execute if score difficulty tbcStats matches 5 run scoreboard players add @s tbcArmor 20
execute if score difficulty tbcStats matches 1..3 run scoreboard players add @s tbcHealth 20
execute if score difficulty tbcStats matches 4..5 run scoreboard players add @s tbcHealth 40
execute if score difficulty tbcStats matches 6 run scoreboard players add @s tbcHealth 60
scoreboard players add @s tbcStrength 10
execute if score difficulty tbcStats matches 1..3 run scoreboard players remove @s tbcDodge 5
execute if score difficulty tbcStats matches 4 run scoreboard players remove @s tbcDodge 3
execute if score difficulty tbcStats matches 6 run scoreboard players add @s tbcDodge 2
#Spawn
tag @s add tbcZombieKnight
function glarth:combat/spawn