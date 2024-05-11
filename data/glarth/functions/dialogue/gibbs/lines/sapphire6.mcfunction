tellraw @a[distance=..5] ["",{"text":"[","color":"dark_gray"},{"translate":"gibbs","color":"gray"},{"text":"] ","color":"dark_gray"},{"translate":"gibbs.quickfast.sapphire.6","color":"gray"}]
playsound gibbs21 voice @a[distance=..5] ~ ~ ~ 1 1 1

tag @e[tag=gibbs] add g
schedule function glarth:dialogue/mctsts/lines/yeah 30t
schedule function glarth:dialogue/adri/lines/yeah 40t
schedule function glarth:dialogue/suso/lines/yeah 50t
schedule function glarth:dialogue/jerozgen/lines/yeah 60t
schedule function glarth:dialogue/gibbs/trades/yeah 61t