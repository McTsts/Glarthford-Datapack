#199 Suso | Eat Salmon
function glarth:dialogue/suso/lines/trade4
tag @e[tag=suso,type=armor_stand] add d
clear @s cooked_salmon
tag @s add savedSuso

schedule function glarth:dialogue/suso/triggers/199d 7s
