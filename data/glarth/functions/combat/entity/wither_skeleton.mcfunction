#Call Parents
function glarth:combat/entity/extends/skeleton
function glarth:combat/entity/implements/type/fire
#Overwrite
execute if score difficulty tbcStats matches 1..3 run scoreboard players add @s tbcHealth 50
execute if score difficulty tbcStats matches 4..5 run scoreboard players add @s tbcHealth 60
execute if score difficulty tbcStats matches 6 run scoreboard players add @s tbcHealth 70
scoreboard players add @s tbcStrength 5
scoreboard players add @s tbcDodge 5
data merge entity @s {ArmorItems:[{id:"stone",Count:1,tag:{CustomName:'{"translate":"tbc.short_name.enemy.skeleton.wither","color":"dark_gray"}'}},{},{},{id:"diamond_hoe",Count:1,tag:{Damage:146}}],CustomNameVisible:1,CustomName:"{\"translate\":\"tbc.enemy.skeleton.wither\",\"color\":\"dark_gray\"}"}
scoreboard players set @s attack_009 0
scoreboard players set @s attack_010 0
scoreboard players set @s attack_011 0
scoreboard players set @s attack_014 1
scoreboard players set @s attack_015 1
scoreboard players set @s attack_123 1
scoreboard players set @s attack_124 1
#Spawn
tag @s add tbcWitherSkeleton
function glarth:combat/spawn