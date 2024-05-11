function glarth:combat/entity/extends/enemy
function glarth:combat/entity/implements/type/fire
#Overwrite
data merge entity @s {ArmorItems:[{id:"stone",Count:1,tag:{CustomName:'{"translate":"tbc.short_name.enemy.grimsbane.netheran","color":"red"}'}},{},{},{id:"diamond_hoe",Count:1,tag:{Damage:29}}],CustomNameVisible:1,CustomName:"{\"translate\":\"tbc.enemy.grimsbane.netheran\",\"color\":\"red\"}"}
scoreboard players set @s attack_032 1
scoreboard players set @s attack_043 1
scoreboard players set @s attack_048 1
execute if score difficulty tbcStats matches 1..3 run scoreboard players set @s tbcHealth 20
execute if score difficulty tbcStats matches 4 run scoreboard players set @s tbcHealth 25
execute if score difficulty tbcStats matches 5 run scoreboard players set @s tbcHealth 30
execute if score difficulty tbcStats matches 6 run scoreboard players set @s tbcHealth 40
scoreboard players add @s tbcDodge 5
scoreboard players set @s tbcArmor 10
scoreboard players set @s tbcSpeed 6
#Spawn
tag @s add tbcNetheranFake
function glarth:combat/spawn