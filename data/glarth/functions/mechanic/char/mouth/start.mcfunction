data modify entity @s ArmorItems[3].tag.Unbreakable set value 1
data modify entity @s ArmorItems[3].id set value "diamond_sword"

scoreboard players set r Random 6
function glarth:util/randomish
scoreboard players operation @s charMouthX = @s charMouth 
scoreboard players remove @s charMouthX 6
scoreboard players operation @s charMouthX -= n Random 

tag @s add charMouthOpen