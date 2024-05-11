tag @e[tag=piglin2] add h
tag @e[tag=piglin1] add d
tag @e[tag=piglin3] add d
tag @e[tag=piglin4] add d
tag @e[tag=piglin5] add d
tag @e[tag=piglin1] add piglin
tag @e[tag=piglin2] add piglin
tag @e[tag=piglin3] add piglin
tag @e[tag=piglin4] add piglin
tag @e[tag=piglin5] add piglin
tp @e[tag=piglin2] -43 27 -194 90 0
tp @e[tag=piglin1] -40 27 -194.0 90 0
tp @e[tag=piglin3] -40 27 -193.0 90 0
tp @e[tag=piglin4] -41 27 -193 90 0
tp @e[tag=piglin5] -41 27 -195 90 0
tp @e[tag=worker] -36 27 -192 120 0

setblock -41 27 -195 minecraft:barrier
setblock -41 27 -193 minecraft:barrier
fill -40 28 -193 -40 28 -195 minecraft:barrier

execute as @e[tag=piglin] run tag @s add tbcLoc013
execute as @e[tag=piglin] run data merge entity @s {NoGravity:1}

tag @e[tag=events] add nether4