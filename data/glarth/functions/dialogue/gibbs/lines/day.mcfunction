execute unless score @s trigger = @s triggerPrev run tellraw @a[distance=..5] ["",{"text":"\n[","color":"dark_gray"},{"translate":"gibbs","color":"gray"},{"text":"] ","color":"dark_gray"},{"translate":"gibbs.d","color":"gray"}]
execute unless score @s trigger = @s triggerPrev run playsound gibbs1 voice @a[distance=..5] ~ ~ ~ 1 1 1
tag @e[tag=gibbs] add gibbs_time
schedule function glarth:dialogue/gibbs/untime 5s