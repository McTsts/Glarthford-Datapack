#
data modify storage board_ai boardM.RAM set from storage board_ai boardM.Move6_4
summon armor_stand 8 7 8 {Tags:["Move6_4","b_learn","new"],NoGravity:1b}
function board:move/ai/get_chances
execute if entity @e[tag=RAM,tag=blue] run scoreboard players set B7 b_stats 0
execute if entity @e[tag=RAM,tag=blue] run scoreboard players set B5 b_stats 2

execute as @e[tag=board_as] run function board:update_board
function board:end_turn