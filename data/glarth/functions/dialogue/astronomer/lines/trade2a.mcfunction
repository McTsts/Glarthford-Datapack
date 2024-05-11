tellraw @a[distance=..5] ["",{"text":"[","color":"dark_gray"},{"translate":"astronomer","color":"white"},{"text":"] ","color":"dark_gray"},{"translate":"astronomer.1","color":"gray"}]
playsound astronomer3 voice @a[distance=..5] ~ ~ ~ 1 1 1
execute as @a[distance=..5,tag=!tip29] run function glarth:mechanic/tip/29