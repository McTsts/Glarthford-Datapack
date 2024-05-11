# Number
scoreboard players operation music Temp = music lobMusic
execute store result storage ntca:io in int 1 run scoreboard players get music Temp
function ntca:call
data merge block 175 24 -110 {Text1:'{"text":""}'}
data merge block 175 24 -110 {Text1:'["",{"text":"#","bold":true},{"nbt":"out","storage":"ntca:io","interpret":true,"bold":true}]'}

# Count
function glarth:mechanic/lobby/music_sel/count
execute store result storage ntca:io in int 1 run scoreboard players get count lobMusic
function ntca:call
data merge block 175 24 -107 {Text2:'{"text":""}'}
execute if score count lobMusic matches 0 run data merge block 175 24 -107 {Text2:'{"translate":"jukebox.tracks.1c","bold":true}',Text3:'{"translate":"jukebox.tracks.2c","bold":true}'}
execute if score count lobMusic matches 1 run data merge block 175 24 -107 {Text2:'{"translate":"jukebox.tracks.1b","bold":true,"with":["1"]}',Text3:'{"translate":"jukebox.tracks.2b","bold":true}'}
execute if score count lobMusic matches 2.. run data merge block 175 24 -107 {Text2:'{"translate":"jukebox.tracks.1","bold":true,"with":[{"nbt":"out","storage":"ntca:io","interpret":true}]}',Text3:'{"translate":"jukebox.tracks.2","bold":true}'}

# Set Songs
scoreboard players set @s MusicQueue -1
#Lobby music
execute if score music lobMusic matches 0 run function glarth:mechanic/lobby/music_sel/lobby_music
execute if score music lobMusic matches 0 run function glarth:mechanic/lobby/music_sel/creator/none
execute if score music lobMusic matches 0 run data merge block 175 24 -110 {Text1:'[""]'}
execute if score music lobMusic matches 0 run data merge block 175 24 -110 {Text2:'["",{"translate":"jukebox.name","bold":true}]'}

# Deadlands
execute if score music lobMusic matches 1 run scoreboard players set @s MusicSet 1
execute if score music lobMusic matches 1 run function glarth:mechanic/lobby/music_sel/tempo/slow
execute if score music lobMusic matches 1 run function glarth:mechanic/lobby/music_sel/creator/ben
execute if score music lobMusic matches 1 run data merge block 175 24 -110 {Text2:'["",{"translate":"sound.music_short.9","bold":true}]'}

# Dark Echoes
execute if score music lobMusic matches 2 run scoreboard players set @s MusicSet 2
execute if score music lobMusic matches 2 run function glarth:mechanic/lobby/music_sel/tempo/medium
execute if score music lobMusic matches 2 run function glarth:mechanic/lobby/music_sel/creator/greeny
execute if score music lobMusic matches 2 run data merge block 175 24 -110 {Text2:'["",{"translate":"sound.music_short.1","bold":true}]'}

# Salty Sea Docks
execute if score music lobMusic matches 3 run scoreboard players set @s MusicSet 3
execute if score music lobMusic matches 3 run function glarth:mechanic/lobby/music_sel/tempo/fast
execute if score music lobMusic matches 3 run function glarth:mechanic/lobby/music_sel/creator/greeny
execute if score music lobMusic matches 3 run data merge block 175 24 -110 {Text2:'["",{"translate":"sound.music_short.6","bold":true}]'}

# Going to Adventure
execute if score music lobMusic matches 4 run scoreboard players set @s MusicSet 4
execute if score music lobMusic matches 4 run function glarth:mechanic/lobby/music_sel/tempo/medium
execute if score music lobMusic matches 4 run function glarth:mechanic/lobby/music_sel/creator/text
execute if score music lobMusic matches 4 run data merge block 175 24 -110 {Text2:'["",{"translate":"sound.music_short.2","bold":true}]'}

