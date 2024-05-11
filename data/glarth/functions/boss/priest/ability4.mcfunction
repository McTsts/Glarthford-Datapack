execute @e[tag=ender_boss] ~ ~ ~ tp @a[r=15,m=2] ~ ~ ~ ~180 ~
execute @e[tag=ender_boss] ~ ~ ~ tellraw @a[r=15] ["",{"text":"\n[","color":"dark_gray"},{"translate":"ender_priest","color":"dark_purple"},{"text":"] ","color":"dark_gray"},{"translate":"ender_priest.4","color":"gray"}]
execute @e[tag=ender_boss] ~ ~ ~ playsound ender_priest6 voice @a[r=15] ~ ~ ~ 100 1