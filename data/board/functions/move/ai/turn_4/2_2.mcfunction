#
data modify storage board_ai boardM.RAM set from storage board_ai boardM.Move4_2
summon armor_stand 8 7 8 {Tags:["Move4_2","b_learn","new"],NoGravity:1b}
function board:move/ai/get_chances
execute if entity @e[tag=RAM,tag=blue] run scoreboard players set B5 b_stats 0
execute if entity @e[tag=RAM,tag=blue] run scoreboard players set B1 b_stats 2

execute if entity @e[tag=RAM,tag=purple] run scoreboard players set B5 b_stats 0
execute if entity @e[tag=RAM,tag=purple] run scoreboard players set B2 b_stats 2

execute if entity @e[tag=RAM,tag=green] run scoreboard players set B8 b_stats 0
execute if entity @e[tag=RAM,tag=green] run scoreboard players set B6 b_stats 2
execute as @e[tag=board_as] run function board:update_board
function board:end_turn