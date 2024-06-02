# fire particles
execute as @s at @s run particle flame ~ ~ ~ 0.5 0.5 0.5 0.05 10
execute as @e[scores={tbcID=2}] at @s run particle flame ~ ~ ~ 0.5 0.5 0.5 0.05 10

function glarth:combat/action_enemy/util/speed {speed:"default",function:"attacks/swipe_double_customizable",args:{particle:"swipe",function:"effects/fire"}}