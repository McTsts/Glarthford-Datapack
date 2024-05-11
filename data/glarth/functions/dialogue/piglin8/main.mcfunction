# Angry
tag @s add angryPiglin
execute if entity @a[gamemode=adventure,distance=..10,nbt={Inventory:[{id:"minecraft:golden_boots",Slot:100b}]}] run tag @s remove angryPiglin
execute if entity @a[gamemode=adventure,distance=..10,nbt={Inventory:[{id:"minecraft:golden_leggings",Slot:101b}]}] run tag @s remove angryPiglin
execute if entity @a[gamemode=adventure,distance=..10,nbt={Inventory:[{id:"minecraft:golden_chestplate",Slot:102b}]}] run tag @s remove angryPiglin
execute if entity @a[gamemode=adventure,distance=..10,nbt={Inventory:[{id:"minecraft:diamond_hoe",Slot:103b,tag:{CustomModelData:481}}]}] run tag @s remove angryPiglin
# Dialogue
execute if entity @s[tag=angryPiglin] run schedule function glarth:dialogue/piglin8/lines/angry 30
execute if entity @s[tag=!angryPiglin] run schedule function glarth:dialogue/piglin8/lines/generic 30
# Fight
function glarth:combat/start/default/piglin