# Viola Night
execute if score music lobMusic matches 5 run scoreboard players set @s MusicSet 5
execute if score music lobMusic matches 5 run function glarth:mechanic/lobby/music_sel/tempo/slow
execute if score music lobMusic matches 5 run function glarth:mechanic/lobby/music_sel/creator/greeny
execute if score music lobMusic matches 5 run data merge block 175 24 -110 {Text2:'["",{"translate":"sound.music_short.3","bold":true}]'}

# Lonely Road
execute if score music lobMusic matches 6 run scoreboard players set @s MusicSet 6
execute if score music lobMusic matches 6 run function glarth:mechanic/lobby/music_sel/tempo/slow
execute if score music lobMusic matches 6 run function glarth:mechanic/lobby/music_sel/creator/greeny
execute if score music lobMusic matches 6 run data merge block 175 24 -110 {Text2:'["",{"translate":"sound.music_short.4","bold":true}]'}

# Midnight Moon
execute if score music lobMusic matches 7 run scoreboard players set @s MusicSet 7
execute if score music lobMusic matches 7 run function glarth:mechanic/lobby/music_sel/tempo/medium
execute if score music lobMusic matches 7 run function glarth:mechanic/lobby/music_sel/creator/text
execute if score music lobMusic matches 7 run data merge block 175 24 -110 {Text2:'["",{"translate":"sound.music_short.5","bold":true}]'}

# Busy Merchant
execute if score music lobMusic matches 8 run scoreboard players set @s MusicSet 8
execute if score music lobMusic matches 8 run function glarth:mechanic/lobby/music_sel/tempo/fast
execute if score music lobMusic matches 8 run function glarth:mechanic/lobby/music_sel/creator/text
execute if score music lobMusic matches 8 run data merge block 175 24 -110 {Text2:'["",{"translate":"sound.music_short.8","bold":true}]'}

# Unsure
execute if score music lobMusic matches 9 run scoreboard players set @s MusicSet 9
execute if score music lobMusic matches 9 run function glarth:mechanic/lobby/music_sel/tempo/medium
execute if score music lobMusic matches 9 run function glarth:mechanic/lobby/music_sel/creator/greeny
execute if score music lobMusic matches 9 run data merge block 175 24 -110 {Text2:'["",{"translate":"sound.music_short.7","bold":true}]'}

# Boozy Brewer
execute if score music lobMusic matches 10 run scoreboard players set @s MusicSet 10
execute if score music lobMusic matches 10 run function glarth:mechanic/lobby/music_sel/tempo/very_fast
execute if score music lobMusic matches 10 run function glarth:mechanic/lobby/music_sel/creator/text
execute if score music lobMusic matches 10 run data merge block 175 24 -110 {Text2:'["",{"translate":"sound.music_short.10","bold":true}]'}

# Ruins of Ascension
execute if score music lobMusic matches 11 run scoreboard players set @s MusicSet 11
execute if score music lobMusic matches 11 run function glarth:mechanic/lobby/music_sel/tempo/medium
execute if score music lobMusic matches 11 run function glarth:mechanic/lobby/music_sel/creator/text
execute if score music lobMusic matches 11 run data merge block 175 24 -110 {Text2:'["",{"translate":"sound.music_short.11","bold":true}]'}

# Dawn and Dusk
execute if score music lobMusic matches 12 run scoreboard players set @s MusicSet 12
execute if score music lobMusic matches 12 run function glarth:mechanic/lobby/music_sel/tempo/slow
execute if score music lobMusic matches 12 run function glarth:mechanic/lobby/music_sel/creator/bart
execute if score music lobMusic matches 12 run data merge block 175 24 -110 {Text2:'["",{"translate":"sound.music_short.12","bold":true}]'}

# O'Sailor Johnny
execute if score music lobMusic matches 13 run scoreboard players set @s MusicSet 13
execute if score music lobMusic matches 13 run function glarth:mechanic/lobby/music_sel/tempo/very_fast
execute if score music lobMusic matches 13 run function glarth:mechanic/lobby/music_sel/creator/greeny
execute if score music lobMusic matches 13 run data merge block 175 24 -110 {Text2:'["",{"translate":"sound.music_short.13","bold":true}]'}

