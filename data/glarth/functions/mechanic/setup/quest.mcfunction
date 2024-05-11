# Quest Remove
	# Reset Beacons
		setblock 94 46 -183 stone
		setblock 61 48 -151 stone
		setblock -78 46 -208 stone
		setblock -1 46 -334 stone
		setblock 6 43 -108 stone
		setblock 110 26 -255 oak_planks
		setblock -53 20 -194 diorite
		setblock -1 46 -334 stone
	# !Q2&7 remove a lantern
		setblock 11 27 -201 air
	# !Q3 close tower
		fill 22 45 -181 30 45 -181 minecraft:barrier
		fill 30 45 -181 30 45 -189 minecraft:barrier
		fill 30 45 -189 22 45 -189 minecraft:barrier
		fill 22 45 -189 22 45 -181 minecraft:barrier
	# !Q6 Wall Destroyed 
		clone 34 10 -174 30 2 -183 32 26 -184
	# !Q6 Merchant Destroyed 
		setblock 1 26 -201 air
		setblock 3 27 -201 air
		setblock 2 29 -202 air
		setblock 2 29 -200 air
		setblock 3 29 -200 air
		setblock 1 29 -202 air
		fill 1 29 -201 2 29 -201 white_wool
		setblock 2 30 -202 minecraft:blue_carpet
		setblock 2 29 -202 minecraft:blue_wool
		setblock 2 30 -200 minecraft:blue_carpet
		setblock 2 29 -200 minecraft:blue_wool
		setblock 1 29 -202 minecraft:blue_carpet
	# !Q4 Block Ice Spike Field 
		fill 3 29 -272 8 26 -283 minecraft:barrier replace air
	# !Q6 Cart Destroyed 
		setblock -30 29 -238 air
		setblock -30 28 -241 air
		setblock -30 30 -239 air
		setblock -31 28 -240 air
		setblock -31 29 -239 air
	# !Q6 Apple Destroyed 
		setblock -7 27 -268 air
		setblock -7 27 -270 air
		setblock -8 28 -268 air
	# !Q6 Brewery Destroyed 
		clone -71 21 -169 -78 18 -173 -56 34 -191
		setblock -53 31 -188 air
		setblock -52 32 -189 air
		fill -53 31 -190 -52 31 -190 air
	# !Q6 Tent Destroyed
		setblock 17 27 -266 air
		setblock 17 26 -264 air
		setblock 21 26 -265 air
		setblock 19 26 -263 air
		setblock 18 28 -266 air
	# !Q0 MrK Barriers
		fill 76 28 -211 79 29 -209 air replace barrier
	# !Q9 Brewery Basement TP
		setblock -59 22 -189 minecraft:oak_button[face=wall,facing=east,powered=false]
	# !Q4 Ice Spike Field 
		fill 5 27 -271 5 26 -271 minecraft:barrier
	# !Q1 Roberto Forced
		fill -9 26 -199 -7 28 -199 minecraft:air replace barrier
	# !Q6 Grimsbane Cave Barrier
		setblock -71 33 -263 minecraft:barrier
	# !Q5 Field
		fill 10 26 -243 23 26 -253 air replace slime_block
	# !Credits
		fill 20 53 -115 -15 83 -92 slime_block replace lime_wool
	# !Q9 Brick Posters
		setblock 18 27 -185 minecraft:air
		setblock 0 27 -172 minecraft:air
		setblock -49 30 -265 minecraft:air
	# !Observatory 
		setblock -76 38 -253 minecraft:lantern[hanging=false]
	# !Q5 Balloon Posters 
		setblock -69 30 -172 minecraft:air
		setblock 8 27 -265 minecraft:air
	# !Q5 Upper Balloon
		fill 35 91 -85 21 68 -99 air replace #wool
		fill 25 68 -95 31 74 -89 air
	# !Q5 Lower Balloon
		setblock -72 35 -181 minecraft:structure_block[mode=load]{metadata:"",mirror:"NONE",ignoreEntities:1b,powered:0b,seed:0L,author:"_tsts_",rotation:"NONE",posX:-7,mode:"LOAD",posY:3,sizeX:15,posZ:-7,integrity:1.0f,showair:0b,name:"minecraft:balloon_l",sizeY:24,sizeZ:15,showboundingbox:1b}
		setblock -72 35 -180 redstone_block
		execute if score season winter matches 1 run fill -76 38 -186 -81 43 -177 minecraft:dark_oak_leaves replace minecraft:spruce_leaves
	# !Q7 Torch 
		clone 10 26 -261 10 26 -261 8 26 -262
	# !Q4 End 
		function glarth:mechanic/setup/extra/hide_end
	# !Q8 Unlock Brewery 
		setblock -48 31 -195 minecraft:blue_glazed_terracotta[facing=north]
		setblock -48 32 -196 air
		setblock -41 27 -195 minecraft:air
		setblock -41 27 -193 minecraft:air
		fill -40 28 -193 -40 28 -195 minecraft:air
		setblock -49 31 -195 air
	# !Q9 Thief Trail
		setblock -19 27 -262 air
		setblock -20 28 -264 air
		setblock -18 28 -265 air
		setblock -19 28 -267 air
		setblock -20 29 -269 air
		setblock -21 28 -271 air
		setblock -23 26 -272 air
		setblock -21 27 -259 air
		setblock -25 27 -256 air
		setblock -28 27 -251 air
	# !Q9 Christmas Lights
		setblock 7 32 -188 air
		setblock 14 32 -197 air
		setblock 6 32 -193 air
		setblock 9 32 -195 air
	# !Q9 Junkyard Banners
		setblock -59 32 -242 air
		setblock -41 31 -238 air
		setblock -31 32 -253 air
		setblock -28 33 -267 air
	# !Q9 Brewery Door Lever
		setblock -47 28 -193 air destroy
	# !Q9 Apple Lover
		fill -7 27 -265 -12 28 -271 minecraft:birch_pressure_plate[powered=true] replace minecraft:structure_void
		setblock 13 26 -204 air
	# !Q9 Junkyard + Windmill
		clone -20 23 -286 -31 11 -296 -47 27 -273
		clone 24 22 -243 14 1 -253 14 25 -239
	# !Q2 Close Mines
		fill 103 32 -171 103 34 -173 stone
		setblock 103 33 -173 minecraft:gold_ore
		setblock 103 34 -172 andesite
		setblock 103 33 -171 andesite
		setblock 103 32 -173 minecraft:gold_ore
		setblock 103 32 -171 minecraft:cobblestone
		fill 65 33 -193 65 31 -195 minecraft:barrier
		clone 103 38 -171 102 36 -173 102 32 -173
	# !Q5 Remove Yellow Shulker Box For Bucket Merchant
		setblock 3 26 -201 spruce_planks
	# !Q3 Remove Fire
		fill 9 27 -210 15 33 -215 air replace fire
		fill 16 27 -209 18 28 -207 air replace fire
		fill 10 26 -217 12 28 -219 air replace fire
		fill 12 26 -208 11 26 -205 air replace fire
		fill 12 29 -203 14 26 -204 air replace fire
		fill 17 33 -220 22 32 -211 air replace fire
		fill 10 26 -221 9 35 -225 air replace fire
		fill 18 26 -206 16 28 -210 air replace fire
		clone 16 20 -211 14 18 -212 14 32 -212
	# !Q3 Close Up Nether
		setblock -84 25 -204 minecraft:netherrack
		setblock -83 26 -205 minecraft:grass_block
		setblock -81 26 -203 minecraft:grass_block
	# !Q3 Close Up Nether Beacons
		setblock -132 33 -167 stone
		setblock -130 33 -241 stone
	# !Q4 Reset End Portal
		setblock 2 27 -334 minecraft:end_portal_frame[eye=false,facing=south]
		fill 3 27 -331 3 27 -328 air
	# !Q5 Close Observatory
		clone -61 19 -260 -63 18 -263 -64 29 -263
	# !Q5 Close Up Slime Passage
		fill -9 19 -129 -9 17 -130 slime_block
		fill -10 17 -129 -10 16 -129 minecraft:slime_block
		setblock -10 19 -128 slime_block
		setblock -11 16 -128 slime_block
		setblock -9 17 -131 slime_block
	# Close Slime Passage
		fill -5 24 -101 -5 24 -103 stone
		setblock -5 24 -103 minecraft:andesite
	# !Q5 Slime Reset
		fill -11 33 -221 19 25 -195 minecraft:structure_void replace slime_block
		fill 27 30 -178 28 30 -178 air
		fill -16 26 -199 -16 26 -198 air
		setblock 20 27 -174 air
		setblock 27 25 -174 air
		setblock 21 28 -174 air
		setblock 32 26 -178 air
		setblock 4 26 -175 air
		setblock 3 28 -170 air
		setblock 19 26 -184 air
		setblock 30 26 -198 air
		setblock 33 27 -192 air
		setblock -6 26 -193 air
		setblock -9 26 -200 air
		setblock -18 26 -193 air
