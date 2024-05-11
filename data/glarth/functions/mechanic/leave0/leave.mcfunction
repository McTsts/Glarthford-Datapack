scoreboard players remove $left ID 1
execute if score $left ID matches 1.. run function glarth:mechanic/leave0/leave_rec
tellraw @a [{"translate":"multiplayer.player.left0","color":"yellow","with":[{"nbt":"leave0[0]","storage":"glarth:main","interpret":true}]},"\n"]
function glarth:mechanic/leave0/reset

execute if score game Stats matches 0 run function glarth:sign/combat/change
execute if score game Stats matches 0 run function glarth:mechanic/lobby/change