function glarth:combat/entity/extends/enemy
function glarth:combat/entity/implements/type/poison
#Overwrite
data merge entity @s {ArmorItems:[{id:"stone",count:1,components:{"minecraft:custom_data":{CustomName:'{"translate":"tbc.short_name.enemy.grimsbane.vishnold","color":"green"}'}}},{},{},{id:"diamond_hoe",count:1,components:{"minecraft:damage":37}}],CustomNameVisible:1,CustomName:'{"translate":"tbc.enemy.grimsbane.vishnold","color":"green"}'}
scoreboard players set @s attack_049 1
scoreboard players set @s attack_050 1
scoreboard players set @s attack_051 1
scoreboard players set @s attack_054 1
scoreboard players set @s attack_055 1
execute if score difficulty tbcStats matches 1..3 run scoreboard players set @s tbcHealth 5
execute if score difficulty tbcStats matches 4 run scoreboard players set @s tbcHealth 10
execute if score difficulty tbcStats matches 5 run scoreboard players set @s tbcHealth 20
execute if score difficulty tbcStats matches 6 run scoreboard players set @s tbcHealth 30
scoreboard players add @s tbcDodge 5
scoreboard players set @s tbcArmor 10
scoreboard players set @s tbcSpeed 6
#Spawn
tag @s add tbcVishnoldFake
function glarth:combat/spawn