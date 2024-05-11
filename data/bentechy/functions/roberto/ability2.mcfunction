execute @e[tag=roberto_boss] ~ ~ ~ effect @a[r=15] blindness 3 3
scoreboard players reset @e[tag=roberto_boss] SKBossTimer
execute @e[tag=roberto_boss] ~ ~ ~ tellraw @a[r=15] ["",{"text":"\n[","color":"dark_gray"},{"translate":"roberto","color":"black"},{"text":"] ","color":"dark_gray"},{"translate":"roberto.2","color":"gray"}]
playsound roberto3 voice @a[r=5] ~ ~ ~ 100 1