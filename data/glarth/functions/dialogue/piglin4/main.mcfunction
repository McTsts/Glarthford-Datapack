# Angry
tag @s add angryPiglin
execute if entity @a[gamemode=adventure,distance=..10,nbt={Inventory:[{id:"minecraft:golden_boots",Slot:100b},{id:"minecraft:golden_leggings",Slot:101b},{id:"minecraft:golden_chestplate",Slot:102b},{id:"minecraft:diamond_hoe",Slot:103b,components:{"minecraft:custom_model_data":481}}]}] unless entity @e[tag=char,tag=ghast] run tag @s remove angryPiglin
# Dialogue
execute if entity @s[tag=angryPiglin,tag=!b] run function glarth:dialogue/piglin4/lines/angry
execute if entity @s[tag=angryPiglin,tag=!b] as @a[distance=..5,tag=!tip42] run function glarth:mechanic/tip/42
execute if entity @s[tag=!angryPiglin,tag=!b] run function glarth:dialogue/piglin4/lines/generic
execute if entity @s[tag=b,tag=!z] run function glarth:dialogue/piglin4/lines/generic2
execute if entity @s[tag=z] run schedule function glarth:dialogue/piglin4/lines/zombie 5
execute if entity @s[tag=z] run function glarth:combat/start/boss/piglin