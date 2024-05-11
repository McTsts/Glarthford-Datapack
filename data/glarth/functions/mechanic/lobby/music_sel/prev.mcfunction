function glarth:mechanic/lobby/music_sel/stats

# Set score
scoreboard players remove music lobMusic 1
execute if score music lobMusic matches ..-1 run scoreboard players operation music lobMusic = Max lobMusic

# Check Unlocked
function glarth:mechanic/lobby/music_sel/unlocked

execute if score unlocked lobMusic matches 1 as @a[gamemode=!creative,gamemode=!spectator] run function glarth:mechanic/lobby/music_sel/main
execute if score unlocked lobMusic matches 0 run function glarth:mechanic/lobby/music_sel/prev
