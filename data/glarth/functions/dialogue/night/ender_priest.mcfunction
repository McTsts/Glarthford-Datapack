execute @s ~ ~ ~ execute @e[type=ender_crystal] ~ ~ ~ execute @e[tag=ender_priest] ~ ~ ~ tellraw @a[r=5] ["",{"text":"\n[","color":"dark_gray"},{"translate":"ender_priest","color":"dark_purple"},{"text":"] ","color":"dark_gray"},{"translate":"ender_priest.i","color":"gray"}]
execute @s ~ ~ ~ execute @e[type=ender_crystal] ~ ~ ~ execute @e[tag=ender_priest] ~ ~ ~ playsound ender_priest1 voice @a[r=5] ~ ~ ~ 100 1
execute @s[score_Success=0] ~ ~ ~ tellraw @a[r=5] ["",{"text":"\n[","color":"dark_gray"},{"translate":"ender_priest","color":"dark_purple"},{"text":"] ","color":"dark_gray"},{"translate":"ender_priest.n","color":"gray"}]
execute @s[score_Success_min=1] ~ ~ ~ playsound ender_priest2 voice @a[r=5] ~ ~ ~ 100 1
execute @s[score_Success_min=1] ~ ~ ~ function mctsts:boss/priest/spawn