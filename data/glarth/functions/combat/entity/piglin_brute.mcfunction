#Call Parents
function glarth:combat/entity/extends/enemy
function glarth:combat/entity/implements/type/piglin
#Overwrite
data merge entity @s {ArmorItems:[{id:"stone",Count:1,tag:{CustomName:'{"translate":"tbc.short_name.enemy.piglin.brute","color":"gray"}'}},{},{},{id:"diamond_hoe",Count:1,tag:{CustomModelData:507}}],CustomNameVisible:1,CustomName:"{\"translate\":\"tbc.enemy.piglin.brute\",\"color\":\"gray\"}"}
scoreboard players set @s attack_210 3
scoreboard players set @s attack_095 3
scoreboard players set @s attack_128 3
scoreboard players set @s attack_214 3
scoreboard players operation @s tbcDodge /= 2 Const
execute if score difficulty tbcStats matches 1..3 run scoreboard players add @s tbcHealth 80
execute if score difficulty tbcStats matches 4..5 run scoreboard players add @s tbcHealth 100
execute if score difficulty tbcStats matches 1..3 run scoreboard players add @s tbcStrength 10
execute if score difficulty tbcStats matches 4..5 run scoreboard players add @s tbcStrength 20
#Spawn
tag @s add tbcPiglin
tag @s add tbcPiglinBrute
function glarth:combat/spawn