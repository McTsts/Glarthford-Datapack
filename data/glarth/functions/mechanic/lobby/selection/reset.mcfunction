scoreboard players reset * lobbySelection

kill @e[tag=charQS,tag=lobby]
kill @e[tag=charQSname,tag=lobby]
kill @e[tag=charQB,tag=lobby]
kill @e[tag=charQ,tag=lobby]
kill @e[tag=selNameAll,tag=lobby]

fill 164 24 -129 164 26 -129 minecraft:air destroy
fill 161 24 -129 161 26 -129 minecraft:air destroy
fill 166 25 -129 168 25 -129 minecraft:air destroy
fill 157 25 -129 159 25 -129 minecraft:air destroy
setblock 165 24 -129 air destroy

function glarth:mechanic/lobby/change