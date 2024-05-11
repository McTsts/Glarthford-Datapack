scoreboard players add @s Animation 1
execute if score @s Animation matches 1..120 run tp @s ^ ^ ^0.018
execute if score @s Animation matches 121..210 run tp @s ~ ~ ~ ~2 ~
execute if score @s Animation matches 210 run scoreboard players set @s Animation 0
function glarth:mechanic/animation/firefly/light