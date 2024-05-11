#172 Dockmaster | Ask Ride [D]
tag @e[tag=dockmaster,type=armor_stand] remove e
tag @e[tag=dockmaster,type=armor_stand] add d
execute as @e[tag=dockmaster,type=armor_stand] at @s run tp @a[gamemode=adventure,distance=..7] 21 64 -84 90 0
tp @e[tag=dockmaster,type=minecraft:armor_stand] 22 64 -86 45 0

# Add Upper Balloon
forceload add 8 24
clone 15 85 31 0 62 17 21 68 -99 masked normal
forceload remove 8 24

# Remove Lower Balloon
fill -70 38 -183 -74 43 -179 air
fill -75 39 -178 -69 39 -184 air
fill -65 44 -188 -79 61 -174 air replace #wool


execute at @s run function glarth:dialogue/dockmaster/lines/trade4


# Close Slime
#fill -9 19 -129 -9 17 -130 slime_block
#fill -10 17 -129 -10 16 -129 minecraft:slime_block
#setblock -10 19 -128 slime_block
#setblock -11 16 -128 slime_block
#setblock -9 17 -131 slime_block

# Open Slime Passage
#fill -5 24 -101 -5 24 -103 air