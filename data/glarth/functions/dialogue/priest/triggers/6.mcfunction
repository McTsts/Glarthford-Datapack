#6 Priest | Holy Grail to Emerald
 function glarth:dialogue/priest/lines/trade1
 clear @s minecraft:diamond_hoe{Damage:41} 1
 give @s diamond_hoe{Damage:239,Unbreakable:1,display:{Name:"{\"translate\":\"item.amethyst\",\"italic\":false}"},custom:"amethyst",HideFlags:63}
 tag @e[tag=priest,type=armor_stand] add a