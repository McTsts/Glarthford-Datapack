tp @s 174 24 -112 -90 0
effect give @s resistance 999999 120 true
effect give @s saturation 999999 120 true
gamemode adventure @s
clear @s
function glarth:mechanic/lobby/setup
scoreboard players set @s edgeJ 0
function glarth:mechanic/lobby/music

execute unless entity @s[scores={cape=0..}] run scoreboard players set @s cape 1
function glarth:mechanic/lobby/fact

function glarth:mechanic/lobby/music_sel/main

advancement revoke @a everything
advancement grant @a only glarth:empty/root
advancement grant @a only glarth:empty/end
schedule function glarth:mechanic/action/lobby_d 5t