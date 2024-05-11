#79 Vampire | Health Potion to Darkness Essence
function glarth:dialogue/vampire/lines/trade1
clear @s minecraft:potion{Potion:"healing"} 1
clear @s[scores={iHPotion=..0}] minecraft:potion{Potion:"strong_healing"} 1
clear @s[scores={iHPotion=..0,iHPotionS=..0}] minecraft:potion{Potion:"minecraft:healing"} 1
clear @s[scores={iHPotion=..0,iHPotionS=..0,iHPotion2=..0}] minecraft:potion{Potion:"minecraft:strong_healing"} 1
execute at @e[tag=vampire,type=armor_stand] run summon minecraft:item ~ ~ ~ {Item:{id:"minecraft:diamond_hoe",Count:1,tag:{Damage:48,display:{Name:"{\"italic\":false,\"translate\":\"item.essence_darkness\"}"},Unbreakable:1,HideFlags:63}}}
tag @e[tag=vampire,type=armor_stand] add a
kill @e[tag=vampire,type=armor_stand]