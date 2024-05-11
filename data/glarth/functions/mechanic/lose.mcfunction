tellraw @a ["",{"translate":"gameover","color":"red"}]
stopsound @a
execute as @a at @s run playsound lose player @s ~ ~ ~ 0.4 1
function glarth:mechanic/end
function glarth:mechanic/q_game_to_lobby