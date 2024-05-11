## Set
# Changes to a track set on MusicSet
# Plays a music, sets the id to MusicSet and displays the message.
# Sets MusicTime & MusicMax to the total length of the track in ticks
execute as @a[scores={MusicSet=0..}] unless score @s MusicTime matches ..20 if score @s MusicSet = @s MusicLast run scoreboard players reset @s MusicSet
execute as @a[scores={MusicSet=0..}] run function glarth:mechanic/music/set

## Rejoin
# Restarts the last played music after rejoin by setting MusicNum (next track) to MusicSet (change to this track); 
# Alternatively for lobby music set a random track from the lobby music to MusicSet
execute as @a[scores={MusicLeave=1..}] unless score game Stats matches 0 run scoreboard players operation @s MusicSet = @s MusicNum
execute as @a[scores={MusicLeave=1..}] if score game Stats matches 0 run function glarth:mechanic/lobby/music
execute as @a[scores={MusicLeave=1..}] run scoreboard players set @s MusicLeave 0

## Next
# Decrements MusicTime -> Once MusicTime hits 0 next track is started
# If so copies the id from MusicNum onto MusicSet
# Alternatively if in the lobby does extra checks for the Jukebox where you can select music
scoreboard players remove @a[scores={MusicTime=1..}] MusicTime 1
execute as @a[scores={MusicTime=..0}] unless score game Stats matches 0 run scoreboard players operation @s MusicSet = @s MusicNum
execute as @a[scores={MusicTime=..0}] if score game Stats matches 0 if score TBC Stats matches 1 run scoreboard players operation @s MusicSet = @s MusicNum
execute as @a[scores={MusicTime=..0},gamemode=adventure] if score game Stats matches 0 if score TBC Stats matches 0 run function glarth:mechanic/lobby/music_sel/main
execute as @a[scores={MusicTime=..0},gamemode=!adventure] if score game Stats matches 0 if score TBC Stats matches 0 run scoreboard players operation @s MusicSet = @s MusicNum

## Actual Time
# Converts MusicTime into how many ticks into the track it is using MusicMax
# Result goes into MusicTimeR
execute as @a run scoreboard players operation @s MusicTimeR = @s MusicMax
execute as @a run scoreboard players operation @s MusicTimeR -= @s MusicTime
scoreboard players add @a MusicTimeR 1

## Fade Out
# Checks if the next track (MusicNum) is not equal to the current track (MusicLast) and checks that it's not already doing a fade out
# If all of those are true, attempts a fade out. For all tracks there's a list of times where it can fade out, when one of those is currently
# It does a fade out, otherwise nothing changes
# After the fade out is done it sets MusicSet to the next track
execute as @a unless score @s MusicLast = @s MusicNum unless score @s MusicFade matches 1.. run function glarth:mechanic/music/fade_out
scoreboard players remove @a[scores={MusicFade=1..}] MusicFade 1
execute as @a if score @s MusicFade matches 0 run scoreboard players operation @s MusicSet = @s MusicNum
execute as @a if score @s MusicFade matches 0 run scoreboard players set @s MusicTime 0
execute as @a if score @s MusicFade matches 0 run scoreboard players set @s MusicFade -1


