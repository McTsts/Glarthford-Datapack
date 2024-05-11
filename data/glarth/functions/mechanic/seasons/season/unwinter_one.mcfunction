fill ~ 1 ~ ~ 80 ~ grass_block replace podzol
fill ~ 1 ~ ~ 80 ~ short_grass replace cyan_carpet
fill ~ 1 ~ ~ 80 ~ fern replace purple_carpet
fill ~ 1 ~ ~ 75 ~ spruce_leaves replace dark_oak_leaves 
fill ~ 1 ~ ~ 80 ~ oak_leaves replace acacia_leaves 
fill ~ 1 ~ ~ 45 ~ jungle_leaves replace cyan_stained_glass
fill ~ 1 ~ ~ 45 ~ acacia_pressure_plate[powered=true] replace pink_carpet
fill ~ 1 ~ ~ 45 ~ seagrass replace packed_ice
fill ~ 1 ~ ~ 45 ~ water[level=0] replace minecraft:ice
fill ~ 1 ~ ~ 45 ~ dead_brain_coral replace orange_stained_glass
fill ~ 1 ~ ~ 45 ~ prismarine_brick_slab[waterlogged=true] replace yellow_stained_glass
fill ~ 1 ~ ~ 45 ~ air replace green_stained_glass
fill ~ 1 ~ ~ 45 ~ kelp replace blue_stained_glass
fill ~ 1 ~ ~ 45 ~ command_block{auto:1b,Command:"function glarth:mechanic/seasons/place/large_fern"} replace minecraft:dead_horn_coral_fan[waterlogged=false]
fill ~ 1 ~ ~ 75 ~ command_block{auto:1b,Command:"function glarth:mechanic/seasons/place/tall_grass"} replace minecraft:dead_bubble_coral_fan[waterlogged=false]
fill ~ 1 ~ ~ 45 ~ minecraft:sweet_berry_bush[age=1] replace yellow_carpet

fill ~ 1 ~ ~ 45 ~ command_block{Command:"function glarth:mechanic/seasons/waterlogged/reverse",auto:1b} replace acacia_sign[rotation=9]

function glarth:mechanic/seasons/season/extra/unhide_vines