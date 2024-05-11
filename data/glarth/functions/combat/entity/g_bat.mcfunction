# Call Parents
function glarth:combat/entity/extends/enemy
function glarth:combat/entity/implements/type/darkness
#Overwrite
data merge entity @s {ArmorItems:[{id:"stone",Count:1,tag:{CustomName:'{"translate":"tbc.short_name.enemy.grimsbane.bat","color":"white"}'}},{},{},{id:"diamond_hoe",Count:1,tag:{Damage:178}}],CustomNameVisible:1,CustomName:"{\"translate\":\"tbc.enemy.grimsbane.bat\",\"color\":\"white\"}"}
scoreboard players set @s attack_001 1
scoreboard players set @s tbcHealth 05
scoreboard players add @s tbcDodge 5
scoreboard players set @s tbcArmor 10
scoreboard players set @s tbcSpeed 6
#Spawn
tag @s add tbcBatFake
function glarth:combat/spawn