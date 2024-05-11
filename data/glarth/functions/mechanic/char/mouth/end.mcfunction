data modify entity @s ArmorItems[3].id set value "diamond_hoe"

scoreboard players set r Random 6
function glarth:util/randomish
scoreboard players operation @s charMouthX = @s charMouth 
scoreboard players remove @s charMouthX 6
scoreboard players operation @s charMouthX -= n Random 

execute if score @s charMouth matches ..15 run scoreboard players set @s charMouthX 1000

tag @s remove charMouthOpen