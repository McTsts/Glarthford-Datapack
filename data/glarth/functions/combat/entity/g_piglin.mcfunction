# Call Parents
function glarth:combat/entity/extends/enemy
function glarth:combat/entity/implements/type/piglin
#Overwrite
data merge entity @s {ArmorItems:[{id:"stone",Count:1,tag:{CustomName:'{"translate":"tbc.short_name.enemy.grimsbane.piglin","color":"light_purple"}'}},{},{},{id:"diamond_hoe",Count:1,tag:{CustomModelData:483}}],CustomNameVisible:1,CustomName:"{\"translate\":\"tbc.enemy.grimsbane.piglin\",\"color\":\"light_purple\"}"}
scoreboard players set @s attack_014 1
scoreboard players set @s attack_210 1
scoreboard players set @s attack_032 1
scoreboard players set @s tbcHealth 25
scoreboard players add @s tbcDodge 5
scoreboard players set @s tbcArmor 10
scoreboard players set @s tbcSpeed 6
#Spawn
tag @s add tbcPiglinFake
function glarth:combat/spawn