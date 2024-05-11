tellraw @a[r=5] ["",{"text":"\n[","color":"dark_gray"},{"translate":"digger","color":"gray"},{"text":"] ","color":"dark_gray"},{"translate":"digger.n","color":"gray"}]
playsound digger2 voice @a[r=5] ~ ~ ~ 100 1
execute @s[tag=!a] ~ ~ ~ tellraw @a[r=5] ["",{"text":"[","color":"green"},{"translate":"digger.a1","color":"green","clickEvent":{"action":"run_command","value":"/trigger trigger set 39"}},{"text":"] ","color":"green"}]