# !Q5 Slime Flow Reset
		setblock 10 28 -211 air
		setblock 10 29 -213 air
		setblock 3 29 -212 air
		setblock 2 28 -207 air
		setblock 13 28 -201 air
		setblock -6 28 -199 air
		setblock 21 27 -175 air
		setblock 27 29 -177 air
		setblock 29 29 -178 air
		setblock 5 28 -176 air
		setblock 18 28 -182 air
		setblock 21 29 -200 air
		setblock -12 27 -193 air
	# !Q4 Campfire Assassin
		setblock -34 33 -169 air
		setblock -34 32 -169 minecraft:oak_planks
	# !Q7 Shed 
		setblock -6 27 -176 minecraft:stone_bricks
		setblock -6 26 -177 air
	# !Q7 Halloween Decoration
		setblock 51 38 -131 minecraft:air
		setblock -56 35 -134 minecraft:air
		fill 1 31 -213 1 31 -212 air
		fill -82 42 -246 -82 43 -246 air
		setblock -36 27 -136 minecraft:green_candle[candles=3,lit=true,waterlogged=false]
		setblock -47 28 -135 minecraft:green_candle[candles=3,lit=true,waterlogged=false]
		setblock -42 27 -154 air
		setblock -54 27 -144 air
		setblock -78 40 -243 air
		setblock -3 26 -216 air
		setblock 8 26 -185 air
		setblock 24 27 -206 air
		setblock 22 27 -192 air
		clone 16 24 -211 14 24 -211 14 27 -213
	# !Q7 Grandma
		clone -6 18 -255 -8 18 -255 -7 26 -255
	# !Q7 Extra Torches
		execute if block 8 27 -262 torch run setblock 8 27 -262 short_grass
		setblock -75 42 -240 air
		setblock 5 27 -197 structure_void
		setblock 10 27 -203 minecraft:birch_pressure_plate[powered=true]
	# !Q4 Poster Reset
		# End Posters Town
		setblock 10 29 -212 air
		setblock 20 26 -194 air
		setblock 22 26 -193 air
		setblock 27 27 -189 air
		setblock 24 29 -189 air
		setblock 8 27 -185 air
		setblock 6 27 -185 air
		setblock 21 27 -175 air
		setblock 8 28 -170 air
		setblock -12 27 -173 air
		setblock -3 27 -190 air
		setblock -11 27 -194 air
		setblock -17 27 -194 air
		setblock 3 27 -218 air
		setblock 3 28 -214 air
		setblock 3 27 -211 air
		setblock 3 27 -208 air
		setblock 5 26 -203 air
		setblock 4 26 -201 air
		setblock 21 28 -200 air
		setblock 30 28 -182 air
		setblock -2 27 -181 air
		setblock -19 27 -198 air
		setblock -10 27 -199 air
		setblock -6 27 -199 air
		setblock 1 26 -198 air
		setblock 3 26 -200 air
		setblock 10 26 -201 air
		setblock 12 26 -199 air
		setblock 14 26 -198 air
		setblock 4 27 -221 air
		setblock 10 28 -221 air
		setblock 20 29 -206 chain
		setblock 28 27 -177 air
		setblock 9 27 -176 air
		setblock 5 28 -176 air
		setblock -7 28 -180 air
		setblock -11 27 -180 air
		setblock -17 28 -180 air
		setblock 9 26 -202 air
		setblock 11 26 -200 air
		setblock 24 28 -200 air
		setblock 32 28 -193 air
		setblock 33 27 -179 air
		setblock 33 28 -174 air
		setblock 18 27 -185 air
		setblock 11 27 -214 air
		setblock -43 28 -192 air
		setblock -40 28 -196 air
		setblock -42 28 -190 air
		setblock -45 28 -204 air
		setblock 0 27 -244 air
		setblock 0 28 -247 air
		setblock 8 27 -265 air
		setblock 8 26 -247 air
		setblock 41 27 -190 air
		setblock -21 29 -124 air
		setblock -67 31 -179 air
		setblock 25 28 -152 air
		setblock 70 28 -254 air
