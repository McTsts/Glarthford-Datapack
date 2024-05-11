scoreboard players operation @s mill += millSpeed Animation
execute if score @s mill matches 3600.. run scoreboard players remove @s mill 3600
execute if score @s mill matches ..-1 run scoreboard players add @s mill 3590

execute if score @s[tag=mill_sail] mill matches 0..890 run function glarth:mechanic/animation/mill/1
execute if score @s[tag=mill_sail] mill matches 900..1790 run function glarth:mechanic/animation/mill/2
execute if score @s[tag=mill_sail] mill matches 1800..2690 run function glarth:mechanic/animation/mill/3
execute if score @s[tag=mill_sail] mill matches 2700..3590 run function glarth:mechanic/animation/mill/4

execute if score @s[tag=mill_rot] mill matches 0..890 run function glarth:mechanic/animation/mill/a
execute if score @s[tag=mill_rot] mill matches 900..1790 run function glarth:mechanic/animation/mill/b
execute if score @s[tag=mill_rot] mill matches 1800..2690 run function glarth:mechanic/animation/mill/c
execute if score @s[tag=mill_rot] mill matches 2700..3590 run function glarth:mechanic/animation/mill/d

execute if score @s[tag=mill_up] mill matches 0..890 at @s run tp @s ~ ~0.0083 ~
execute if score @s[tag=mill_up] mill matches 900..1790 at @s run tp @s ~ ~-0.0083 ~
execute if score @s[tag=mill_up] mill matches 1800..2690 at @s run tp @s ~ ~0.0083 ~
execute if score @s[tag=mill_up] mill matches 2700..3590 at @s run tp @s ~ ~-0.0083 ~