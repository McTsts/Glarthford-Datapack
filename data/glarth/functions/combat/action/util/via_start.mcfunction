function glarth:combat/action/util/via_as
execute as @e[tag=tbcVia,limit=1] unless score @s blocking matches 1 run function glarth:combat/action/blocking_start