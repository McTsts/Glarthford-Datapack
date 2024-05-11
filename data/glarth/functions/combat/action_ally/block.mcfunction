scoreboard players operation x Temp = n Random
scoreboard players set r Random 100
function glarth:util/rand_tbc
scoreboard players set blocked tbcStats 1
execute if score n Random > @s tbcDodge run scoreboard players set @s blocked 0
execute if score n Random <= @s tbcDodge run scoreboard players set @s blocked 1
execute if score @s tbcStun matches 1.. run scoreboard players set @s blocked 0
scoreboard players operation n Random = x Temp
