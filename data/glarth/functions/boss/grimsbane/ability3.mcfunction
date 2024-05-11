execute @e[tag=grimsbane_boss] ~ ~ ~ scoreboard players tag @a[r=15,m=2] add 360
execute @e[tag=grimsbane_boss] ~ ~ ~ tellraw @a[r=15] ["",{"text":"\n[","color":"dark_gray"},{"translate":"grimsbane","color":"black"},{"text":"] ","color":"dark_gray"},{"translate":"grimsbane.3","color":"gray"}]
execute @e[tag=grimsbane_boss] ~ ~ ~ playsound grimsbane5 voice @a[r=15] ~ ~ ~ 100 1