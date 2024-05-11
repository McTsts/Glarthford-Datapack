# Passive | Cancel
#execute if block ~ 0 ~ diorite run 
execute if block ~ 0 ~ granite run scoreboard players set @s MusicNum 0

# Town [Dawn & Dusk, Busy M, Quiet M, Jungle Festival, Scary Night]
execute if block ~ 0 ~ gray_concrete if score time Dis matches ..799 run scoreboard players set @s MusicNum 12
execute if block ~ 0 ~ gray_concrete if score time Dis matches 800..1799 run scoreboard players set @s MusicNum 8
execute if block ~ 0 ~ gray_concrete if score time Dis matches 1800.. run scoreboard players set @s MusicNum 16
execute if block ~ 0 ~ gray_concrete if score quest Stats matches 2 run scoreboard players set @s MusicNum 23
execute if block ~ 0 ~ gray_concrete if score quest Stats matches 4 run scoreboard players set @s MusicNum 16
execute if block ~ 0 ~ gray_concrete if score quest Stats matches 7 run scoreboard players set @s MusicNum 41
execute if block ~ 0 ~ gray_concrete if score quest Stats matches 9 if score time Dis matches 800..1799 run scoreboard players set @s MusicNum 16
execute if block ~ 0 ~ gray_concrete if score quest Stats matches 9 if score time Dis matches 1800.. run scoreboard players set @s MusicNum 18

# Ruins of Ascension [Ruins oA]
execute if block ~ 0 ~ white_concrete positioned 101 26 -240 run scoreboard players set @s[distance=..100] MusicNum 11

# Lake [Salty SD, O'Sailor J, Sleepy SD, Spooky Wind, Sunkeny Story]
execute if block ~ 0 ~ magenta_concrete if score time Dis matches ..599 run scoreboard players set @s MusicNum 19
execute if block ~ 0 ~ magenta_concrete if score time Dis matches 600..1099 run scoreboard players set @s MusicNum 3
execute if block ~ 0 ~ magenta_concrete if score time Dis matches 1100..1399 run scoreboard players set @s MusicNum 13
execute if block ~ 0 ~ magenta_concrete if score time Dis matches 1400..2099 run scoreboard players set @s MusicNum 3
execute if block ~ 0 ~ magenta_concrete if score time Dis matches 2100.. run scoreboard players set @s MusicNum 19
execute if block ~ 0 ~ magenta_concrete if score quest Stats matches 4 run scoreboard players set @s MusicNum 19
execute if block ~ 0 ~ magenta_concrete if score quest Stats matches 7 run scoreboard players set @s MusicNum 42
execute if block ~ 0 ~ magenta_concrete if score quest Stats matches 9 run scoreboard players set @s MusicNum 25

# Observatory [Viola Night, Roaring Wind]
execute if block ~ 0 ~ white_concrete positioned 101 26 -240 run scoreboard players set @s[distance=100..] MusicNum 5
execute if block ~ 0 ~ white_concrete positioned 101 26 -240 if score quest Stats matches 7 run scoreboard players set @s[distance=100..] MusicNum 44

# Mines [Viola Night]
execute if block ~ 0 ~ light_gray_terracotta run scoreboard players set @s MusicNum 5

# Brewery [Boozy Brewer, Midnight Moon, Halloween Piano, Warmth]
execute if block ~ 0 ~ green_concrete run scoreboard players set @s MusicNum 10
execute if block ~ 0 ~ green_concrete if score quest Stats matches 4 run scoreboard players set @s MusicNum 7
execute if block ~ 0 ~ green_concrete if score quest Stats matches 7 run scoreboard players set @s MusicNum 38
execute if block ~ 0 ~ green_concrete if score quest Stats matches 9 run scoreboard players set @s MusicNum 47

# Nether [Fire Priests]
execute if block ~ 0 ~ red_terracotta run scoreboard players set @s MusicNum 46

# Time Traveller [Lost in Time]
execute if block ~ 0 ~ black_concrete run scoreboard players set @s MusicNum 24

# Swamp [Going to Adventure, Halloween Piano Slow]
execute if block ~ 0 ~ light_blue_concrete run scoreboard players set @s MusicNum 4
execute if block ~ 0 ~ light_blue_concrete if score quest Stats matches 7 run scoreboard players set @s MusicNum 43

# Junkyard [Deadlands, Deadlands Windy, Ballad of the Cats] 
execute if block ~ 0 ~ pink_terracotta if score wind Stats matches 0..1 run scoreboard players set @s MusicNum 1
execute if block ~ 0 ~ pink_terracotta if score wind Stats matches 2.. run scoreboard players set @s MusicNum 20
execute if block ~ 0 ~ pink_terracotta if score quest Stats matches 7 run scoreboard players set @s MusicNum 1
execute if block ~ 0 ~ pink_terracotta if score quest Stats matches 9 run scoreboard players set @s MusicNum 48

# Wreckage Grave [Dark Echoes]
execute if block ~ 0 ~ gray_terracotta run scoreboard players set @s MusicNum 2

# Snow Area [Aurora Loop]
execute if block ~ 0 ~ cyan_concrete run scoreboard players set @s MusicNum 15

