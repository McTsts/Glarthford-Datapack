execute as @a run scoreboard players operation $left ID -= @s ID
execute if score $left ID matches 1.. run function glarth:mechanic/leave0/leave
execute if score $left ID matches 0 as @a run scoreboard players operation $left ID += @s ID