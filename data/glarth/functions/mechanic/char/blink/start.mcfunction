data modify entity @s ArmorItems[3].tag.Unbreakable set value 1
data modify entity @s ArmorItems[3].id set value "diamond_pickaxe"

scoreboard players set r Random 5
function glarth:util/randomish
scoreboard players operation @s charBlink += n Random