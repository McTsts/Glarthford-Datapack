scoreboard players set season winter 0
# Tube Coral Fan
setblock -2 26 -151 tube_coral_fan[waterlogged=true]
setblock 12 26 -155 tube_coral_fan[waterlogged=true]
setblock 10 26 -128 tube_coral_fan[waterlogged=true]
setblock 2 26 -125 tube_coral_fan[waterlogged=true]
setblock -5 26 -124 tube_coral_fan[waterlogged=true]
setblock -18 26 -125 tube_coral_fan[waterlogged=true]
setblock -22 26 -129 tube_coral_fan[waterlogged=true]
setblock -17 26 -145 tube_coral_fan[waterlogged=true]
# Fire Coral Fan
setblock -24 26 -135 fire_coral_fan[waterlogged=true]
setblock -14 26 -146 fire_coral_fan[waterlogged=true]
setblock -6 26 -148 fire_coral_fan[waterlogged=true]
# Tall Seagrass
setblock 17 25 -137 minecraft:command_block{Command:"function glarth:mechanic/seasons/place/tall_seagrass",auto:1b}
setblock 15 25 -151 minecraft:command_block{Command:"function glarth:mechanic/seasons/place/tall_seagrass",auto:1b}

setblock -47 25 -162 spruce_slab[waterlogged=true]
setblock -56 25 -128 dark_oak_fence[waterlogged=true]
fill -23 25 -146 -19 25 -150 minecraft:prismarine_slab[waterlogged=true] replace blue_ice

# Fountain
setblock 7 28 -196 minecraft:stone_brick_slab[waterlogged=true]
setblock 7 27 -196 minecraft:stone_brick_wall[waterlogged=true]
fill 8 26 -197 6 26 -195 stone_brick_slab[waterlogged=true]
setblock 7 26 -196 minecraft:stone_bricks

# Forest Spring
execute positioned 50 28 -268 run function glarth:mechanic/seasons/waterlogged/add

# Forest Bridge
execute positioned 46 25 -256 run function glarth:mechanic/seasons/waterlogged/add
execute positioned 44 25 -256 run function glarth:mechanic/seasons/waterlogged/add
execute positioned 47 25 -256 run function glarth:mechanic/seasons/waterlogged/add
execute positioned 48 25 -258 run function glarth:mechanic/seasons/waterlogged/add
execute positioned 45 25 -259 run function glarth:mechanic/seasons/waterlogged/add
fill 43 25 -256 49 25 -259 spruce_slab[type=top,waterlogged=true] replace spruce_slab
setblock 45 25 -259 minecraft:spruce_trapdoor[facing=north,half=top,open=false,powered=false,waterlogged=true]
setblock 44 25 -256 minecraft:spruce_trapdoor[facing=south,half=top,open=false,powered=false,waterlogged=true]
setblock 47 25 -256 minecraft:spruce_trapdoor[facing=south,half=top,open=false,powered=false,waterlogged=true]
setblock 48 25 -258 minecraft:spruce_trapdoor[facing=north,half=top,open=false,powered=false,waterlogged=true]

# Swamp
execute positioned -43 25 -138 run function glarth:mechanic/seasons/waterlogged/add
execute positioned -65 25 -152 run function glarth:mechanic/seasons/waterlogged/add
setblock -46 25 -156 minecraft:oak_trapdoor[facing=north,half=bottom,open=true,powered=false,waterlogged=true]

# Temple
fill 114 97 -88 96 80 -102 minecraft:spruce_leaves replace minecraft:dark_oak_leaves
fill 100 99 -126 86 79 -116 minecraft:spruce_leaves replace minecraft:dark_oak_leaves

# Swamp Waterfalls
setblock -71 49 -135 minecraft:air
setblock -44 52 -120 minecraft:air


# Richard Vines
setblock 23 31 -213 vine[up=true] destroy
setblock 23 30 -213 vine[up=true] destroy



# Forest Bridge
setblock 45 25 -259 minecraft:spruce_trapdoor[facing=north,half=top,open=false,powered=false,waterlogged=false]
setblock 44 25 -256 minecraft:spruce_trapdoor[facing=south,half=top,open=false,powered=false,waterlogged=false]
setblock 46 25 -256 minecraft:spruce_trapdoor[facing=south,half=top,open=false,powered=false,waterlogged=false]
setblock 47 25 -256 minecraft:spruce_trapdoor[facing=south,half=top,open=false,powered=false,waterlogged=false]
setblock 48 25 -258 minecraft:spruce_trapdoor[facing=north,half=top,open=false,powered=false,waterlogged=false]
setblock 47 25 -256 minecraft:spruce_trapdoor[facing=south,half=top,open=false,powered=false,waterlogged=true]