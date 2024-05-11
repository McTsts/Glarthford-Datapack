tellraw @a[r=5] ["",{"text":"\n[","color":"dark_gray"},{"translate":"brewer","color":"gold"},{"text":"] ","color":"dark_gray"},{"translate":"brewer.n","color":"gray"}]
playsound brewer2 voice @a[r=5] ~ ~ ~ 100 1
scoreboard players test quest Stats 3 3
execute @s[score_Success_min=1] ~ ~ ~ tellraw @a[r=5] ["",{"text":"[","color":"green"},{"translate":"brewer.a1","color":"green","clickEvent":{"action":"run_command","value":"/trigger trigger set 14"}},{"text":"] ","color":"green"}]