# Quest Add
	execute if score quest Stats matches 1 run function glarth:mechanic/setup/quest/1
	execute if score quest Stats matches 2 run function glarth:mechanic/setup/quest/2
	execute if score quest Stats matches 3 run function glarth:mechanic/setup/quest/3
	execute if score quest Stats matches 4 run function glarth:mechanic/setup/quest/4
	execute if score quest Stats matches 5 run function glarth:mechanic/setup/quest/5
	execute if score quest Stats matches 6 run function glarth:mechanic/setup/quest/6
	execute if score quest Stats matches 7 run function glarth:mechanic/setup/quest/7
	execute if score quest Stats matches 8 run function glarth:mechanic/setup/quest/8
	execute if score quest Stats matches 9 run function glarth:mechanic/setup/quest/9
	execute if score quest Stats matches 10 run function glarth:mechanic/setup/quest/10
	execute if score quest Stats matches 11 run function glarth:mechanic/setup/quest/11
# For Each
	#Open Beacon
		execute if score quest Stats matches 1 run setblock 94 46 -183 air	
		execute if score quest Stats matches 2 run setblock 61 48 -151 air
		execute if score quest Stats matches 3 run setblock -78 46 -208 air
		execute if score quest Stats matches 4 run setblock -1 46 -334 air
		execute if score quest Stats matches 5 run setblock 6 43 -108 air
		execute if score quest Stats matches 6 run setblock -78 46 -208 air
		execute if score quest Stats matches 7 run setblock 110 26 -255 air
		execute if score quest Stats matches 8 run setblock -78 46 -208 air
		execute if score quest Stats matches 9 run setblock -53 20 -194 diorite_slab[type=top]
	#Task Message
		execute if score quest Stats matches 1 unless entity @a[scores={playerid=1,charSpouse=2}] run tellraw @a ["",{"translate":"task.1.a","color":"green"}]
		execute if score quest Stats matches 1 if entity @a[scores={playerid=1,charSpouse=2}] run tellraw @a ["",{"translate":"task.1.b","color":"green"}]
		execute if score quest Stats matches 2 run tellraw @a ["",{"translate":"task.2","color":"green"}]
		execute if score quest Stats matches 3 run tellraw @a ["",{"translate":"task.3","color":"green"}]
		execute if score quest Stats matches 4 if score forceGary Stats matches 0 run tellraw @a ["",{"translate":"task.4","color":"green"}]
		execute if score quest Stats matches 5 run tellraw @a ["",{"translate":"task.5","color":"green"}]
		execute if score quest Stats matches 6 run tellraw @a ["",{"translate":"task.6","color":"green"}]
		execute if score quest Stats matches 7 run tellraw @a ["",{"translate":"task.7","color":"green"}]
		execute if score quest Stats matches 8 run tellraw @a ["",{"translate":"task.8","color":"green"}]
		execute if score quest Stats matches 9 run tellraw @a ["",{"translate":"task.9","color":"green"}]
		execute if score quest Stats matches 4 if score forceGary Stats matches 1 run tellraw @a ["",{"translate":"task.10","color":"green"}]
		execute if score quest Stats matches 11 run tellraw @a ["",{"translate":"task.11","color":"green"}]
	#Newspaper
		execute if score quest Stats matches 1 run clone -11 18 -202 -11 18 -202 -12 30 -202
		execute if score quest Stats matches 2 run clone -11 18 -204 -11 18 -204 -12 30 -202
		execute if score quest Stats matches 3 run clone -11 18 -206 -11 18 -206 -12 30 -202
		execute if score quest Stats matches 4 run clone -11 18 -208 -11 18 -208 -12 30 -202
		execute if score quest Stats matches 5 run clone -11 18 -210 -11 18 -210 -12 30 -202
		execute if score quest Stats matches 6 run clone -11 18 -212 -11 18 -212 -12 30 -202
		execute if score quest Stats matches 7 run clone -11 18 -214 -11 18 -214 -12 30 -202
		execute if score quest Stats matches 8 run clone -11 18 -216 -11 18 -216 -12 30 -202
		execute if score quest Stats matches 9 run clone -11 18 -218 -11 18 -218 -12 30 -202
		
