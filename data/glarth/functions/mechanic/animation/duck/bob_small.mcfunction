scoreboard players set r Random 10
function glarth:util/randomish
execute if score n Random matches 1 if entity @s[tag=bobUp] at @s run tp @s ~ ~-0.02 ~
execute if score n Random matches 1 unless entity @s[tag=bobUp] at @s run tp @s ~ ~0.02 ~
execute if score n Random matches 1 unless entity @s[tag=bobUp] at @s run tag @s add bobUp_
execute if score n Random matches 1 run tag @s[tag=bobUp] remove bobUp
execute if score n Random matches 1 run tag @s[tag=bobUp_] add bobUp
execute if score n Random matches 1 run tag @s[tag=bobUp_] remove bobUp_