#Call Parents
function glarth:combat/entity/extends/zombie
function glarth:combat/entity/implements/type/earth
#Overwrite
scoreboard players set @s attack_131 2
scoreboard players set @s attack_139 1
#Spawn
tag @s add tbcZombie
function glarth:combat/spawn