# Fire Priest
execute if score music lobMusic matches 14 run scoreboard players set @s MusicSet 14
execute if score music lobMusic matches 14 run function glarth:mechanic/lobby/music_sel/tempo/medium
execute if score music lobMusic matches 14 run function glarth:mechanic/lobby/music_sel/creator/greeny
execute if score music lobMusic matches 14 run data merge block 175 24 -110 {Text2:'["",{"translate":"sound.music_short.14","bold":true}]'}

# Aurora Loop
execute if score music lobMusic matches 15 run scoreboard players set @s MusicSet 15
execute if score music lobMusic matches 15 run function glarth:mechanic/lobby/music_sel/tempo/slow
execute if score music lobMusic matches 15 run function glarth:mechanic/lobby/music_sel/creator/enshano
execute if score music lobMusic matches 15 run data merge block 175 24 -110 {Text2:'["",{"translate":"sound.music_short.15","bold":true}]'}

# Quiet Merchant
execute if score music lobMusic matches 16 run scoreboard players set @s MusicSet 16
execute if score music lobMusic matches 16 run function glarth:mechanic/lobby/music_sel/tempo/medium
execute if score music lobMusic matches 16 run function glarth:mechanic/lobby/music_sel/creator/text
execute if score music lobMusic matches 16 run data merge block 175 24 -110 {Text2:'["",{"translate":"sound.music_short.16","bold":true}]'}

# Lively Road
execute if score music lobMusic matches 17 run scoreboard players set @s MusicSet 17
execute if score music lobMusic matches 17 run function glarth:mechanic/lobby/music_sel/tempo/fast
execute if score music lobMusic matches 17 run function glarth:mechanic/lobby/music_sel/creator/greeny
execute if score music lobMusic matches 17 run data merge block 175 24 -110 {Text2:'["",{"translate":"sound.music_short.17","bold":true}]'}

# Solemn Road
execute if score music lobMusic matches 18 run scoreboard players set @s MusicSet 18
execute if score music lobMusic matches 18 run function glarth:mechanic/lobby/music_sel/tempo/very_slow
execute if score music lobMusic matches 18 run function glarth:mechanic/lobby/music_sel/creator/greeny
execute if score music lobMusic matches 18 run data merge block 175 24 -110 {Text2:'["",{"translate":"sound.music_short.18","bold":true}]'}

# Sleepy Sea Docks
execute if score music lobMusic matches 19 run scoreboard players set @s MusicSet 19
execute if score music lobMusic matches 19 run function glarth:mechanic/lobby/music_sel/tempo/slow
execute if score music lobMusic matches 19 run function glarth:mechanic/lobby/music_sel/creator/greeny
execute if score music lobMusic matches 19 run data merge block 175 24 -110 {Text2:'["",{"translate":"sound.music_short.19","bold":true}]'}

# Deadlands (Windy)
execute if score music lobMusic matches 20 run scoreboard players set @s MusicSet 20
execute if score music lobMusic matches 20 run function glarth:mechanic/lobby/music_sel/tempo/fast
execute if score music lobMusic matches 20 run function glarth:mechanic/lobby/music_sel/creator/ben
execute if score music lobMusic matches 20 run data merge block 175 24 -110 {Text2:'["",{"translate":"sound.music_short.20","bold":true}]'}

# Above the Below
execute if score music lobMusic matches 21 run scoreboard players set @s MusicSet 21
execute if score music lobMusic matches 21 run function glarth:mechanic/lobby/music_sel/tempo/medium
execute if score music lobMusic matches 21 run function glarth:mechanic/lobby/music_sel/creator/bart
execute if score music lobMusic matches 21 run data merge block 175 24 -110 {Text2:'["",{"translate":"sound.music_short.21","bold":true}]'}

