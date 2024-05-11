gamemode adventure @a[gamemode=spectator]
tp @a[gamemode=adventure] 174 24 -112 -90 0
function glarth:mechanic/lobby/setup
scoreboard players reset timer end
stopsound @a
function glarth:mechanic/win_msg
function glarth:mechanic/sound/win
scoreboard players set @a MusicTime 150

function board:lobby_table

clear @a[gamemode=adventure]
effect clear @a[gamemode=adventure] minecraft:invisibility
effect give @a[gamemode=adventure] minecraft:blindness 1 0 true

function glarth:mechanic/q_game_to_lobby
execute unless score quest Stats matches 11.. run scoreboard players add quest Stats 1



kill @e[tag=door]
