execute @s[tag=!a] ~ ~ ~ tellraw @a[r=5] ["",{"text":"\n[","color":"dark_gray"},{"translate":"worker","color":"gold"},{"text":"] ","color":"dark_gray"},{"translate":"worker.n","color":"gray"}]
execute @s[tag=!a] ~ ~ ~ playsound worker2 voice @a[r=5] ~ ~ ~ 100 1
execute @s[tag=a] ~ ~ ~ tellraw @a[r=5] ["",{"text":"\n[","color":"dark_gray"},{"translate":"worker","color":"gold"},{"text":"] ","color":"dark_gray"},{"translate":"worker.n2","color":"gray"}]
execute @s[tag=a] ~ ~ ~ playsound worker6 voice @a[r=5] ~ ~ ~ 100 1