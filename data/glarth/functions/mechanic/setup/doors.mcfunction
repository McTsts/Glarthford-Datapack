#Doors
	# Custom
		function glarth:mechanic/door/mode_normal
		execute unless score lowGraphics Stats matches 1 run function glarth:mechanic/door/mode_animated
		function glarth:mechanic/door/iron_doors
	#Replace
		setblock 26 43 -185 minecraft:oak_trapdoor
		setblock -13 30 -204 minecraft:oak_trapdoor[facing=south]
		setblock 2 26 -213 minecraft:spruce_fence_gate[facing=west]
		setblock -15 26 -212 minecraft:spruce_fence_gate[facing=north]
		fill 79 27 -257 79 27 -258 minecraft:oak_trapdoor[facing=east]
		setblock -5 26 -213 minecraft:oak_trapdoor[facing=west,half=top]
		setblock 28 28 -148 minecraft:dark_oak_fence_gate
		setblock 28 28 -151 minecraft:oak_fence_gate[facing=north]
		setblock 30 28 -151 minecraft:oak_fence_gate[facing=north] 
		setblock 32 28 -150 minecraft:oak_fence_gate[facing=east]
		setblock 29 28 -152 minecraft:oak_fence_gate[facing=south,open=true]
		setblock 9 26 -248 minecraft:spruce_fence_gate[facing=west]
		setblock -1 28 -132 minecraft:oak_trapdoor[half=bottom,facing=east]
		setblock -12 27 -132 minecraft:oak_fence_gate[facing=north]
		setblock 16 25 -216 minecraft:oak_trapdoor[facing=north,half=top]
		setblock 15 25 -221 minecraft:oak_trapdoor[facing=south,half=top]
		setblock -46 26 -160 minecraft:oak_trapdoor[facing=north,half=bottom]
		setblock -46 25 -156 minecraft:oak_trapdoor[facing=north,half=top,open=true,waterlogged=true]
		setblock -36 25 -139 minecraft:spruce_trapdoor[half=top,open=false,powered=false,waterlogged=true,facing=east]
		setblock -36 25 -138 minecraft:spruce_trapdoor[half=top,open=false,powered=false,waterlogged=true,facing=south]
		setblock -35 25 -137 minecraft:spruce_trapdoor[half=top,open=false,powered=false,waterlogged=true,facing=south]
		setblock -35 25 -140 minecraft:spruce_trapdoor[half=top,open=false,powered=false,waterlogged=true,facing=east]
		fill 91 27 -220 86 31 -221 minecraft:barrier replace air
	# New Mines Trapdoors
		setblock 65 46 -173 minecraft:spruce_trapdoor[facing=west,half=top,open=false,powered=false,waterlogged=false]
		setblock 66 47 -167 minecraft:spruce_trapdoor[facing=east,half=bottom,open=false,powered=false,waterlogged=false]
		setblock 77 47 -179 minecraft:spruce_trapdoor[facing=north,half=top,open=false,powered=false,waterlogged=false]
		setblock 75 47 -180 minecraft:spruce_trapdoor[facing=north,half=top,open=false,powered=false,waterlogged=false]
		setblock 83 36 -181 minecraft:spruce_trapdoor[facing=north,half=bottom,open=true,powered=false,waterlogged=false]
		setblock 84 36 -181 minecraft:spruce_trapdoor[facing=north,half=bottom,open=true,powered=false,waterlogged=false]
		setblock 80 35 -181 minecraft:spruce_trapdoor[facing=north,half=bottom,open=true,powered=false,waterlogged=false]
		setblock 84 37 -180 minecraft:spruce_trapdoor[facing=north,half=bottom,open=false,powered=false,waterlogged=false]
		setblock 82 34 -175 minecraft:spruce_trapdoor[facing=north,half=top,open=true,powered=false,waterlogged=false]
		setblock 81 34 -175 minecraft:spruce_trapdoor[facing=north,half=top,open=true,powered=false,waterlogged=false]
		setblock 82 34 -173 minecraft:spruce_trapdoor[facing=south,half=top,open=true,powered=false,waterlogged=false]
		setblock 81 34 -173 minecraft:spruce_trapdoor[facing=south,half=top,open=true,powered=false,waterlogged=false]
		setblock 88 34 -173 minecraft:spruce_trapdoor[facing=west,half=top,open=true,powered=false,waterlogged=false]
		setblock 90 34 -173 minecraft:spruce_trapdoor[facing=east,half=top,open=true,powered=false,waterlogged=false]
		setblock 90 34 -172 minecraft:spruce_trapdoor[facing=east,half=top,open=true,powered=false,waterlogged=false]
		setblock 95 34 -172 minecraft:spruce_trapdoor[facing=west,half=top,open=true,powered=false,waterlogged=false]
		setblock 95 34 -171 minecraft:spruce_trapdoor[facing=west,half=top,open=true,powered=false,waterlogged=false]
		setblock 97 34 -173 minecraft:spruce_trapdoor[facing=east,half=top,open=true,powered=false,waterlogged=false]
	# Barn
		setblock -5 26 -247 minecraft:spruce_fence_gate[facing=south,in_wall=false,open=false,powered=false]
		setblock -5 26 -244 minecraft:spruce_fence_gate[facing=south,in_wall=false,open=false,powered=false]
	# Balloon
		setblock -69 39 -180 minecraft:oak_trapdoor[facing=east,half=bottom,open=true,powered=false,waterlogged=false]
		setblock -69 39 -182 minecraft:oak_trapdoor[facing=east,half=bottom,open=true,powered=false,waterlogged=false]
		setblock -71 39 -184 minecraft:oak_trapdoor[facing=north,half=bottom,open=true,powered=false,waterlogged=false]
		setblock -73 39 -184 minecraft:oak_trapdoor[facing=north,half=bottom,open=true,powered=false,waterlogged=false]
		setblock -75 39 -182 minecraft:oak_trapdoor[facing=west,half=bottom,open=true,powered=false,waterlogged=false]
		setblock -75 39 -180 minecraft:oak_trapdoor[facing=west,half=bottom,open=true,powered=false,waterlogged=false]
		setblock -73 39 -178 minecraft:oak_trapdoor[facing=south,half=bottom,open=true,powered=false,waterlogged=false]
		setblock -71 39 -178 minecraft:oak_trapdoor[facing=south,half=bottom,open=true,powered=false,waterlogged=false]
	# Farm Cart
		setblock -33 27 -239 minecraft:dark_oak_trapdoor[facing=west,half=top,open=true,powered=false,waterlogged=false]
		setblock -32 27 -240 minecraft:dark_oak_trapdoor[facing=north,half=top,open=true,powered=false,waterlogged=false]
		setblock -30 27 -242 minecraft:dark_oak_trapdoor[facing=west,half=top,open=true,powered=false,waterlogged=false]
		setblock -29 27 -243 minecraft:dark_oak_trapdoor[facing=north,half=top,open=true,powered=false,waterlogged=false]
		setblock -26 27 -240 minecraft:dark_oak_trapdoor[facing=east,half=top,open=true,powered=false,waterlogged=false]
		setblock -27 27 -239 minecraft:dark_oak_trapdoor[facing=south,half=top,open=true,powered=false,waterlogged=false]
		setblock -29 27 -237 minecraft:dark_oak_trapdoor[facing=east,half=top,open=true,powered=false,waterlogged=false]
		setblock -30 27 -236 minecraft:dark_oak_trapdoor[facing=south,half=top,open=true,powered=false,waterlogged=false]
	#Close
		summon minecraft:area_effect_cloud 71 27 -257 {Tags:["DR"],Radius:0.0f,Duration:2147483647}
		summon minecraft:area_effect_cloud 11 27 -213 {Tags:["DR"],Radius:0.0f,Duration:2147483647}
		summon minecraft:area_effect_cloud 2 27 -216 {Tags:["DR"],Radius:0.0f,Duration:2147483647}
		summon minecraft:area_effect_cloud -8 27 -200 {Tags:["DR"],Radius:0.0f,Duration:2147483647}
		summon minecraft:area_effect_cloud 7 27 -185 {Tags:["DR"],Radius:0.0f,Duration:2147483647}
		summon minecraft:area_effect_cloud 8 31 -179 {Tags:["DR"],Radius:0.0f,Duration:2147483647}
		summon minecraft:area_effect_cloud 26 27 -188 {Tags:["DR"],Radius:0.0f,Duration:2147483647}
		summon minecraft:area_effect_cloud 23 26 -185 {Tags:["DR"],Radius:0.0f,Duration:2147483647}
		summon minecraft:area_effect_cloud 24 27 -202 {Tags:["DR"],Radius:0.0f,Duration:2147483647}
		summon minecraft:area_effect_cloud 28 27 -213 {Tags:["DR"],Radius:0.0f,Duration:2147483647}
		summon minecraft:area_effect_cloud -52 29 -135 {Tags:["DR"],Radius:0.0f,Duration:2147483647}
		summon minecraft:area_effect_cloud 26 27 -150 {Tags:["DR"],Radius:0.0f,Duration:2147483647}
		summon minecraft:area_effect_cloud 5 27 -271 {Tags:["DR"],Radius:0.0f,Duration:2147483647}
		summon minecraft:area_effect_cloud -1 28 -245 {Tags:["DR"],Radius:0.0f,Duration:2147483647}
		summon minecraft:area_effect_cloud -1 28 -246 {Tags:["DR"],Radius:0.0f,Duration:2147483647}
		summon minecraft:area_effect_cloud -9 26 -132 {Tags:["DR"],Radius:0.0f,Duration:2147483647}
		summon minecraft:area_effect_cloud -14 27 -193 {Tags:["DR"],Radius:0.0f,Duration:2147483647}
		summon minecraft:area_effect_cloud -48 27 -188 {Tags:["DR"],Radius:0.0f,Duration:2147483647}
		summon minecraft:area_effect_cloud -49 29 -187 {Tags:["DR"],Radius:0.0f,Duration:2147483647}
		summon minecraft:area_effect_cloud -48 29 -186 {Tags:["DR"],Radius:0.0f,Duration:2147483647}
		summon minecraft:area_effect_cloud -47 29 -186 {Tags:["DR"],Radius:0.0f,Duration:2147483647}
		summon minecraft:area_effect_cloud -48 29 -185 {Tags:["DR"],Radius:0.0f,Duration:2147483647}
		summon minecraft:area_effect_cloud -49 29 -184 {Tags:["DR"],Radius:0.0f,Duration:2147483647}
		summon minecraft:area_effect_cloud -50 27 -185 {Tags:["DR"],Radius:0.0f,Duration:2147483647}
		summon minecraft:area_effect_cloud -52 29 -184 {Tags:["DR"],Radius:0.0f,Duration:2147483647}
		summon minecraft:area_effect_cloud -42 28 -176 {Tags:["DR"],Radius:0.0f,Duration:2147483647}
		summon minecraft:area_effect_cloud -19 28 -123 {Tags:["DR"],Radius:0.0f,Duration:2147483647}
		summon minecraft:area_effect_cloud 14 27 -234 {Tags:["DR"],Radius:0.0f,Duration:2147483647}
		summon minecraft:area_effect_cloud 97 20 -130 {Tags:["DR"],Radius:0.0f,Duration:2147483647}
		summon minecraft:area_effect_cloud 96 20 -130 {Tags:["DR"],Radius:0.0f,Duration:2147483647}
		summon minecraft:area_effect_cloud 108 20 -130 {Tags:["DR"],Radius:0.0f,Duration:2147483647}
		summon minecraft:area_effect_cloud 107 20 -130 {Tags:["DR"],Radius:0.0f,Duration:2147483647}
		summon minecraft:area_effect_cloud 108 20 -137 {Tags:["DR"],Radius:0.0f,Duration:2147483647}
		summon minecraft:area_effect_cloud 107 20 -137 {Tags:["DR"],Radius:0.0f,Duration:2147483647}
		summon minecraft:area_effect_cloud -51 29 -264 {Tags:["DR"],Radius:0.0f,Duration:2147483647}
	#Trapdoor Around Block Close
		summon minecraft:area_effect_cloud 52 31 -196 {Tags:["DRL"],Radius:0.0f,Duration:2147483647}
		summon minecraft:area_effect_cloud 43 31 -194 {Tags:["DRL"],Radius:0.0f,Duration:2147483647}
		summon minecraft:area_effect_cloud 3 30 -237 {Tags:["DRL"],Radius:0.0f,Duration:2147483647}
		summon minecraft:area_effect_cloud -28 32 -205 {Tags:["DRL"],Radius:0.0f,Duration:2147483647}
		summon minecraft:area_effect_cloud -27 31 -194 {Tags:["DRL"],Radius:0.0f,Duration:2147483647}
		summon minecraft:area_effect_cloud -37 31 -197 {Tags:["DRL"],Radius:0.0f,Duration:2147483647}
		summon minecraft:area_effect_cloud -33 31 -218 {Tags:["DRL"],Radius:0.0f,Duration:2147483647}
		summon minecraft:area_effect_cloud -45 32 -226 {Tags:["DRL"],Radius:0.0f,Duration:2147483647}
		summon minecraft:area_effect_cloud -61 32 -227 {Tags:["DRL"],Radius:0.0f,Duration:2147483647}
		summon minecraft:area_effect_cloud -63 31 -211 {Tags:["DRL"],Radius:0.0f,Duration:2147483647}
		summon minecraft:area_effect_cloud 93 19 -143 {Tags:["DRL"],Radius:0.0f,Duration:2147483647}
		summon minecraft:area_effect_cloud 104 19 -125 {Tags:["DRL"],Radius:0.0f,Duration:2147483647}
		summon minecraft:area_effect_cloud 111 19 -125 {Tags:["DRL"],Radius:0.0f,Duration:2147483647}
		summon minecraft:area_effect_cloud 14 29 -194 {Tags:["DRL"],Radius:0.0f,Duration:2147483647}
		summon minecraft:area_effect_cloud 13 30 -147 {Tags:["DRL"],Radius:0.0f,Duration:2147483647}
		summon minecraft:area_effect_cloud 13 30 -143 {Tags:["DRL"],Radius:0.0f,Duration:2147483647}
		summon minecraft:area_effect_cloud 21 30 -143 {Tags:["DRL"],Radius:0.0f,Duration:2147483647}
		summon minecraft:area_effect_cloud -31 30 -174 {Tags:["DRL"],Radius:0.0f,Duration:2147483647}
		summon minecraft:area_effect_cloud 82 32 -167 {Tags:["DRL"],Radius:0.0f,Duration:2147483647}
		summon minecraft:area_effect_cloud 110 32 -173 {Tags:["DRL"],Radius:0.0f,Duration:2147483647}
		