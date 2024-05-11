scoreboard players set r Random 100
function glarth:util/rand_tbc

execute if score @s tbcBlindness matches 1.. run scoreboard players set r Random 2
execute if score @s tbcBlindness matches 1.. run function glarth:util/rand_tbc
execute if score @s tbcBlindness matches 1.. if score n Random matches 1 run scoreboard players set n Random 101

execute if score @s tbcStun matches 1.. run scoreboard players set n Random 101
execute if score @s tbcFreeze matches 0.. run scoreboard players set n Random 101


scoreboard players operation @s tbcDodge -= dodge tbcStats
execute if score n Random > @s tbcDodge run scoreboard players set dodged tbcStats 0
execute if score n Random <= @s tbcDodge run scoreboard players set dodged tbcStats 1
execute if score n Random <= @s tbcDodge at @s run playsound minecraft:entity.phantom.flap hostile @a ~ ~ ~ 1 2
execute if score n Random <= @s tbcDodge at @s run particle minecraft:flash ~ ~ ~ 1 1 1 0 2
execute if score n Random <= @s tbcDodge at @s run particle minecraft:cloud ~ ~ ~ 1 1 1 0 10
execute if score n Random <= @s tbcDodge at @s run tp @s ^ ^ ^-1
scoreboard players operation @s tbcDodge += dodge tbcStats
scoreboard players set dodge tbcStats 0

