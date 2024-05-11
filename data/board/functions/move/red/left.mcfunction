#
scoreboard players set @s b_statse 1
scoreboard players set @e[tag=b_selected] b_statse 0
tag @e[tag=b_selected] remove b_selected
execute as @e[tag=board_as] run function board:update_fake_values
function board:end_turn