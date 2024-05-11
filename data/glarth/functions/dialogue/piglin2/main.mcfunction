# Angry
tag @s add angryPiglin
execute if entity @a[gamemode=adventure,distance=..10,nbt={Inventory:[{id:"minecraft:golden_boots",Slot:100b},{id:"minecraft:golden_leggings",Slot:101b},{id:"minecraft:golden_chestplate",Slot:102b},{id:"minecraft:diamond_hoe",Slot:103b,tag:{CustomModelData:481}}]}] unless entity @e[tag=char,tag=ghast] run tag @s remove angryPiglin
# Dialogue
execute if entity @s[tag=angryPiglin,tag=!f] run function glarth:dialogue/piglin2/lines/angry
execute if entity @s[tag=angryPiglin,tag=!f] as @a[distance=..5,tag=!tip42] run function glarth:mechanic/tip/42
execute if entity @s[tag=!angryPiglin,tag=!e] run function glarth:dialogue/piglin2/lines/generic
execute if entity @s[tag=!angryPiglin,tag=e,tag=!f] run function glarth:dialogue/piglin2/lines/generic2
execute if entity @s[tag=f,tag=!g] run function glarth:dialogue/piglin2/lines/generic3
execute if entity @s[tag=g,tag=!h] run function glarth:dialogue/piglin2/lines/generic4
execute if entity @s[tag=z] run function glarth:dialogue/piglin2/lines/zombie
execute if entity @s[tag=!angryPiglin] run function glarth:dialogue/piglin2/trades/all