# Below the Above
execute if score music lobMusic matches 22 run scoreboard players set @s MusicSet 22
execute if score music lobMusic matches 22 run function glarth:mechanic/lobby/music_sel/tempo/medium
execute if score music lobMusic matches 22 run function glarth:mechanic/lobby/music_sel/creator/bart
execute if score music lobMusic matches 22 run data merge block 175 24 -110 {Text2:'["",{"translate":"sound.music_short.22","bold":true}]'}

# Jungle Festival
execute if score music lobMusic matches 23 run scoreboard players set @s MusicSet 23
execute if score music lobMusic matches 23 run function glarth:mechanic/lobby/music_sel/tempo/fast
execute if score music lobMusic matches 23 run function glarth:mechanic/lobby/music_sel/creator/bart
execute if score music lobMusic matches 23 run data merge block 175 24 -110 {Text2:'["",{"translate":"sound.music_short.23","bold":true}]'}

# Lost in Time
execute if score music lobMusic matches 24 run scoreboard players set @s MusicSet 24
execute if score music lobMusic matches 24 run function glarth:mechanic/lobby/music_sel/tempo/fast
execute if score music lobMusic matches 24 run function glarth:mechanic/lobby/music_sel/creator/bart
execute if score music lobMusic matches 24 run data merge block 175 24 -110 {Text2:'["",{"translate":"sound.music_short.24","bold":true}]'}

# Sunken Story
execute if score music lobMusic matches 25 run scoreboard players set @s MusicSet 25
execute if score music lobMusic matches 25 run function glarth:mechanic/lobby/music_sel/tempo/medium
execute if score music lobMusic matches 25 run function glarth:mechanic/lobby/music_sel/creator/bart
execute if score music lobMusic matches 25 run data merge block 175 24 -110 {Text2:'["",{"translate":"sound.music_short.25","bold":true}]'}

# King of the Hill
execute if score music lobMusic matches 26 run scoreboard players set @s MusicSet 26
execute if score music lobMusic matches 26 run function glarth:mechanic/lobby/music_sel/tempo/fast
execute if score music lobMusic matches 26 run function glarth:mechanic/lobby/music_sel/creator/bart
execute if score music lobMusic matches 26 run data merge block 175 24 -110 {Text2:'["",{"translate":"sound.music_short.26","bold":true}]'}

# Boss Theme
execute if score music lobMusic matches 27 run scoreboard players set @s MusicSet 27
execute if score music lobMusic matches 27 run function glarth:mechanic/lobby/music_sel/tempo/fast
execute if score music lobMusic matches 27 run function glarth:mechanic/lobby/music_sel/creator/corpe
execute if score music lobMusic matches 27 run data merge block 175 24 -110 {Text2:'["",{"translate":"sound.music_short.27","bold":true}]'}

# Boss Theme Orchestral
execute if score music lobMusic matches 28 run scoreboard players set @s MusicSet 28
execute if score music lobMusic matches 28 run function glarth:mechanic/lobby/music_sel/tempo/fast
execute if score music lobMusic matches 28 run function glarth:mechanic/lobby/music_sel/creator/corpe
execute if score music lobMusic matches 28 run data merge block 175 24 -110 {Text2:'["",{"translate":"sound.music_short.28","bold":true}]'}

# Jungle Mystery
execute if score music lobMusic matches 29 run scoreboard players set @s MusicSet 29
execute if score music lobMusic matches 29 run function glarth:mechanic/lobby/music_sel/tempo/medium
execute if score music lobMusic matches 29 run function glarth:mechanic/lobby/music_sel/creator/text
execute if score music lobMusic matches 29 run data merge block 175 24 -110 {Text2:'["",{"translate":"sound.music_short.29","bold":true}]'}

# Volcano Rumble
execute if score music lobMusic matches 30 run scoreboard players set @s MusicSet 30
execute if score music lobMusic matches 30 run function glarth:mechanic/lobby/music_sel/tempo/slow
execute if score music lobMusic matches 30 run function glarth:mechanic/lobby/music_sel/creator/text
execute if score music lobMusic matches 30 run data merge block 175 24 -110 {Text2:'["",{"translate":"sound.music_short.30","bold":true}]'}

