#79 Vampire | Health Potion to Darkness Essence [A]
function glarth:dialogue/vampire/lines/trade1
clear @s minecraft:potion[potion_contents={potion:"healing"}] 1
clear @s[scores={iHPotion=..0}] minecraft:potion[potion_contents={potion:"strong_healing"}] 1
clear @s[scores={iHPotion=..0,iHPotionS=..0}] minecraft:potion[potion_contents={potion:"minecraft:healing"}] 1
clear @s[scores={iHPotion=..0,iHPotionS=..0,iHPotion2=..0}] minecraft:potion[potion_contents={potion:"minecraft:strong_healing"}] 1
execute at @e[tag=vampire,type=armor_stand] run function glarth:items/util/summon {item:"trades.vampire.1"} 
tag @e[tag=vampire,type=armor_stand] add a
kill @e[tag=vampire,type=armor_stand]