#EMPTY SPOT
scoreboard players operation subtract b_deltaid = @e[tag=b_selected,limit=1] b_id
scoreboard players operation @s b_deltaid = @s b_id
scoreboard players operation @s b_deltaid -= subtract b_deltaid

execute if score @s b_deltaid matches 3 run function board:move/red/forward