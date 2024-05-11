execute @s[tag=!a] ~ ~ ~ tellraw @a[r=5] ["",{"text":"\n[","color":"dark_gray"},{"translate":"worker","color":"gold"},{"text":"] ","color":"dark_gray"},{"translate":"worker.d","color":"gray"}]
execute @s[tag=!a] ~ ~ ~ playsound worker1 voice @a[r=5] ~ ~ ~ 100 1
execute @s[tag=a] ~ ~ ~ tellraw @a[r=5] ["",{"text":"\n[","color":"dark_gray"},{"translate":"worker","color":"gold"},{"text":"] ","color":"dark_gray"},{"translate":"worker.d2","color":"gray"}]
execute @s[tag=a] ~ ~ ~ playsound worker5 voice @a[r=5] ~ ~ ~ 100 1
execute @s[tag=!a] ~ ~ ~ tellraw @a[r=5] ["",{"text":"[","color":"green"},{"translate":"worker.a1","color":"green","clickEvent":{"action":"run_command","value":"/trigger trigger set 53"}},{"text":"] ","color":"green"}]
execute @s[tag=!a] ~ ~ ~ tellraw @a[r=5] ["",{"text":"[","color":"green"},{"translate":"worker.a2","color":"green","clickEvent":{"action":"run_command","value":"/trigger trigger set 54"}},{"text":"] ","color":"green"}]