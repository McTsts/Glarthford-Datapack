function glarth:combat/name_list
execute as @r[tag=inTBC] at @s if entity @a[distance=0.1..,tag=inTBC] run tellraw @a ["\n",{"translate":"tbc","bold":true,"color":"aqua"},{"text":" >> ","color":"gray"},{"translate":"tbc.msg.flee.mp","color":"aqua","with":[{"block":"84 26 -123","nbt":"front_text.messages[0]","interpret":true,"color":"aqua"}]}]
execute as @r[tag=inTBC] at @s unless entity @a[distance=0.1..,tag=inTBC] unless entity @e[tag=tbcAlly] run tellraw @a ["\n",{"translate":"tbc","bold":true,"color":"aqua"},{"text":" >> ","color":"gray"},{"translate":"tbc.msg.flee.sp","color":"aqua","with":[{"block":"84 26 -123","nbt":"front_text.messages[0]","interpret":true,"color":"aqua"}]}]
execute as @r[tag=inTBC] at @s unless entity @a[distance=0.1..,tag=inTBC] if entity @e[tag=tbcAlly] run tellraw @a ["\n",{"translate":"tbc","bold":true,"color":"aqua"},{"text":" >> ","color":"gray"},{"translate":"tbc.msg.flee.mp","color":"aqua","with":[{"block":"84 26 -123","nbt":"front_text.messages[0]","interpret":true,"color":"aqua"}]}]
function glarth:combat/no_loot
execute if score lobbyTBC Stats matches 2 run scoreboard players set lobbyTBC Stats 1
function glarth:combat/end
schedule function glarth:combat/no_loot 20
scoreboard players set @a MusicSet 0