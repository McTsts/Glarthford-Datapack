## This function creates a FAKE lightning bolt. It imitates how a lightning looks using a lightning spawner. Since no real lightning bolts are used this has no danger of turning Villagers/Pigs into other entities. Downside: It creates 3 temporary blocks to make the lightning, so those need to be hidden below the playable area of a map (if used in a map). A bossbar is used that isn't provided here to simulate the flashing effect, however the night vision/bossbar parts can be removed. The coding of this function may seem kind of bizarre, but it's practically three different functions that I fit into one.
## Usage: Run the function at the location where it should create a fake lightning e.g. /execute positioned ^ ^ ^25 run function glarth:lightning
## References to the function itself: Lines 32 & 33
## References to a fog bossbar: Lines 12, 14 & 27
## Sound: Line 30
## Volume 1 suffices, if RP doesn't modify the lightning sound (here it does)
##

# Update Spawner
execute if block ~ ~ ~ repeating_command_block[facing=up] run data merge block ~ ~1 ~ {t:s}
execute if block ~ ~ ~ repeating_command_block[facing=up] run effect give @a[distance=..100] night_vision 100 0 true
execute if block ~ ~ ~ repeating_command_block[facing=up] run bossbar set minecraft:1 players @a[distance=..100]
execute if block ~ ~ ~ repeating_command_block[facing=south] run effect clear @a[distance=..100] night_vision
execute if block ~ ~ ~ repeating_command_block[facing=south] run bossbar set minecraft:1 players
execute if block ~ ~ ~ repeating_command_block[facing=up] run setblock ~ ~ ~ repeating_command_block[facing=north]
execute if block ~ ~ ~ repeating_command_block[facing=down] run setblock ~ ~ ~ repeating_command_block[facing=up]
execute if block ~ ~ ~ repeating_command_block[facing=west] run setblock ~ ~ ~ repeating_command_block[facing=down]
execute if block ~ ~ ~ repeating_command_block[facing=south] run setblock ~ ~ ~ repeating_command_block[facing=west]
execute if block ~ ~ ~ repeating_command_block[facing=east] run setblock ~ ~ ~ repeating_command_block[facing=south]
execute if block ~ ~ ~ repeating_command_block[facing=north] run setblock ~ ~ ~ repeating_command_block[facing=east]

# Reset Part 1
execute if block ~ ~ ~ command_block run fill ~ ~-2 ~ ~ ~-2 ~ chain_command_block replace repeating_command_block
execute if block ~ ~ ~ command_block run fill ~ ~-1 ~ ~ ~-1 ~ chain_command_block replace spawner
execute if block ~ ~ ~ command_block run fill ~ ~ ~ ~ ~ ~ chain_command_block replace command_block
execute if block ~ ~ ~ command_block run effect clear @a[distance=..100] night_vision
execute if block ~ ~ ~ command_block run bossbar set minecraft:1 players

# Setup
execute unless block ~ ~ ~ command_block unless block ~ ~ ~ chain_command_block align xyz positioned ~0.5 ~0.5 ~0.5 if block ~ ~-1 ~ air if block ~ ~ ~ air if block ~ ~1 ~ air run playsound minecraft:entity.lightning_bolt.thunder master @s ~ ~ ~ 100000 0.7
execute unless block ~ ~ ~ command_block unless block ~ ~ ~ chain_command_block align xyz positioned ~0.5 ~0.5 ~0.5 if block ~ ~-1 ~ air if block ~ ~ ~ air if block ~ ~1 ~ air run setblock ~ ~ ~ minecraft:spawner{SpawnCount:0,RequiredPlayerRange:0s,SpawnData:{id:"minecraft:lightning_bolt"},Delay:100s,SpawnPotentials:[{Entity:{id:"minecraft:lightning_bolt"},Weight:1}]}
execute unless block ~ ~ ~ command_block unless block ~ ~ ~ chain_command_block align xyz positioned ~0.5 ~0.5 ~0.5 if block ~ ~-1 ~ air if block ~ ~ ~ spawner if block ~ ~1 ~ air run setblock ~ ~-1 ~ minecraft:repeating_command_block[facing=up]{Command:"function glarth:util/lightning",auto:1b}
execute unless block ~ ~ ~ command_block unless block ~ ~ ~ chain_command_block align xyz positioned ~0.5 ~0.5 ~0.5 if block ~ ~-1 ~ repeating_command_block if block ~ ~ ~ spawner if block ~ ~1 ~ air run summon falling_block ~ ~0.5 ~ {Motion:[0.0,0.2,0.0],BlockState:{Name:"minecraft:command_block"},TileEntityData:{Command:"function glarth:util/lightning",auto:1b},Time:1}

# Reset Part 2
fill ~ ~-2 ~ ~ ~ ~ air replace chain_command_block