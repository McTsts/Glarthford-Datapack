clone 88 255 -120 87 27 -120 87 28 -120 replace move
setblock 87 27 -120 minecraft:chain_command_block[facing=up]{auto:1b}
execute if block 87 26 -120 air run setblock 87 26 -120 minecraft:repeating_command_block[facing=up]{auto:1b}