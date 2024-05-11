execute if entity @s[tag=charCNV] run data merge entity @s {Marker:0,CustomNameVisible:1}
execute unless entity @s[tag=charCNV] run data merge entity @s {Marker:0,CustomNameVisible:0}
tag @s remove charCNV
tag @s remove charUnloaded