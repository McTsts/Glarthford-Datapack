#64 Farmer | Help
function glarth:dialogue/farmer/lines/trade2
give @s minecraft:wooden_hoe[can_break={blocks:["wheat","carrots","beetroots"]},damage=45,hide_additional_tooltip={}] 1
scoreboard players set gate Stats 1
tag @e[tag=farmer,type=armor_stand] add b
execute as @a[distance=..5,tag=!tip6] run function glarth:mechanic/tip/6

