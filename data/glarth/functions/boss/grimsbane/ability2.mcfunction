execute @e[tag=grimsbane_boss] ~ ~ ~ effect @s 1 3 3 true
execute @e[tag=grimsbane_boss] ~ ~ ~ tellraw @a[r=15] ["",{"text":"\n[","color":"dark_gray"},{"translate":"grimsbane","color":"black"},{"text":"] ","color":"dark_gray"},{"translate":"grimsbane.2","color":"gray"}]
execute @e[tag=grimsbane_boss] ~ ~ ~ playsound grimsbane4 voice @a[r=15] ~ ~ ~ 100 1