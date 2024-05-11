scoreboard players set r Random 45
function glarth:util/randomish
scoreboard players operation n Random *= 8 Const
execute store result entity @s Rotation[0] float 1 run scoreboard players get n Random
tag @s remove snowflakeNA