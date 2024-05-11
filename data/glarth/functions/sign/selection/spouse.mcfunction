function glarth:sign/ray_init
execute if score @s signRay matches 1..2 run scoreboard players remove @s charSpouse 1
execute if score @s signRay matches 3..4 run scoreboard players add @s charSpouse 1
function glarth:mechanic/lobby/selection/update
schedule function glarth:mechanic/lobby/selection/set_signs 5t