fill ~ 1 ~ ~ 80 ~ podzol replace grass_block
fill ~ 1 ~ ~ 80 ~ cyan_carpet replace grass
fill ~ 1 ~ ~ 80 ~ purple_carpet replace fern
fill ~ 1 ~ ~ 75 ~ dark_oak_leaves replace spruce_leaves
fill ~ 1 ~ ~ 80 ~ acacia_leaves replace oak_leaves
fill ~ 1 ~ ~ 45 ~ cyan_stained_glass replace jungle_leaves
fill ~ 1 ~ ~ 45 ~ pink_carpet replace acacia_pressure_plate[powered=true]
fill ~ 1 ~ ~ 45 ~ packed_ice replace seagrass
fill ~ 1 ~ ~ 45 ~ minecraft:ice replace water[level=0]
fill ~ 1 ~ ~ 45 ~ orange_stained_glass replace dead_brain_coral
fill ~ 1 ~ ~ 45 ~ yellow_stained_glass replace prismarine_brick_slab[waterlogged=true]
fill ~ 1 ~ ~ 45 ~ green_stained_glass replace water
fill ~ 1 ~ ~ 45 ~ blue_stained_glass replace kelp_plant
fill ~ 1 ~ ~ 45 ~ blue_stained_glass replace kelp
fill ~ 1 ~ ~ 45 ~ minecraft:dead_horn_coral_fan[waterlogged=false] replace large_fern[half=lower]
fill ~ 1 ~ ~ 75 ~ minecraft:dead_bubble_coral_fan[waterlogged=false] replace tall_grass[half=lower]
fill ~ 1 ~ ~ 45 ~ yellow_carpet replace minecraft:sweet_berry_bush


fill ~ 1 ~ ~ 45 ~ command_block{Command:"function glarth:mechanic/seasons/waterlogged/prismarine_slab",auto:1b} replace minecraft:prismarine_slab[waterlogged=true,type=bottom]
fill ~ 1 ~ ~ 45 ~ command_block{Command:"function glarth:mechanic/seasons/waterlogged/cobblestone_slab",auto:1b} replace minecraft:cobblestone_slab[waterlogged=true,type=bottom]
fill ~ 1 ~ ~ 45 ~ command_block{Command:"function glarth:mechanic/seasons/waterlogged/spruce_slab",auto:1b} replace minecraft:spruce_slab[waterlogged=true,type=bottom]
fill ~ 1 ~ ~ 45 ~ command_block{Command:"function glarth:mechanic/seasons/waterlogged/dark_oak_fence",auto:1b} replace minecraft:dark_oak_fence[waterlogged=true]
fill ~ 1 ~ ~ 45 ~ command_block{Command:"function glarth:mechanic/seasons/waterlogged/cobblestone_stairs_south",auto:1b} replace minecraft:cobblestone_stairs[facing=south,waterlogged=true]

function glarth:mechanic/seasons/season/extra/hide_vines