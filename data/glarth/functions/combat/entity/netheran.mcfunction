# Parents
function glarth:combat/entity/extends/boss
function glarth:combat/entity/implements/type/fire
#Overwrite
data merge entity @s {ArmorItems:[{id:"stone",Count:1,tag:{CustomName:'{"translate":"tbc.short_name.enemy.boss.netheran","color":"red"}'}},{},{},{id:"diamond_hoe",Count:1,tag:{Damage:29}}],CustomNameVisible:1,CustomName:"{\"translate\":\"tbc.enemy.boss.netheran\",\"color\":\"red\"}"}
scoreboard players set @s attack_032 2
scoreboard players set @s attack_043 2
scoreboard players set @s attack_044 2
scoreboard players set @s attack_045 2
scoreboard players set @s attack_046 2
scoreboard players set @s attack_047 2
scoreboard players set @s attack_048 2
scoreboard players set @s attack_134 2
scoreboard players set @s attack_136 2
tag @s add stage_002
execute if score difficulty tbcStats matches 1 run scoreboard players set @s tbcHealth 550
execute if score difficulty tbcStats matches 2 run scoreboard players set @s tbcHealth 650
execute if score difficulty tbcStats matches 3 run scoreboard players set @s tbcHealth 750
execute if score difficulty tbcStats matches 4 run scoreboard players set @s tbcHealth 850
execute if score difficulty tbcStats matches 5 run scoreboard players set @s tbcHealth 1000

#Spawn
tag @s add tbcNetheran
function glarth:combat/spawn