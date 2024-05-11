#84 Dockmaster | String & Yellow Dye to Bow
function glarth:dialogue/dockmaster/lines/trade1
clear @s minecraft:yellow_dye 1
clear @s minecraft:string 1
give @s minecraft:bow{bow:"dockmaster",custom:"dockmaster_bow",HideFlags:62,Enchantments:[{id:"minecraft:power",lvl:3},{id:"minecraft:flame",lvl:1},{id:"minecraft:punch",lvl:1}],Unbreakable:1,Damage:384,display:{Name:"{\"translate\":\"item.dockmaster_bow\",\"italic\":false}"}} 1
tag @e[tag=dockmaster,type=armor_stand] add a