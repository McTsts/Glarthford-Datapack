execute unless entity @e[tag=NetheranLineSkip] run tellraw @a ["\n",{"text":"[","color":"dark_gray"},{"translate":"netheran","color":"dark_red"},{"text":"] ","color":"dark_gray"},{"translate":"netheran.3","color":"gray"},"\n"]
execute unless entity @e[tag=NetheranLineSkip] as @a at @s run execute unless score @s trigger = @s triggerPrev run playsound netheran6 voice @s ~ ~ ~ 1 1 1
tag @e remove NetheranLineSkip
