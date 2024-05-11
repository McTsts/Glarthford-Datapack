#World
	# Bee Hives
		clone -15 18 -259 -15 18 -259 -14 29 -258
		clone 41 18 -166 41 18 -166 40 29 -163
		clone 105 18 -219 105 18 -219 103 29 -217
	# Druid Lily Pads
		setblock 51 38 -129 minecraft:lily_pad
		setblock 53 38 -129 minecraft:lily_pad
		setblock 52 38 -127 minecraft:lily_pad
		setblock 52 38 -125 minecraft:lily_pad
    # repair barrier berries that may or may not break (1.19)
        clone -3 20 -232 -4 18 -234 -5 28 -233
        clone -4 19 -205 -4 18 -205 -4 27 -205
    # repair richard carpets (1.19)
        fill 29 23 -218 27 23 -217 minecraft:brown_carpet
	# close fence gates in walls (1.17)
		fill 35 33 -222 33 33 -170 minecraft:spruce_fence_gate[facing=west,in_wall=false,open=false,powered=false] replace minecraft:spruce_fence_gate
		fill 33 33 -168 -19 33 -170 minecraft:spruce_fence_gate[facing=north,in_wall=false,open=false,powered=false] replace minecraft:spruce_fence_gate
		fill -21 33 -170 -21 34 -222 minecraft:spruce_fence_gate[facing=east,in_wall=false,open=false,powered=false] replace minecraft:spruce_fence_gate
		fill -19 33 -224 33 33 -222 minecraft:spruce_fence_gate[facing=south,in_wall=false,open=false,powered=false] replace minecraft:spruce_fence_gate
	# Adventurer Hut Colission trapdoor
		setblock 18 27 -267 minecraft:iron_trapdoor[facing=north,half=bottom,open=false,powered=false,waterlogged=false]
	# Gate Fix
		fill 34 31 -194 34 30 -198 minecraft:spruce_fence[east=false,north=true,south=true,waterlogged=false,west=false] replace minecraft:barrier
		fill 5 31 -223 9 30 -223 minecraft:spruce_fence[east=true,north=false,south=false,waterlogged=false,west=true] replace minecraft:barrier
		fill -20 31 -198 -20 30 -194 minecraft:spruce_fence[east=false,north=true,south=true,waterlogged=false,west=false] replace minecraft:barrier
	#Doors
		setblock 28 25 -207 air
		setblock 5 24 -267 air
		setblock -9 24 -213 air
		setblock -46 25 -194 air
		setblock 3 26 -196 air
		setblock -55 20 -203 air
		setblock 6 25 -267 air
		setblock 74 24 -256 lever[facing=north,powered=false,face=wall] destroy
	# Deep Mines	
		clone 135 28 -122 133 28 -138 133 45 -182
		clone 148 15 -186 147 15 -192 147 55 -192
		clone 157 68 -173 149 65 -183 149 39 -183
		setblock 150 39 -174 minecraft:ladder[facing=west]
	# Waterfall Skulls
		setblock 52 28 -130 minecraft:skeleton_skull[rotation=14]{}
		setblock 50 28 -127 minecraft:skeleton_skull[rotation=14]{}
	# Gates
		fill 34 26 -194 34 29 -198 minecraft:spruce_fence[north=true,south=true]
		fill -20 29 -194 -20 26 -198 minecraft:spruce_fence[north=true,south=true]
		fill 5 29 -223 9 26 -223 minecraft:spruce_fence[east=true,west=true]
	#Other
		setblock -46 25 -160 minecraft:oak_trapdoor[facing=south,half=bottom,open=true,powered=false,waterlogged=false]
		fill -47 32 -196 -47 33 -196 minecraft:green_stained_glass_pane[south=true,north=true]
		fill 22 29 -208 23 28 -208 minecraft:green_stained_glass_pane[west=true,east=true]
		fill -10 32 -211 -10 31 -211 minecraft:green_stained_glass_pane[north=true,south=true]
		fill 28 27 -219 28 26 -219 minecraft:green_stained_glass_pane[east=true,west=true]
		fill 18 32 -213 18 31 -213 minecraft:green_stained_glass_pane[north=true,south=true]
		setblock 28 27 -218 minecraft:black_wall_banner[facing=south]
		clone 46 19 -172 37 15 -181 45 23 -190
		clone 56 20 -194 54 17 -195 64 26 -194
		fill 68 26 -157 68 29 -155 minecraft:infested_cracked_stone_bricks replace air
		clone 67 21 -155 67 19 -157 70 26 -157
		fill -69 30 -208 -69 27 -210 minecraft:iron_bars[south=true,north=true]
		fill 153 28 -157 153 26 -159 minecraft:iron_bars[north=true,south=true]
		fill -78 26 -212 -83 26 -204 minecraft:soul_sand replace air
		fill -68 26 -200 -61 26 -189 minecraft:soul_sand replace air
		fill -13 25 -177 -11 25 -178 minecraft:soul_sand
		fill 163 28 -160 163 26 -157 air
		fill 169 29 -153 167 29 -153 air
		setblock -132 30 -167 air
		setblock -130 31 -241 air
		setblock -1 24 -173 minecraft:air
		setblock 2 27 -334 minecraft:end_portal_frame[facing=south,eye=false]
		fill 18 26 -106 13 24 -106 air
		fill 3 27 -331 3 27 -328 air
		setblock 30 26 -172 sand
		setblock 92 32 -174 air
		setblock -219 26 -198 air
		setblock -3 20 -105 air
		fill 77 23 -255 77 24 -255 iron_bars[east=true,west=true]
		setblock 76 23 -256 minecraft:air
		clone 85 42 -272 82 33 -276 69 27 -251
		fill 4 26 -197 3 26 -197 air
		fill 3 27 -328 3 27 -331 air
		fill 20 19 -101 24 21 -99 gravel replace air
		function glarth:mechanic/animation/meteor/undo
	#Torch Character Reset
		setblock -6 27 -269 air
		setblock -219 26 -198 air
		setblock -3 20 -105 air
		setblock -65 82 -533 air
		setblock 92 32 -174 air
		setblock -67 29 -170 minecraft:air
	#Apples
		execute unless score season winter matches 1 run function glarth:mechanic/animation/apples/setup
		execute if score season winter matches 1 run function glarth:mechanic/animation/apples/winter
	# Ruins of Ascension
		clone 67 7 -243 63 1 -249 76 27 -240
		setblock 77 30 -236 grass
		setblock 78 28 -238 grass
		clone 94 5 -229 90 1 -230 86 27 -222
		setblock 86 28 -222 minecraft:tripwire_hook
	#Church
		clone 12 17 -178 6 1 -184 -9 34 -188
		clone -12 20 -180 -16 18 -181 -15 26 -178
		fill -8 26 -181 -17 30 -175 minecraft:structure_void replace minecraft:barrier
		clone 1 19 -191 -2 18 -193 -2 26 -192
		fill 2 26 -192 1 29 -196 minecraft:air
		fill 3 29 -195 3 26 -193 minecraft:air
		fill 4 29 -194 4 26 -194 minecraft:air
		fill 1 29 -191 -2 27 -191 minecraft:air
		fill 0 29 -190 -1 27 -190 minecraft:air
		fill 0 29 -195 0 27 -192 minecraft:air
		fill -1 29 -194 -1 27 -192 minecraft:air
		fill -2 29 -193 -2 27 -192 minecraft:air
		fill -3 29 -192 -3 27 -192 minecraft:air
		clone 1 18 -193 1 18 -193 1 26 -192
		clone 13 9 -177 5 9 -185 -10 42 -189
	# Guard Tower
		clone 26 12 -190 18 1 -198 22 34 -189
	#Ruby
		setblock 152 48 -186 minecraft:lapis_block
		setblock 155 50 -184 minecraft:lapis_block
		setblock 153 48 -182 minecraft:lapis_block
	# frog lilypads (1.17)
		execute unless score season winter matches 1 run setblock -38 26 -145 minecraft:lily_pad
		execute unless score season winter matches 1 run setblock -3 27 -151 minecraft:lily_pad
		execute unless score season winter matches 1 run setblock -18 27 -144 minecraft:lily_pad
	#Field
		fill 10 26 -253 23 26 -243 air replace wheat
		fill 10 26 -253 23 26 -243 air replace carrots
		fill 10 26 -253 23 26 -243 air replace beetroots
		fill 10 25 -253 23 25 -243 minecraft:farmland[moisture=7] replace dirt
		fill 10 26 -250 23 26 -253 wheat[age=7] replace air
		fill 10 26 -249 24 26 -247 carrots[age=7] replace air
		fill 10 26 -245 23 26 -243 beetroots[age=3] replace air
		fill 13 26 -246 16 26 -246 minecraft:beetroots[age=3] replace air
	#Gravel
		fill 97 34 -170 99 32 -170 air
		fill 99 25 -169 99 26 -169 minecraft:gravel
		fill 99 25 -168 100 25 -168 minecraft:gravel
		fill 99 26 -165 96 26 -165 minecraft:gravel
		fill 98 27 -165 96 27 -165 minecraft:gravel
		fill -13 15 -128 -16 15 -132 gravel replace air
		fill -5 18 -129 4 18 -115 gravel replace air
		fill -1 21 -92 9 21 -95 gravel replace air
		setblock 11 22 -97 gravel
		setblock -6 19 -99 gravel
		setblock 14 23 -103 gravel
		fill 14 23 -106 16 23 -108 gravel
		fill 2 25 -111 4 25 -110 gravel replace air
		fill 6 26 -105 -5 26 -98 gravel replace air
		setblock 9 24 -113 gravel
		setblock 96 28 -165 minecraft:gravel
		setblock 96 27 -166 minecraft:gravel
		setblock 96 26 -167 minecraft:gravel
		fill 97 25 -166 98 25 -166 minecraft:gravel
		setblock 97 25 -167 minecraft:gravel
		setblock 98 26 -166 minecraft:dark_oak_pressure_plate[powered=true]
		setblock 96 27 -167 minecraft:dark_oak_pressure_plate[powered=true]
		setblock 130 27 -169 minecraft:stone_button[face=floor]
		fill 97 33 -165 98 33 -165 minecraft:gravel
		setblock 99 32 -165 minecraft:gravel
		fill 97 33 -166 97 32 -166 minecraft:gravel
		setblock 98 32 -167 minecraft:gravel
		fill 97 33 -168 97 32 -168 gravel
		fill 98 34 -168 99 32 -168 minecraft:gravel
		fill 98 32 -169 99 32 -169 minecraft:gravel
		setblock 99 33 -169 minecraft:gravel
		fill 97 32 -167 97 34 -167 gravel
	# Additional Slime Gravel 
		setblock 23 19 -98 gravel
		setblock 9 17 -117 minecraft:gravel
		setblock -5 19 -99 minecraft:gravel
		setblock -7 19 -99 minecraft:gravel
		setblock 9 21 -91 minecraft:gravel
		setblock 10 22 -97 minecraft:gravel
		setblock 10 22 -98 minecraft:gravel
		setblock 11 22 -98 minecraft:gravel
		setblock 13 23 -107 minecraft:gravel
		setblock 2 25 -109 minecraft:gravel
		setblock 11 27 -100 minecraft:gravel
		setblock 11 28 -101 minecraft:gravel
		setblock 11 28 -100 minecraft:gravel
		setblock 16 18 -97 minecraft:gravel
		setblock -5 19 -100 minecraft:gravel
		setblock -6 19 -98 minecraft:gravel
		setblock -4 20 -95 minecraft:gravel
		setblock -3 20 -96 minecraft:gravel
		setblock 0 21 -91 minecraft:gravel
		setblock 4 25 -102 minecraft:gravel
		setblock 3 24 -102 minecraft:gravel
		setblock 2 24 -102 minecraft:gravel
		setblock 2 24 -101 minecraft:gravel
		setblock -12 23 -102 minecraft:gravel
		setblock -12 24 -102 minecraft:gravel
		setblock -12 25 -102 minecraft:gravel
		setblock -11 25 -103 minecraft:gravel
		setblock -13 26 -101 minecraft:gravel
		setblock 14 29 -98 minecraft:gravel
		setblock -3 26 -97 minecraft:gravel
	#Gravel Baker
		fill 18 20 -221 17 20 -221 minecraft:gravel
		fill 17 19 -221 16 19 -221 minecraft:gravel
		fill 18 19 -220 17 19 -220 minecraft:gravel
	#Slime
		fill -6 22 -102 -4 20 -102 minecraft:slime_block
		fill -5 20 -104 -6 20 -104 minecraft:slime_block
		fill -6 21 -103 -5 21 -103 minecraft:slime_block
		fill -6 20 -103 -4 20 -103 minecraft:slime_block
	#End Reset
		clone 57 20 -200 51 17 -206 42 25 -206
		clone 29 18 -160 25 17 -165 31 26 -165
		clone -23 19 -135 -27 17 -139 -33 25 -139
	#Fallen Ship Reset
		fill -11 23 -135 -12 23 -134 water replace dark_prismarine_slab
		fill -11 25 -136 -6 26 -146 water replace minecraft:dark_prismarine_slab
		fill -4 26 -136 -1 25 -138 water replace minecraft:dark_prismarine_slab
		fill -2 27 -137 -6 29 -142 air replace dark_prismarine_slab
		fill -2 27 -137 -6 29 -142 air replace barrier
	# Tulip Reset
		function glarth:mechanic/setup/tulip_fix