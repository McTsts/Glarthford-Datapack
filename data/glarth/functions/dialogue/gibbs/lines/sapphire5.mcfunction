tellraw @a[distance=..5] ["\n",{"text":"[","color":"dark_gray"},{"translate":"gibbs","color":"gray"},{"text":"] ","color":"dark_gray"},{"translate":"gibbs.quickfast.sapphire.5","color":"gray"}]
playsound gibbs16 voice @a[distance=..5] ~ ~ ~ 1 1 1

tag @e[tag=gibbs] add garyTalked

execute as @a[distance=..5,tag=!tip58] at @s run function glarth:mechanic/tip/58