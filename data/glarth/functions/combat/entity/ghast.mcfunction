#Call Parents
function glarth:combat/entity/extends/enemy
function glarth:combat/entity/implements/mini_boss
function glarth:combat/entity/implements/very_tall
function glarth:combat/entity/implements/hide_selection
function glarth:combat/entity/implements/type/fire
#Overwrite
data merge entity @s {ArmorItems:[{id:"stone",Count:1,tag:{CustomName:'{"translate":"tbc.short_name.enemy.ghast","color":"white"}'}},{},{},{}],CustomNameVisible:0,CustomName:"{\"translate\":\"tbc.enemy.ghast\",\"color\":\"white\"}"}
scoreboard players set @s attack_116 1001
scoreboard players set @s attack_117 1
scoreboard players set @s attack_118 1
scoreboard players set @s attack_043 1
tag @s add death_007
tag @s add stage_079
tag @s add stage_080

execute if score difficulty tbcStats matches 1 run scoreboard players set @s tbcHealth 600
execute if score difficulty tbcStats matches 2 run scoreboard players set @s tbcHealth 800
execute if score difficulty tbcStats matches 3 run scoreboard players set @s tbcHealth 1000
execute if score difficulty tbcStats matches 4 run scoreboard players set @s tbcHealth 1200
execute if score difficulty tbcStats matches 5 run scoreboard players set @s tbcHealth 1500
execute if score difficulty tbcStats matches 6 run scoreboard players set @s tbcHealth 2000

scoreboard players set @s tbcDodge -100

#Spawn
tag @s add tbcGhast
function glarth:combat/spawn