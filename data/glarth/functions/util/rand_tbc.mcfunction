scoreboard players operation tbc Random += 353 Const
scoreboard players operation tbc Random *= 1807 Const
scoreboard players operation tbc Random %= 13879 Const
scoreboard players operation n Random = tbc Random
scoreboard players operation n Random %= r Random
scoreboard players add n Random 1

tellraw @a[tag=tbcDebug] ["",{"selector":"@s"},{"text":" >> TBC Randomization: "},{"score":{"name":"n","objective":"Random"}},{"text":" -> %"},{"score":{"name":"r","objective":"Random"}}]