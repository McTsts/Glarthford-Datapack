#resetting ender chest and kicking anyone out
execute if block ~ ~ ~ minecraft:trapped_chest[facing=east] run setblock ~ ~ ~ minecraft:blue_glazed_terracotta[facing=east]
execute if block ~ ~ ~ minecraft:trapped_chest[facing=west] run setblock ~ ~ ~ minecraft:blue_glazed_terracotta[facing=west]
execute if block ~ ~ ~ minecraft:trapped_chest[facing=north] run setblock ~ ~ ~ minecraft:blue_glazed_terracotta[facing=north]
execute if block ~ ~ ~ minecraft:trapped_chest[facing=south] run setblock ~ ~ ~ minecraft:blue_glazed_terracotta[facing=south]

execute if block ~ ~ ~ minecraft:blue_glazed_terracotta[facing=east] run setblock ~ ~ ~ minecraft:trapped_chest[facing=east,type=single]{CustomName:'{"translate":"block.minecraft.ender_chest"}'}
execute if block ~ ~ ~ minecraft:blue_glazed_terracotta[facing=west] run setblock ~ ~ ~ minecraft:trapped_chest[facing=west,type=single]{CustomName:'{"translate":"block.minecraft.ender_chest"}'}
execute if block ~ ~ ~ minecraft:blue_glazed_terracotta[facing=north] run setblock ~ ~ ~ minecraft:trapped_chest[facing=north,type=single]{CustomName:'{"translate":"block.minecraft.ender_chest"}'}
execute if block ~ ~ ~ minecraft:blue_glazed_terracotta[facing=south] run setblock ~ ~ ~ minecraft:trapped_chest[facing=south,type=single]{CustomName:'{"translate":"block.minecraft.ender_chest"}'}

#resetting command block back to impulse mode with detection command
execute positioned ~ ~-1 ~ run function glarth.echest:main/place_cb
data merge block ~ ~-1 ~ {Command:"function glarth.echest:main/chest_opened"}

#removing structure void used for block updates
setblock ~ ~-2 ~ air

#displaying kick message
stopsound @a * minecraft:block.ender_chest.open
playsound minecraft:block.chest.locked block @p[distance=..8,scores={echest.open=1..}] ~ ~1 ~ 1 1 0
title @a[scores={echest.open=1..}] actionbar {"translate":"container.isLocked","with":[{"translate":"block.minecraft.ender_chest"}]}