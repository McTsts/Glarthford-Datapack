#Call Parents
function glarth:combat/entity/extends/blaze
function glarth:combat/entity/implements/perma_glow
#Overwrite
tag @s add death_006
data merge entity @s {Team:"dark_gray"}
#Spawn
tag @s add tbcBlazeA
function glarth:combat/spawn