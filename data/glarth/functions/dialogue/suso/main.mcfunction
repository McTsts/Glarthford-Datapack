# force dog 
execute as @a run function glarth:mechanic/dog_skull
execute as @a[nbt={Inventory:[{Slot:103b,id:"minecraft:diamond_hoe",tag:{isDogSkull:1}}]},gamemode=adventure] at @s run function glarth:mechanic/char/skull_dog

# Cycle
function glarth:dialogue/suso/cycle
# Dialogue
execute if score cycle Temp matches 0 if entity @s[tag=!d,tag=!gary,tag=g] run function glarth:dialogue/suso/lines/night
execute if score cycle Temp matches 1 if entity @s[tag=!d,tag=!gary,tag=g] run function glarth:dialogue/suso/lines/day
execute if entity @s[tag=!d,tag=!gary,tag=!g] run function glarth:dialogue/suso/lines/generic
execute if entity @s[tag=gary,tag=!dogSkull,tag=!e] run function glarth:dialogue/suso/lines/gary1
execute if entity @s[tag=e] run function glarth:dialogue/suso/lines/gary3
execute if entity @s[tag=gary,tag=dogSkull,tag=!e] run function glarth:dialogue/suso/lines/gary2
# Trades
execute if entity @s[tag=!gary] run function glarth:dialogue/suso/trades/all

# show name
data merge entity @s {CustomNameVisible:1}