# Explody Bois
execute if score music lobMusic matches 31 run scoreboard players set @s MusicSet 31
execute if score music lobMusic matches 31 run function glarth:mechanic/lobby/music_sel/tempo/fast
execute if score music lobMusic matches 31 run function glarth:mechanic/lobby/music_sel/creator/bart
execute if score music lobMusic matches 31 run data merge block 175 24 -110 {Text2:'["",{"translate":"sound.music_short.31","bold":true}]'}

# Junkyard Jam
execute if score music lobMusic matches 32 run scoreboard players set @s MusicSet 32
execute if score music lobMusic matches 32 run function glarth:mechanic/lobby/music_sel/tempo/fast
execute if score music lobMusic matches 32 run function glarth:mechanic/lobby/music_sel/creator/bart
execute if score music lobMusic matches 32 run data merge block 175 24 -110 {Text2:'["",{"translate":"sound.music_short.32","bold":true}]'}

# The Source
execute if score music lobMusic matches 33 run scoreboard players set @s MusicSet 33
execute if score music lobMusic matches 33 run function glarth:mechanic/lobby/music_sel/tempo/fast
execute if score music lobMusic matches 33 run function glarth:mechanic/lobby/music_sel/creator/bart
execute if score music lobMusic matches 33 run data merge block 175 24 -110 {Text2:'["",{"translate":"sound.music_short.33","bold":true}]'}

# Charged Bois
execute if score music lobMusic matches 34 run scoreboard players set @s MusicSet 34
execute if score music lobMusic matches 34 run function glarth:mechanic/lobby/music_sel/tempo/very_fast
execute if score music lobMusic matches 34 run function glarth:mechanic/lobby/music_sel/creator/bart
execute if score music lobMusic matches 34 run data merge block 175 24 -110 {Text2:'["",{"translate":"sound.music_short.34","bold":true}]'}

# Midnight Cavern
execute if score music lobMusic matches 35 run scoreboard players set @s MusicSet 35
execute if score music lobMusic matches 35 run function glarth:mechanic/lobby/music_sel/tempo/fast
execute if score music lobMusic matches 35 run function glarth:mechanic/lobby/music_sel/creator/text
execute if score music lobMusic matches 35 run data merge block 175 24 -110 {Text2:'["",{"translate":"sound.music_short.35","bold":true}]'}

# Aurora
execute if score music lobMusic matches 36 run scoreboard players set @s MusicSet 36
execute if score music lobMusic matches 36 run function glarth:mechanic/lobby/music_sel/tempo/slow
execute if score music lobMusic matches 36 run function glarth:mechanic/lobby/music_sel/creator/enshano
execute if score music lobMusic matches 36 run data merge block 175 24 -110 {Text2:'["",{"translate":"sound.music_short.36","bold":true}]'}

# The Source (Fast)
execute if score music lobMusic matches 37 run scoreboard players set @s MusicSet 37
execute if score music lobMusic matches 37 run function glarth:mechanic/lobby/music_sel/tempo/very_fast
execute if score music lobMusic matches 37 run function glarth:mechanic/lobby/music_sel/creator/bart
execute if score music lobMusic matches 37 run data merge block 175 24 -110 {Text2:'["",{"translate":"sound.music_short.37","bold":true}]'}

# Halloween Piano
execute if score music lobMusic matches 38 run scoreboard players set @s MusicSet 38
execute if score music lobMusic matches 38 run function glarth:mechanic/lobby/music_sel/tempo/medium
execute if score music lobMusic matches 38 run function glarth:mechanic/lobby/music_sel/creator/suburbanwizard
execute if score music lobMusic matches 38 run data merge block 175 24 -110 {Text2:'["",{"translate":"sound.music_short.38","bold":true}]'}

