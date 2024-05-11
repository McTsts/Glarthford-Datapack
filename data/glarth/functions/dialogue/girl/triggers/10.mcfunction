#10 Girl | Bread to Skeleton Skull
function glarth:dialogue/girl/lines/trade1
clear @s bread[custom_name='{"italic":false,"translate":"item.bread"}'] 1 
give @s skeleton_skull 1
setblock 50 28 -127 minecraft:air
tag @e[tag=girl,type=armor_stand] add a