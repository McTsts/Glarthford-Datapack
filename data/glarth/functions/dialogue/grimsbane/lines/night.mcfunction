tellraw @a[scores={charType=1}] ["",{"text":"\n[","color":"dark_gray"},{"translate":"grimsbane","color":"#282828"},{"text":"] ","color":"dark_gray"},{"translate":"grimsbane.n.a","color":"gray"}]
tellraw @a[scores={charType=2}] ["",{"text":"\n[","color":"dark_gray"},{"translate":"grimsbane","color":"#282828"},{"text":"] ","color":"dark_gray"},{"translate":"grimsbane.n.b","color":"gray"}]
tellraw @a[scores={charType=3}] ["",{"text":"\n[","color":"dark_gray"},{"translate":"grimsbane","color":"#282828"},{"text":"] ","color":"dark_gray"},{"translate":"grimsbane.n.c","color":"gray"}]
execute as @a[scores={charType=1}] at @s run playsound grimsbane2 voice @s ~ ~ ~ 1 1 1
execute as @a[scores={charType=2}] at @s run playsound grimsbane3 voice @s ~ ~ ~ 1 1 1
execute as @a[scores={charType=3}] at @s run playsound grimsbane4 voice @s ~ ~ ~ 1 1 1