scoreboard players set @s beeCounter 0
tag @s remove beeForceNext
execute if entity @s[tag=bee1] run function glarth:mechanic/animation/bee/next_1
execute if entity @s[tag=bee2] run function glarth:mechanic/animation/bee/next_2
execute if entity @s[tag=bee3] run function glarth:mechanic/animation/bee/next_3