# Pre Stack
execute as @s[tag=!stackSkip] run function glarth:mechanic/fix0/stack

# Add / Remove Zeroes
function glarth:inventory/save
data modify storage glarth:main inv0 set from storage glarth:main inv.all
data modify storage glarth:main inv.all set value []
scoreboard players set changed Temp 0
execute if data storage glarth:main inv0[0] run function glarth:mechanic/fix0/recursive
execute if score changed Temp matches 1 run function glarth:inventory/load

# Post Stack
execute as @s[tag=!stackSkip] run function glarth:mechanic/fix0/stack

# Stack Skip
tag @s[tag=stackSkip2] remove stackSkip
tag @s[tag=stackSkip2] remove stackSkip2
tag @s[tag=stackSkip] add stackSkip2

# Change Items
execute at @s as @e[type=item,distance=..5] if entity @s[nbt={Item:{tag:{0added:1}}}] run data remove entity @s Item.tag.CustomModelData
execute at @s as @e[type=item,distance=..5] if entity @s[nbt={Item:{tag:{0added:1}}}] run data remove entity @s Item.tag.0added