function glarth:combat/entity/extends/illager
function glarth:combat/entity/implements/mini_boss

execute if score difficulty tbcStats matches 1..4 run scoreboard players operation @s tbcHealth *= 3 Const
execute if score difficulty tbcStats matches 5 run scoreboard players operation @s tbcHealth *= 4 Const

scoreboard players set @s attack_093 1
scoreboard players set @s attack_104 2

tag @s add death_005
tag @s add tbcIllagerBannerman

function glarth:combat/entity/implements/nerf/2