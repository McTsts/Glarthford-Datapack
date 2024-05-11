#Call Parents
function glarth:combat/entity/extends/zombie
function glarth:combat/entity/implements/type/piglin
#Overwrite
data merge entity @s {ArmorItems:[{id:"stone",Count:1,tag:{CustomName:'{"translate":"tbc.short_name.enemy.zombie.pigman","color":"light_purple"}'}},{},{},{id:"diamond_hoe",Count:1,tag:{Damage:27}}],CustomNameVisible:1,CustomName:"{\"translate\":\"tbc.enemy.zombie.pigman\",\"color\":\"light_purple\"}"}

scoreboard players set @s attack_003 0
scoreboard players set @s attack_014 1
scoreboard players set @s attack_031 1
scoreboard players set @s attack_032 1
scoreboard players add @s tbcHealth 20
scoreboard players add @s tbcDodge 10
#Spawn
tag @s add tbcPigman
function glarth:combat/spawn