# Haunting Sequence
execute if score music lobMusic matches 39 run scoreboard players set @s MusicSet 39
execute if score music lobMusic matches 39 run function glarth:mechanic/lobby/music_sel/tempo/fast
execute if score music lobMusic matches 39 run function glarth:mechanic/lobby/music_sel/creator/meta70
execute if score music lobMusic matches 39 run data merge block 175 24 -110 {Text2:'["",{"translate":"sound.music_short.39","bold":true}]'}

# Howling Night
execute if score music lobMusic matches 40 run scoreboard players set @s MusicSet 40
execute if score music lobMusic matches 40 run function glarth:mechanic/lobby/music_sel/tempo/none
execute if score music lobMusic matches 40 run function glarth:mechanic/lobby/music_sel/creator/mistersherlock
execute if score music lobMusic matches 40 run data merge block 175 24 -110 {Text2:'["",{"translate":"sound.music_short.40","bold":true}]'}

# Piano Fantome
execute if score music lobMusic matches 41 run scoreboard players set @s MusicSet 41
execute if score music lobMusic matches 41 run function glarth:mechanic/lobby/music_sel/tempo/medium
execute if score music lobMusic matches 41 run function glarth:mechanic/lobby/music_sel/creator/enshano
execute if score music lobMusic matches 41 run data merge block 175 24 -110 {Text2:'["",{"translate":"sound.music_short.41","bold":true}]'}

# Spooky Wind
execute if score music lobMusic matches 42 run scoreboard players set @s MusicSet 42
execute if score music lobMusic matches 42 run function glarth:mechanic/lobby/music_sel/tempo/none
execute if score music lobMusic matches 42 run function glarth:mechanic/lobby/music_sel/creator/4wdcowboy
execute if score music lobMusic matches 42 run data merge block 175 24 -110 {Text2:'["",{"translate":"sound.music_short.42","bold":true}]'}

# Halloween Piano (Slow)
execute if score music lobMusic matches 43 run scoreboard players set @s MusicSet 43
execute if score music lobMusic matches 43 run function glarth:mechanic/lobby/music_sel/tempo/slow
execute if score music lobMusic matches 43 run function glarth:mechanic/lobby/music_sel/creator/suburbanwizard
execute if score music lobMusic matches 43 run data merge block 175 24 -110 {Text2:'["",{"translate":"sound.music_short.43","bold":true}]'}

# Roaring Night
execute if score music lobMusic matches 44 run scoreboard players set @s MusicSet 44
execute if score music lobMusic matches 44 run function glarth:mechanic/lobby/music_sel/tempo/none
execute if score music lobMusic matches 44 run function glarth:mechanic/lobby/music_sel/creator/mistersherlock
execute if score music lobMusic matches 44 run data merge block 175 24 -110 {Text2:'["",{"translate":"sound.music_short.44","bold":true}]'}

# Dragon Fish
execute if score music lobMusic matches 45 run scoreboard players set @s MusicSet 45
execute if score music lobMusic matches 45 run function glarth:mechanic/lobby/music_sel/tempo/very_fast
execute if score music lobMusic matches 45 run function glarth:mechanic/lobby/music_sel/creator/c418
execute if score music lobMusic matches 45 run data merge block 175 24 -110 {Text2:'["",{"translate":"sound.music_short.45","bold":true}]'}

# Concrete Halls
execute if score music lobMusic matches 46 run scoreboard players set @s MusicSet 46
execute if score music lobMusic matches 46 run function glarth:mechanic/lobby/music_sel/tempo/very_slow
execute if score music lobMusic matches 46 run function glarth:mechanic/lobby/music_sel/creator/c418
execute if score music lobMusic matches 46 run data merge block 175 24 -110 {Text2:'["",{"translate":"sound.music_short.46","bold":true}]'}

# Warmth
execute if score music lobMusic matches 47 run scoreboard players set @s MusicSet 47
execute if score music lobMusic matches 47 run function glarth:mechanic/lobby/music_sel/tempo/very_slow
execute if score music lobMusic matches 47 run function glarth:mechanic/lobby/music_sel/creator/c418
execute if score music lobMusic matches 47 run data merge block 175 24 -110 {Text2:'["",{"translate":"sound.music_short.47","bold":true}]'}

