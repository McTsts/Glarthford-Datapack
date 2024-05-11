#84 Dockmaster | String & Yellow Dye to Bow
function glarth:dialogue/dockmaster/lines/trade1
clear @s minecraft:yellow_dye 1
clear @s minecraft:string 1
give @s minecraft:bow[enchantments={"minecraft:power":3,"minecraft:flame":1,"minecraft:punch":1},unbreakable={show_in_tooltip:0b},damage=384,custom_name='{"translate":"item.dockmaster_bow","italic":false}',hide_additional_tooltip={},custom_data={bow:"dockmaster",custom:"dockmaster_bow"}] 1
tag @e[tag=dockmaster,type=armor_stand] add a