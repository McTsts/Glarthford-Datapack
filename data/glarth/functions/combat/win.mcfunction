function glarth:combat/name_list
execute as @r[tag=inTBC] at @s if entity @a[distance=0.1..,tag=inTBC] run tellraw @a ["\n",{"translate":"tbc","bold":true,"color":"gold"},{"text":" >> ","color":"gray"},{"translate":"tbc.msg.win.mp","color":"gold","with":[{"block":"84 26 -123","nbt":"Text1","interpret":true,"color":"gold"}]}]
execute as @r[tag=inTBC] at @s unless entity @a[distance=0.1..,tag=inTBC] unless entity @e[tag=tbcAlly] run tellraw @a ["\n",{"translate":"tbc","bold":true,"color":"gold"},{"text":" >> ","color":"gray"},{"translate":"tbc.msg.win.sp","color":"gold","with":[{"block":"84 26 -123","nbt":"Text1","interpret":true,"color":"gold"}]}]
execute as @r[tag=inTBC] at @s unless entity @a[distance=0.1..,tag=inTBC] if entity @e[tag=tbcAlly] run tellraw @a ["\n",{"translate":"tbc","bold":true,"color":"gold"},{"text":" >> ","color":"gray"},{"translate":"tbc.msg.win.mp","color":"gold","with":[{"block":"84 26 -123","nbt":"Text1","interpret":true,"color":"gold"}]}]
execute if entity @a[tag=inTBC,scores={tbcSpeed=9..}] run tellraw @a ["",{"translate":"tbc","bold":true,"color":"gold"},{"text":" >> ","color":"gray"},{"translate":"tbc.msg.win.speed","color":"gold","italic":true}]
execute if entity @a[tag=inTBC,scores={tbcSpeed=..7}] unless entity @a[tag=inTBC,scores={tbcSpeed=9..}] run tellraw @a ["",{"translate":"tbc","bold":true,"color":"gold"},{"text":" >> ","color":"gray"},{"translate":"tbc.msg.win.speed","color":"gold","italic":true}]
schedule function glarth:combat/loot_attempt 20t

execute if score lobbyTBC Stats matches 1 run function glarth:mechanic/q_game_to_lobby
execute if score lobbyTBC Stats matches 1 run scoreboard players remove quest Stats 1
execute if score lobbyTBC Stats matches 1 run function glarth:mechanic/q_lobby_to_game

function glarth:combat/end