# Ballad of the Cats
execute if score music lobMusic matches 48 run scoreboard players set @s MusicSet 48
execute if score music lobMusic matches 48 run function glarth:mechanic/lobby/music_sel/tempo/very_slow
execute if score music lobMusic matches 48 run function glarth:mechanic/lobby/music_sel/creator/c418
execute if score music lobMusic matches 48 run data merge block 175 24 -110 {Text2:'["",{"translate":"sound.music_short.48","bold":true}]'}

# Boss Fight Theme
execute if score music lobMusic matches 49 run scoreboard players set @s MusicSet 49
execute if score music lobMusic matches 49 run function glarth:mechanic/lobby/music_sel/tempo/fast
execute if score music lobMusic matches 49 run function glarth:mechanic/lobby/music_sel/creator/andrew
execute if score music lobMusic matches 49 run data merge block 175 24 -110 {Text2:'["",{"translate":"sound.music_short.49","bold":true}]'}

# Time to Fight
execute if score music lobMusic matches 50 if score @s MusicLast matches 50 run scoreboard players set @s MusicSet 51
execute if score music lobMusic matches 50 unless score @s MusicLast matches 50 run scoreboard players set @s MusicSet 50
execute if score music lobMusic matches 50 run function glarth:mechanic/lobby/music_sel/tempo/fast
execute if score music lobMusic matches 50 run function glarth:mechanic/lobby/music_sel/creator/albertfernandez
execute if score music lobMusic matches 50 run data merge block 175 24 -110 {Text2:'["",{"translate":"sound.music_short.50","bold":true}]'}

# House of Madness
execute if score music lobMusic matches 51 run scoreboard players set @s MusicSet 52
execute if score music lobMusic matches 51 run function glarth:mechanic/lobby/music_sel/tempo/medium
execute if score music lobMusic matches 51 run function glarth:mechanic/lobby/music_sel/creator/bart
execute if score music lobMusic matches 51 run data merge block 175 24 -110 {Text2:'["",{"translate":"sound.music_short.52","bold":true}]'}

# Adrenaline Rush
execute if score music lobMusic matches 52 run scoreboard players set @s MusicSet 53
execute if score music lobMusic matches 52 run function glarth:mechanic/lobby/music_sel/tempo/fast
execute if score music lobMusic matches 52 run function glarth:mechanic/lobby/music_sel/creator/bart
execute if score music lobMusic matches 52 run data merge block 175 24 -110 {Text2:'["",{"translate":"sound.music_short.53","bold":true}]'}

# Strange Occurrences
execute if score music lobMusic matches 53 run scoreboard players set @s MusicSet 54
execute if score music lobMusic matches 53 run function glarth:mechanic/lobby/music_sel/tempo/slow
execute if score music lobMusic matches 53 run function glarth:mechanic/lobby/music_sel/creator/bart
execute if score music lobMusic matches 53 run data merge block 175 24 -110 {Text2:'["",{"translate":"sound.music_short.54","bold":true}]'}

# Heated Debate
execute if score music lobMusic matches 54 run scoreboard players set @s MusicSet 55
execute if score music lobMusic matches 54 run function glarth:mechanic/lobby/music_sel/tempo/slow
execute if score music lobMusic matches 54 run function glarth:mechanic/lobby/music_sel/creator/bart
execute if score music lobMusic matches 54 run data merge block 175 24 -110 {Text2:'["",{"translate":"sound.music_short.55","bold":true}]'}

# So Below
execute if score music lobMusic matches 55 run scoreboard players set @s MusicSet 56
execute if score music lobMusic matches 55 run function glarth:mechanic/lobby/music_sel/tempo/slow
execute if score music lobMusic matches 55 run function glarth:mechanic/lobby/music_sel/creator/lenaraine
execute if score music lobMusic matches 55 run data merge block 175 24 -110 {Text2:'["",{"translate":"sound.music_short.56","bold":true}]'}

