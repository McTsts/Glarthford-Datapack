tellraw @a[r=5] ["",{"text":"\n[","color":"dark_gray"},{"translate":"mayor","color":"black"},{"text":"] ","color":"dark_gray"},{"translate":"mayor.d","color":"gray"}]
playsound mayor1 voice @a[r=5] ~ ~ ~ 100 1
execute @s[tag=!a] ~ ~ ~ scoreboard players test quest Stats 4 4
execute @s[score_Success_min=1] ~ ~ ~ tellraw @a[r=5] ["",{"text":"[","color":"green"},{"translate":"mayor.a1","color":"green","clickEvent":{"action":"run_command","value":"/trigger trigger set 67"}},{"text":"] ","color":"green"}]