tellraw @a[scores={charType=1}] ["",{"text":"\n[","color":"dark_gray"},{"translate":"ender_priest","color":"dark_purple"},{"text":"] ","color":"dark_gray"},{"translate":"ender_priest.d.a","color":"gray","font":"custom:ender"}] 
tellraw @a[scores={charType=2}] ["",{"text":"\n[","color":"dark_gray"},{"translate":"ender_priest","color":"dark_purple"},{"text":"] ","color":"dark_gray"},{"translate":"ender_priest.d.b","color":"gray","font":"custom:ender"}] 
tellraw @a[scores={charType=3}] ["",{"text":"\n[","color":"dark_gray"},{"translate":"ender_priest","color":"dark_purple"},{"text":"] ","color":"dark_gray"},{"translate":"ender_priest.d.c","color":"gray","font":"custom:ender"}] 
execute as @a[scores={charType=1}] at @s run playsound ender_priest10 voice @s ~ ~ ~ 1 1 1 
execute as @a[scores={charType=2}] at @s run playsound ender_priest11 voice @s ~ ~ ~ 1 1 1 
execute as @a[scores={charType=3}] at @s run playsound ender_priest12 voice @s ~ ~ ~ 1 1 1 