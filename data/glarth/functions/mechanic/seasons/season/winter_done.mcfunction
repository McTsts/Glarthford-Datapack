scoreboard players set season winter 1
# Tube Coral Fan
setblock -2 26 -151 ice
setblock 12 26 -155 ice
setblock 10 26 -128 ice
setblock 2 26 -125 ice
setblock -5 26 -124 ice
setblock -18 26 -125 ice
setblock -22 26 -129 ice
setblock -17 26 -145 ice
# Fire Coral Fan
setblock -24 26 -135 ice
setblock -14 26 -146 ice
setblock -6 26 -148 ice
# Tall Seagrass
setblock 17 26 -137 ice
setblock 15 26 -151 ice

setblock -47 25 -162 ice
setblock -56 25 -128 dark_oak_fence
fill -23 25 -146 -19 25 -150 blue_ice replace minecraft:prismarine_slab

# Fountain
setblock 7 28 -196 minecraft:stone_brick_slab
setblock 7 27 -196 minecraft:stone_brick_wall
fill 8 26 -197 6 26 -195 ice
setblock 7 26 -196 minecraft:stone_bricks

# Forest Spring
execute positioned 50 28 -268 run function glarth:mechanic/seasons/waterlogged/remove

# Forest Bridge
execute positioned 46 25 -256 run function glarth:mechanic/seasons/waterlogged/remove
execute positioned 44 25 -256 run function glarth:mechanic/seasons/waterlogged/remove
execute positioned 47 25 -256 run function glarth:mechanic/seasons/waterlogged/remove
execute positioned 48 25 -258 run function glarth:mechanic/seasons/waterlogged/remove
execute positioned 45 25 -259 run function glarth:mechanic/seasons/waterlogged/remove
fill 43 25 -256 49 25 -259 spruce_slab[type=top] replace spruce_slab
setblock 45 25 -259 minecraft:spruce_trapdoor[facing=north,half=top,open=false,powered=false,waterlogged=false]
setblock 44 25 -256 minecraft:spruce_trapdoor[facing=south,half=top,open=false,powered=false,waterlogged=false]
setblock 46 25 -256 minecraft:spruce_trapdoor[facing=south,half=top,open=false,powered=false,waterlogged=false]
setblock 47 25 -256 minecraft:spruce_trapdoor[facing=south,half=top,open=false,powered=false,waterlogged=false]
setblock 48 25 -258 minecraft:spruce_trapdoor[facing=north,half=top,open=false,powered=false,waterlogged=false]
setblock 47 25 -256 minecraft:spruce_trapdoor[facing=south,half=top,open=false,powered=false,waterlogged=true]

# Swamp
execute positioned -43 25 -138 run function glarth:mechanic/seasons/waterlogged/remove
execute positioned -65 25 -152 run function glarth:mechanic/seasons/waterlogged/remove
setblock -46 25 -156 minecraft:oak_trapdoor[facing=north,half=bottom,open=true,powered=false,waterlogged=false]

# Temple
fill 114 97 -88 96 80 -102 minecraft:dark_oak_leaves replace minecraft:spruce_leaves
fill 100 99 -126 86 79 -116 minecraft:dark_oak_leaves replace minecraft:spruce_leaves

# lake twigs
setblock -8 27 -149 minecraft:air
setblock -5 27 -152 minecraft:air
setblock -13 27 -147 minecraft:air

# swamp twigs 
setblock -21 26 -151 minecraft:air
setblock -28 26 -146 minecraft:air
setblock -26 26 -152 minecraft:air
setblock -35 26 -151 minecraft:air
setblock -37 26 -153 minecraft:air
setblock -36 26 -147 minecraft:air
setblock -44 26 -146 minecraft:air
setblock -47 26 -151 minecraft:air
setblock -48 26 -149 minecraft:air
setblock -48 26 -143 minecraft:air
setblock -31 26 -153 minecraft:air

#lilypads
function glarth:mechanic/seasons/season/extra/lilypad_unbob