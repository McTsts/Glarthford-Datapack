#173 Dockmaster | Ask Ride [E]
tag @e[tag=dockmaster,type=armor_stand] remove d
tag @e[tag=dockmaster,type=armor_stand] add e
execute as @e[tag=dockmaster,type=armor_stand] at @s run tp @a[gamemode=adventure,distance=..7] -71 39 -181 90 0
tp @e[tag=dockmaster,type=minecraft:armor_stand] -73 39 -181 -90 0

# Remove Upper Balloon
fill 35 91 -85 21 68 -99 air replace #wool
fill 25 68 -95 31 74 -89 air

# Add Lower Balloon
setblock -72 35 -181 minecraft:structure_block[mode=load]{metadata:"",mirror:"NONE",ignoreEntities:1b,powered:0b,seed:0L,author:"_tsts_",rotation:"NONE",posX:-7,mode:"LOAD",posY:3,sizeX:15,posZ:-7,integrity:1.0f,showair:0b,name:"minecraft:balloon_l",sizeY:24,sizeZ:15,showboundingbox:1b}
setblock -72 35 -180 redstone_block


execute at @s run function glarth:dialogue/dockmaster/lines/trade4


# Open Ancient Volcano
#fill -9 19 -129 -9 17 -130 air
#fill -10 17 -129 -10 16 -129 air
#setblock -10 19 -128 air
#setblock -11 16 -128 air
#setblock -9 17 -131 air

# Close Slime Passage
#fill -5 24 -101 -5 24 -103 stone
#setblock -5 24 -103 minecraft:andesite