#
data modify storage board_ai boardM.RAM set from storage board_ai boardM.Move6_1
summon armor_stand 8 7 8 {Tags:["Move6_1","b_learn","new"],NoGravity:1b}
function board:move/ai/get_chances
execute if entity @e[tag=RAM,tag=orange] run scoreboard players set B8 b_stats 0
execute if entity @e[tag=RAM,tag=orange] run scoreboard players set B4 b_stats 2

execute if entity @e[tag=RAM,tag=purple] run scoreboard players set B6 b_stats 0
execute if entity @e[tag=RAM,tag=purple] run scoreboard players set B3 b_stats 2

execute as @e[tag=board_as] run function board:update_board
function board:end_turn