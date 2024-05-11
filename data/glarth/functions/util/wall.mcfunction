scoreboard players set r Random 7
function glarth:util/random
execute if score n Random matches 1..2 run scoreboard players set height Util 3
execute if score n Random matches 3..5 run scoreboard players set height Util 5
execute if score n Random matches 6 run scoreboard players set height Util 6
execute if score n Random matches 7 run scoreboard players set height Util 4

execute at @s if score height Util matches 1.. run function glarth:util/wall_block
execute at @s if score height Util matches 2.. run function glarth:util/wall_block
execute at @s if score height Util matches 3.. run function glarth:util/wall_block
execute at @s if score height Util matches 4.. run function glarth:util/wall_block
execute at @s if score height Util matches 5.. run function glarth:util/wall_block
execute at @s if score height Util matches 6.. run function glarth:util/wall_block

data merge entity @s {Health:0.0f,DeathTime:19}
