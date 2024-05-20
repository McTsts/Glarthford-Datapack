function glarth:sign/ray_init
execute if score @s signRay matches 1..2 run data modify block ~ ~ ~ front_text.messages[0] set value '{"translate":"lobby.selection.arrow_left","color":"dark_gray"}'
execute if score @s signRay matches 3..4 run data modify block ~ ~ ~ front_text.messages[3] set value  '{"translate":"lobby.selection.arrow_right","color":"dark_gray"}'
execute if score @s signRay matches 1..2 run scoreboard players remove @s charType 1
execute if score @s signRay matches 3..4 run scoreboard players add @s charType 1
execute if score @s charType matches 1 run scoreboard players set @s charSpouse 1
execute if score @s charType matches 2 run scoreboard players set @s charSpouse 2
execute if score @s charType matches 4 run scoreboard players set @s charSpouse 1
function glarth:mechanic/lobby/selection/update
schedule function glarth:mechanic/lobby/selection/set_signs 5t