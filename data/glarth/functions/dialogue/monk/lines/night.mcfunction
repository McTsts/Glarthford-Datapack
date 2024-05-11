execute as @a[distance=..5] run tellraw @s[scores={charType=1}] ["",{"text":"\n[","color":"dark_gray"},{"translate":"monk","color":"#8C5800"},{"text":"] ","color":"dark_gray"},{"translate":"monk.n.a","color":"gray"}]
execute as @a[distance=..5] run tellraw @s[scores={charType=2}] ["",{"text":"\n[","color":"dark_gray"},{"translate":"monk","color":"#8C5800"},{"text":"] ","color":"dark_gray"},{"translate":"monk.n.b","color":"gray"}]
execute as @a[distance=..5] run tellraw @s[scores={charType=3}] ["",{"text":"\n[","color":"dark_gray"},{"translate":"monk","color":"#8C5800"},{"text":"] ","color":"dark_gray"},{"translate":"monk.n.c","color":"gray"}]
playsound monk2 voice @a[distance=..5,scores={charType=1}] ~ ~ ~ 1 1 1
playsound monk3 voice @a[distance=..5,scores={charType=2}] ~ ~ ~ 1 1 1
playsound monk4 voice @a[distance=..5,scores={charType=3}] ~ ~ ~ 1 1 1