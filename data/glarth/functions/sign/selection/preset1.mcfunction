function glarth:sign/ray_init
execute if score @s signRay matches 1..2 run data modify block ~ ~ ~ front_text.messages[0] set value '{"color":"dark_gray","translate":"lobby.selection.preset.save","with":["1"]}'
execute if score @s signRay matches 3..4 run data modify block ~ ~ ~ front_text.messages[3] set value '{"color":"dark_gray","translate":"lobby.selection.preset.load","with":["1"]}'
execute if score @s signRay matches 1..2 run scoreboard players operation @s charTypeP1 = @s charType
execute if score @s signRay matches 1..2 run scoreboard players operation @s charBaseP1 = @s charBase
execute if score @s signRay matches 1..2 run scoreboard players operation @s charSpouseP1 = @s charSpouse
execute if score @s signRay matches 1..2 run scoreboard players operation @s charBodyRealP1 = @s charBodyReal
execute if score @s signRay matches 1..2 run scoreboard players operation @s charHeadRealP1 = @s charHeadReal
execute if score @s signRay matches 1..2 run function glarth:mechanic/lobby/selection/make_name_mini
execute if score @s signRay matches 1..2 run data modify block ~ ~ ~ front_text.messages[1] set from block 84 26 -123 front_text.messages[0]
execute if score @s signRay matches 1..2 run data modify block ~ ~ ~ front_text.messages[2] set from block 84 26 -123 front_text.messages[1]
execute if score @s signRay matches 3..4 run scoreboard players operation @s charType = @s charTypeP1
execute if score @s signRay matches 3..4 run scoreboard players operation @s charBase = @s charBaseP1
execute if score @s signRay matches 3..4 run scoreboard players operation @s charSpouse = @s charSpouseP1
execute if score @s signRay matches 3..4 run scoreboard players operation @s charBodyColor = @s charBodyRealP1
execute if score @s signRay matches 3..4 run scoreboard players remove @s charBodyColor 1
execute if score @s signRay matches 3..4 run scoreboard players operation @s charBodyColor %= 3 Const
execute if score @s signRay matches 3..4 run scoreboard players add @s charBodyColor 1
execute if score @s signRay matches 3..4 run scoreboard players operation @s charBody = @s charBodyRealP1
execute if score @s signRay matches 3..4 run scoreboard players operation @s charBody -= @s charBodyColor
execute if score @s signRay matches 3..4 run scoreboard players operation @s charBody /= 3 Const
execute if score @s signRay matches 3..4 run scoreboard players add @s charBody 1
execute if score @s signRay matches 3..4 run scoreboard players operation @s charHeadColor = @s charHeadRealP1
execute if score @s signRay matches 3..4 run scoreboard players remove @s charHeadColor 1 
execute if score @s signRay matches 3..4 run scoreboard players operation @s charHeadColor %= 3 Const
execute if score @s signRay matches 3..4 run scoreboard players add @s charHeadColor 1 
execute if score @s signRay matches 3..4 run scoreboard players operation @s charHead = @s charHeadRealP1
execute if score @s signRay matches 3..4 run scoreboard players operation @s charHead -= @s charHeadColor
execute if score @s signRay matches 3..4 run scoreboard players operation @s charHead /= 3 Const
execute if score @s signRay matches 3..4 run scoreboard players add @s charHead 1 
execute if score @s signRay matches 3..4 if score @s charBodyRealP1 matches 100.. run scoreboard players set @s charBody 6
execute if score @s signRay matches 3..4 if score @s charBodyRealP1 matches 100.. run scoreboard players operation @s charBodyColor = @s charBodyRealP1
execute if score @s signRay matches 3..4 if score @s charBodyRealP1 matches 100.. run scoreboard players remove @s charBodyColor 100
execute if score @s signRay matches 3..4 if score @s charBodyRealP1 matches 100.. if score @s charBodyColor = @s charC1 run scoreboard players set @s charBodyColor 101
execute if score @s signRay matches 3..4 if score @s charBodyRealP1 matches 100.. if score @s charBodyColor = @s charC2 run scoreboard players set @s charBodyColor 102
execute if score @s signRay matches 3..4 if score @s charBodyRealP1 matches 100.. if score @s charBodyColor = @s charC3 run scoreboard players set @s charBodyColor 103
execute if score @s signRay matches 3..4 if score @s charBodyRealP1 matches 100.. run scoreboard players remove @s charBodyColor 100
function glarth:mechanic/lobby/selection/update
schedule function glarth:mechanic/lobby/selection/set_signs 5t