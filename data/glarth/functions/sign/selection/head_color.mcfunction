function glarth:sign/ray_init
execute if score @s signRay matches 1..2 run data merge block ~ ~ ~ {Text1:'{"translate":"lobby.selection.arrow_left","color":"dark_gray"}'}
execute if score @s signRay matches 3..4 run data merge block ~ ~ ~ {Text4:'{"translate":"lobby.selection.arrow_right","color":"dark_gray"}'}
execute if score @s signRay matches 1..2 run scoreboard players remove @s charHeadColor 1
execute if score @s signRay matches 3..4 run scoreboard players add @s charHeadColor 1
function glarth:mechanic/lobby/selection/update
schedule function glarth:mechanic/lobby/selection/set_signs 5t