tellraw @a[r=5] ["",{"text":"\n[","color":"dark_gray"},{"translate":"astronomer","color":"white"},{"text":"] ","color":"dark_gray"},{"translate":"astronomer.n","color":"gray"}]
playsound astronomer2 voice @a[r=5] ~ ~ ~ 100 1
execute @s ~ ~ ~ scoreboard players test time Dis 1200 1259
execute @s[score_Success_min=1] ~ ~ ~ tellraw @a[r=5] ["",{"text":"[","color":"green"},{"translate":"astronomer.a1","color":"green","clickEvent":{"action":"run_command","value":"/trigger trigger set 65"}},{"text":"] ","color":"green"}]
execute @s[score_Success=0] ~ ~ ~ tellraw @a[r=5] ["",{"text":"[","color":"green"},{"translate":"astronomer.a1","color":"green","clickEvent":{"action":"run_command","value":"/trigger trigger set 66"}},{"text":"] ","color":"green"}]