#109 Explorer | Bucket to Open Slime
function glarth:dialogue/explorer/lines/trade2
clear @s bucket 1 
fill -4 23 -102 -7 20 -104 air replace slime_block
tag @e[tag=explorer,type=armor_stand] add b
tag @e[tag=dockmaster,type=armor_stand] add f