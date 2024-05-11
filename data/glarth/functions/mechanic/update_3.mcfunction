## Player Based

# Optimizations
execute as @a[tag=!inTBC] at @s run function glarth:mechanic/music/area

# POTs
tag @a[gamemode=adventure] remove doPoT
execute as @a[gamemode=adventure] unless score @s PoT matches 1.. unless score @s PoT2 matches 1.. unless score @s PoT3 matches 1.. run tag @s add doPoT
execute as @a[gamemode=adventure,tag=doPoT] run function glarth:mechanic/pot_detection
execute as @a[gamemode=adventure,tag=!doPoT] run function glarth:mechanic/pot_extend

# Chest
execute unless score lowGraphics Stats matches 1 run scoreboard players set @a chest 0
execute unless score lowGraphics Stats matches 1 as @a[gamemode=adventure] at @s positioned ~ ~1.8 ~ run function glarth:mechanic/chest

# Bow
execute as @a[nbt={Inventory:[{id:"minecraft:brown_dye"}]}] run give @s bow{bow:"default"}
execute as @a[nbt={Inventory:[{id:"minecraft:brown_dye"}]}] run clear @s brown_dye

execute as @a[nbt={Inventory:[{id:"minecraft:honeycomb"}]}] run give @s minecraft:shears{CanDestroy:["red_tulip","orange_tulip","pink_tulip"],HideFlags:127} 1
execute as @a[nbt={Inventory:[{id:"minecraft:honeycomb"}]}] run clear @s honeycomb

execute as @a[nbt={Inventory:[{id:"minecraft:water_bucket"}]}] run give @s bucket
execute as @a[nbt={Inventory:[{id:"minecraft:water_bucket"}]}] run clear @s water_bucket
execute as @a[nbt={Inventory:[{id:"minecraft:milk_bucket"}]}] run give @s bucket
execute as @a[nbt={Inventory:[{id:"minecraft:milk_bucket"}]}] run give @s[tag=!gotMilk] minecraft:gold_nugget{CustomModelData: 40, display: {Name: '{"translate":"tbc.attack.potion.milk","italic":false}'}, custom: "milk_bottle"}
execute as @a[nbt={Inventory:[{id:"minecraft:milk_bucket"}]}] run tag @s add gotMilk
execute as @a[nbt={Inventory:[{id:"minecraft:milk_bucket"}]}] run clear @s milk_bucket

execute as @a[gamemode=spectator,tag=!DEV] at @s unless entity @a[gamemode=adventure,distance=..2] if entity @a[gamemode=adventure,distance=..10] run clear @s
execute as @a[gamemode=spectator] at @s unless entity @a[gamemode=adventure,distance=..2] run scoreboard players set @s specTime 0
execute as @a[gamemode=spectator] at @s unless entity @a[gamemode=adventure,distance=..2] run title @s[scores={MusicTimeR=60..}] actionbar {"translate":"spectator_inv.end","italic":true}
execute as @a[gamemode=adventure] at @s if entity @a[gamemode=spectator,distance=..1] run function glarth:mechanic/spec_inv

execute if score quest Stats matches 7 as @a[gamemode=adventure] at @s as @e[tag=halloweenTorch,distance=..10,type=minecraft:armor_stand] at @s run particle minecraft:happy_villager ~ ~0.6 ~ 0 0 0 0 1

# Bossbars
bossbar set minecraft:1 players
bossbar set minecraft:2 players
bossbar set minecraft:3 players

execute if score quest Stats matches 0 run bossbar set minecraft:1 players @a
execute if score quest Stats matches 3 run bossbar set minecraft:2 players @a
execute if score quest Stats matches 7 run bossbar set minecraft:3 players @a
execute as @a at @s if block ~ 0 ~ minecraft:brown_concrete run bossbar set minecraft:2 players @s
execute as @a at @s if block ~ 0 ~ minecraft:lime_terracotta run bossbar set minecraft:2 players @s

# Dimension
scoreboard players set inWorld dimension 0
execute as @a[scores={playerid=1..},gamemode=adventure] run scoreboard players add inWorld dimension 1
execute as @a[scores={playerid=1..,dimension=1},gamemode=adventure] run scoreboard players remove inWorld dimension 1
execute as @a[scores={dimension=0},gamemode=adventure] run function glarth:team/join/player
execute as @a[scores={dimension=1},gamemode=adventure] run function glarth:team/join/dimension
execute as @a[gamemode=spectator] at @s unless entity @a[scores={dimension=1},distance=..25] run function glarth:team/join/player
execute as @a[gamemode=spectator] at @s if entity @a[scores={dimension=1},distance=..25] run function glarth:team/join/dimension

# Map
scoreboard players set @a admapWalk 0
scoreboard players set @a admapSprint 0
schedule function glarth:mechanic/admap/calcr 2t

#GM3 Map
advancement revoke @a[gamemode=spectator] everything

# Difficulty
function glarth:mechanic/setup/adjust_difficulty

# dog skull
execute as @a[gamemode=adventure] run function glarth:mechanic/dog_skull
execute as @a[gamemode=adventure] run function glarth:mechanic/golden_helmet


# EC Tip
execute as @a[scores={ecDrop=1..},tag=!tip50] at @s run function glarth:mechanic/tip/50
scoreboard players set @a ecDrop 0

# Kill Trigger
kill @a[scores={kill=..-1},gamemode=adventure]
kill @a[scores={kill=1..},gamemode=adventure]

# sleep tip 
execute as @a[tag=!tip51] unless data entity @s {SleepTimer:0s} run function glarth:mechanic/tip/51


# Pig
function glarth:mechanic/pig

# Fix Void Air (Q3)
execute positioned 7 26 -196 as @a[distance=..40] at @s run fill ~-6 ~-6 ~-6 ~6 ~6 ~6 barrier replace void_air


# Spectator
execute as @a[gamemode=spectator] at @s positioned ~ -15 ~ if entity @s[distance=..10] run tp @s ~ ~15 ~
execute as @a[gamemode=spectator] at @s positioned ~ -100 ~ if entity @s[distance=..90] run tp @s ~ ~100 ~


# Foxes
execute as @a[gamemode=adventure,nbt={SelectedItem:{id:"minecraft:sweet_berries"}}] at @s run effect give @e[type=fox,distance=..15] slowness 2 2 true



# Char Unload
function glarth:mechanic/loader



# E Chest
execute if entity @a[distance=..5] run setblock 76 21 -258 minecraft:iron_trapdoor[facing=north,half=bottom,open=false,powered=false,waterlogged=false]