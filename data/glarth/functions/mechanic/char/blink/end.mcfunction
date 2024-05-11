data modify entity @s ArmorItems[3].id set value "diamond_hoe"

scoreboard players set r Random 60
function glarth:util/randomish
scoreboard players operation @s charBlink -= n Random
scoreboard players remove @s charBlink 60