# 155 Evoker | Hat -> Banner
function glarth:dialogue/evoker/lines/trade5
clear @s minecraft:diamond_hoe[custom_data={custom:"tophat"}]
give @s minecraft:white_banner[banner_patterns=[{pattern:"rhombus",color:"cyan"},{pattern:"stripe_bottom",color:"light_gray"},{pattern:"stripe_center",color:"gray"},{pattern:"border",color:"light_gray"},{pattern:"stripe_middle",color:"black"},{pattern:"half_horizontal",color:"light_gray"},{pattern:"circle",color:"light_gray"},{pattern:"border",color:"black"}],custom_name='{"italic":"false","translate":"block.minecraft.ominous_banner"}',hide_additional_tooltip={}]
tag @e[tag=evoker] add d
item replace entity @e[tag=evoker] armor.head with minecraft:diamond_hoe[custom_model_data=504]