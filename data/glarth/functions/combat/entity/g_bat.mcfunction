# Call Parents
function glarth:combat/entity/extends/enemy
function glarth:combat/entity/implements/type/darkness
#Overwrite
data merge entity @s {ArmorItems:[{id:"stone",count:1,components:{"minecraft:custom_data":{CustomName:'{"translate":"tbc.short_name.enemy.grimsbane.bat","color":"white"}'}}},{},{},{id:"diamond_hoe",count:1,components:{"minecraft:damage":178}}],CustomNameVisible:1,CustomName:'{"translate":"tbc.enemy.grimsbane.bat","color":"white"}'}
scoreboard players set @s attack_001 1
scoreboard players set @s tbcHealth 05
scoreboard players add @s tbcDodge 5
scoreboard players set @s tbcArmor 10
scoreboard players set @s tbcSpeed 6
#Spawn
tag @s add tbcBatFake
function glarth:combat/spawn