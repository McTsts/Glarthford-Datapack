tag @s remove charCNV
execute if data entity @s {CustomNameVisible:1b} run tag @s add charCNV
data merge entity @s {Marker:1,CustomNameVisible:0}
tag @s add charUnloaded