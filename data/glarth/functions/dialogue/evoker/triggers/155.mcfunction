# 155 Evoker | Hat -> Banner
function glarth:dialogue/evoker/lines/trade5
clear @s minecraft:diamond_hoe{custom:"tophat"}
give @s white_banner{HideFlags:63,BlockEntityTag:{Patterns:[{Pattern:"mr",Color:9},{Pattern:"bs",Color:8},{Pattern:"cs",Color:7},{Pattern:"bo",Color:8},{Pattern:"ms",Color:15},{Pattern:"hh",Color:8},{Pattern:"mc",Color:8},{Pattern:"bo",Color:15}]},display:{Name:'{"italic":"false","translate":"block.minecraft.ominous_banner"}'}}
tag @e[tag=evoker] add d
item replace entity @e[tag=evoker] armor.head with diamond_hoe{CustomModelData:504}