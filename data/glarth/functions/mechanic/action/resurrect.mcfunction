execute if entity @s[tag=charUnloaded] run function glarth:mechanic/char/load
execute if entity @s[tag=asUnloaded] run function glarth:mechanic/as_load

data modify entity @s CustomName set from entity @s HandItems[0].tag.CustomNameOld
data modify entity @s ArmorItems set from entity @s HandItems[0].tag.ArmorItemsOld
replaceitem entity @s weapon.mainhand minecraft:air
tag @s[tag=deadChar_look] add char_look
tag @s remove deadChar_look
tag @s remove deadChar
tag @s add char