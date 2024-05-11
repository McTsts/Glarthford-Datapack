#
scoreboard players operation subtract b_deltaid = @e[tag=b_selected,limit=1] b_id
scoreboard players operation @s b_deltaid = @s b_id
scoreboard players operation @s b_deltaid -= subtract b_deltaid

execute if score @s b_deltaid matches 2 run function board:move/red/right
execute unless score @s b_id matches 7 unless score @e[tag=b_selected,limit=1] b_id matches 3 if score @s b_deltaid matches 4 run function board:move/red/left