scoreboard players set @s charBase 1
scoreboard players set @s charBody 1
scoreboard players set @s charHead 1
scoreboard players set @s charType 1
scoreboard players set @s charSpouse 1
function glarth:mechanic/lobby/selection/update

data merge block ~ ~ ~ {Text2:'{"color":"dark_gray","clickEvent":{"action":"run_command","value":"function glarth:mechanic/lobby/selection/reset_char"},"translate":"lobby.selection.reset"}'}
schedule function glarth:mechanic/lobby/selection/set_signs 5t