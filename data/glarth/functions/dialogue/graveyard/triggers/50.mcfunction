#50 Graveyard Guard | Letter Distraction
function glarth:dialogue/graveyard/lines/trade1
clear @s paper[custom_data={custom:"letter"}] 1 
tag @e[tag=graveyard,type=armor_stand] add walk_away
tag @e[tag=graveyard,type=armor_stand] add a
tag @e[tag=graveyard,type=armor_stand] add ggRL