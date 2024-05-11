function glarth:combat/action/util/via_as
execute as @e[tag=tbcVia,limit=1] if score @s inBlock matches 0 run function glarth:combat/action/blocking_init
