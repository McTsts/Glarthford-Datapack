execute @e[tag=grimsbane_boss] ~ ~ ~ effect @a[r=15] 18 2 120 true
execute @e[tag=grimsbane_boss] ~ ~ ~ tellraw @a[r=15] ["",{"text":"\n[","color":"dark_gray"},{"translate":"grimsbane","color":"black"},{"text":"] ","color":"dark_gray"},{"translate":"grimsbane.4","color":"gray"}]
execute @e[tag=grimsbane_boss] ~ ~ ~ playsound grimsbane6 voice @a[r=15] ~ ~ ~ 100 1