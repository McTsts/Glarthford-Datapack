# Parents
function glarth:combat/entity/extends/enemy
function glarth:combat/entity/implements/type/default
#Overwrite
data merge entity @s {ArmorItems:[{id:"stone",count:1,components:{"minecraft:custom_data":{CustomName:'{"translate":"tbc.short_name.enemy.necromancer.royal_knight","color":"gold"}'}}},{},{},{id:"diamond_hoe",count:1,components:{"minecraft:custom_model_data":237}}],CustomNameVisible:1,CustomName:'{"translate":"tbc.enemy.necromancer.royal_knight","color":"gold"}'}
scoreboard players set @s attack_073 1
scoreboard players set @s attack_074 1
scoreboard players set @s attack_075 1

execute if score difficulty tbcStats matches 1 run scoreboard players set @s tbcHealth 40
execute if score difficulty tbcStats matches 2 run scoreboard players set @s tbcHealth 50
execute if score difficulty tbcStats matches 3 run scoreboard players set @s tbcHealth 60
execute if score difficulty tbcStats matches 4 run scoreboard players set @s tbcHealth 70
execute if score difficulty tbcStats matches 5 run scoreboard players set @s tbcHealth 80
execute if score difficulty tbcStats matches 6 run scoreboard players set @s tbcHealth 90
scoreboard players set @s tbcDodge 0
scoreboard players set @s tbcArmor 10
tag @s add death_003
#Spawn
tag @s add tbcNecroRoyalKnight
function glarth:combat/spawn