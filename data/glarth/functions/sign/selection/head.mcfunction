function glarth:sign/ray_init
execute if score @s signRay matches 1..2 run data merge block ~ ~ ~ {front_text:{messages:['{"translate":"lobby.selection.arrow_left","color":"dark_gray"}','""','""','""']}}
execute if score @s signRay matches 3..4 run data merge block ~ ~ ~ {front_text:{messages:['""','""','""','{"translate":"lobby.selection.arrow_right","color":"dark_gray"}']}}
execute if score @s signRay matches 1..2 run scoreboard players remove @s charHead 1
execute if score @s signRay matches 3..4 run scoreboard players add @s charHead 1
scoreboard players set @s charHeadColor 1
function glarth:mechanic/lobby/selection/update
schedule function glarth:mechanic/lobby/selection/set_signs 5t