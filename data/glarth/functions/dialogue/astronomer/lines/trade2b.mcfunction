tellraw @a[distance=..5] ["",{"text":"[","color":"dark_gray"},{"translate":"astronomer","color":"white"},{"text":"] ","color":"dark_gray"},{"translate":"astronomer.5","color":"gray"}]
playsound astronomer5 voice @a[distance=..5] ~ ~ ~ 1 1 1
execute as @a[distance=..5,tag=!tip28] run function glarth:mechanic/tip/28