# force gary sidebar
scoreboard players set endStarted Stats 0
setblock 2 27 -334 minecraft:end_portal_frame[facing=south,eye=false]
execute as @a run function glarth:team/join/player
scoreboard players set garyMode Stats 2
function glarth:mechanic/time/quest