# Birthright
execute if score music lobMusic matches 56 run scoreboard players set @s MusicSet 57
execute if score music lobMusic matches 56 run function glarth:mechanic/lobby/music_sel/tempo/fast
execute if score music lobMusic matches 56 run function glarth:mechanic/lobby/music_sel/creator/enshano
execute if score music lobMusic matches 56 run data merge block 175 24 -110 {Text2:'["",{"translate":"sound.music_short.57","bold":true}]'}

# Below the Above (Sewers)
execute if score music lobMusic matches 57 run scoreboard players set @s MusicSet 58
execute if score music lobMusic matches 57 run function glarth:mechanic/lobby/music_sel/tempo/slow
execute if score music lobMusic matches 57 run function glarth:mechanic/lobby/music_sel/creator/bart
execute if score music lobMusic matches 57 run data merge block 175 24 -110 {Text2:'["",{"translate":"sound.music_short.58","bold":true}]'}

# Lost in Time (Battle)
execute if score music lobMusic matches 58 run scoreboard players set @s MusicSet 59
execute if score music lobMusic matches 58 run function glarth:mechanic/lobby/music_sel/tempo/very_fast
execute if score music lobMusic matches 58 run function glarth:mechanic/lobby/music_sel/creator/bart
execute if score music lobMusic matches 58 run data merge block 175 24 -110 {Text2:'["",{"translate":"sound.music_short.59","bold":true}]'}

# So Below
execute if score music lobMusic matches 59 run scoreboard players set @s MusicSet 60
execute if score music lobMusic matches 59 run function glarth:mechanic/lobby/music_sel/tempo/slow
execute if score music lobMusic matches 59 run function glarth:mechanic/lobby/music_sel/creator/lenaraine
execute if score music lobMusic matches 59 run data merge block 175 24 -110 {Text2:'["",{"translate":"sound.music_short.60","bold":true}]'}

# Rubedo
execute if score music lobMusic matches 60 run scoreboard players set @s MusicSet 61
execute if score music lobMusic matches 60 run function glarth:mechanic/lobby/music_sel/tempo/average
execute if score music lobMusic matches 60 run function glarth:mechanic/lobby/music_sel/creator/lenaraine
execute if score music lobMusic matches 60 run data merge block 175 24 -110 {Text2:'["",{"translate":"sound.music_short.61","bold":true}]'}

# Rumbling Beneath
execute if score music lobMusic matches 61 run scoreboard players set @s MusicSet 62
execute if score music lobMusic matches 61 run function glarth:mechanic/lobby/music_sel/tempo/fast
execute if score music lobMusic matches 61 run function glarth:mechanic/lobby/music_sel/creator/enshano
execute if score music lobMusic matches 61 run data merge block 175 24 -110 {Text2:'["",{"translate":"sound.music_short.62","bold":true}]'}

# Shades and Magic
execute if score music lobMusic matches 62 run scoreboard players set @s MusicSet 63
execute if score music lobMusic matches 62 run function glarth:mechanic/lobby/music_sel/tempo/fast
execute if score music lobMusic matches 62 run function glarth:mechanic/lobby/music_sel/creator/enshano
execute if score music lobMusic matches 62 run data merge block 175 24 -110 {Text2:'["",{"translate":"sound.music_short.63","bold":true}]'}

# Time to Fight
execute if score music lobMusic matches 63 if score @s MusicLast matches 64 run scoreboard players set @s MusicSet 65
execute if score music lobMusic matches 63 unless score @s MusicLast matches 64 run scoreboard players set @s MusicSet 64
execute if score music lobMusic matches 63 run function glarth:mechanic/lobby/music_sel/tempo/fast
execute if score music lobMusic matches 63 run function glarth:mechanic/lobby/music_sel/creator/albertfernandez
execute if score music lobMusic matches 63 run data merge block 175 24 -110 {Text2:'["",{"translate":"sound.music_short.65","bold":true}]'}