# Forest [Unsure, Howling Night]
execute if block ~ 0 ~ light_gray_concrete run scoreboard players set @s MusicNum 9
execute if block ~ 0 ~ light_gray_concrete if score quest Stats matches 7 run scoreboard players set @s MusicNum 40

# Farm [Lively Road, Spooky Wind]
execute if block ~ 0 ~ purple_concrete run scoreboard players set @s MusicNum 17
execute if block ~ 0 ~ purple_concrete if score quest Stats matches 7 run scoreboard players set @s MusicNum 42
execute if block ~ 0 ~ purple_concrete if score quest Stats matches 9 run scoreboard players set @s MusicNum 42

# Ascension Road [Solemn Road]
execute if block ~ 0 ~ blue_concrete run scoreboard players set @s MusicNum 18

# Sewers [Sunken Story] (?)
execute if block ~ 0 ~ brown_concrete run scoreboard players set @s MusicNum 25

# North-Western Road [Lonely Road, Spooky Wind]
execute if block ~ 0 ~ lime_concrete run scoreboard players set @s MusicNum 6
execute if block ~ 0 ~ lime_concrete if score quest Stats matches 7 run scoreboard players set @s MusicNum 42

# South-Eastern Road [Lonely Road, Howling Night]
execute if block ~ 0 ~ light_blue_terracotta run scoreboard players set @s MusicNum 6
execute if block ~ 0 ~ light_blue_terracotta if score quest Stats matches 7 run scoreboard players set @s MusicNum 40

# Graveyard [Dark Echoes]
execute if block ~ 0 ~ white_terracotta run scoreboard players set @s MusicNum 2

# Volcano [Volcano Rumble]
execute if block ~ 0 ~ lime_terracotta run scoreboard players set @s MusicNum 30

# Emerald Spring [Midnight Moon, Roaring Night] (?)
execute if block ~ 0 ~ orange_terracotta run scoreboard players set @s MusicNum 7
execute if block ~ 0 ~ orange_terracotta if score quest Stats matches 7 run scoreboard players set @s MusicNum 44

# Poisoned Plains [Midnight Moon, Roaring Night] (?)
execute if block ~ 0 ~ pink_concrete run scoreboard players set @s MusicNum 7
execute if block ~ 0 ~ pink_concrete if score quest Stats matches 7 run scoreboard players set @s MusicNum 44

# Apple Blossom [Viola Night, Halloween Piano Slow]
execute if block ~ 0 ~ red_concrete run scoreboard players set @s MusicNum 5
execute if block ~ 0 ~ red_concrete if score quest Stats matches 7 run scoreboard players set @s MusicNum 43

# Buried Throne [Dark Echoes]
execute if block ~ 0 ~ orange_concrete run scoreboard players set @s MusicNum 2

# Heated Field [Lonely Road, Roaring Night] 
execute if block ~ 0 ~ magenta_terracotta run scoreboard players set @s MusicNum 6
execute if block ~ 0 ~ magenta_terracotta if score quest Stats matches 7 run scoreboard players set @s MusicNum 44

# Music Lover [Viola Night, Jungle Mystery, Halloween Piano Slow]
execute if block ~ 0 ~ purple_terracotta if entity @e[type=armor_stand,tag=ttextt,tag=!a] run scoreboard players set @s MusicNum 5
execute if block ~ 0 ~ purple_terracotta if entity @e[type=armor_stand,tag=ttextt,tag=!a] if score quest Stats matches 7 run scoreboard players set @s MusicNum 43
execute if block ~ 0 ~ purple_terracotta if entity @e[type=armor_stand,tag=ttextt,tag=a] run scoreboard players set @s MusicNum 29

# End Disease Final Hours [Aurora]
execute if score quest Stats matches 4 unless score endStarted Stats matches 1 if score time Dis matches 1900..2359 run scoreboard players set @s MusicNum 36

# End [The Source]
execute if score quest Stats matches 4 if score endStage Stats matches 0 if block ~ 0 ~ black_concrete run scoreboard players set @s MusicNum 33
execute if score quest Stats matches 4 if score endStage Stats matches 1 if block ~ 0 ~ black_concrete run scoreboard players set @s MusicNum 36

# Lonely Road Speed Down
execute if score quest Stats matches 4 if score @s MusicNum matches 6 run scoreboard players set @s MusicNum 18
execute if score quest Stats matches 4 if score @s MusicNum matches 17 run scoreboard players set @s MusicNum 6

## Tutorial
execute unless score game Stats matches 0 if score quest Stats matches 0 positioned ~ 25 ~ if entity @s[distance=..8] run scoreboard players set @s MusicNum 21
execute unless score game Stats matches 0 if score quest Stats matches 0 positioned ~ 9 ~ if entity @s[distance=..8] run scoreboard players set @s MusicNum 22

## Time
execute if score day Dis matches 1 if score time Dis matches 2323.. if entity @e[tag=area_main,tag=!infmode,type=area_effect_cloud] run scoreboard players set @s MusicNum 0

## Lobby
execute if score game Stats matches 0 run scoreboard players operation @s MusicNum = @s MusicLast