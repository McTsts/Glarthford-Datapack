summon minecraft:area_effect_cloud ~ ~ ~ {Duration:999999,Tags:["echest"]}
setblock ~ ~ ~ minecraft:trapped_chest
setblock ~ ~-1 ~ minecraft:command_block{Command:"function glarth.echest:main/chest_opened"}
