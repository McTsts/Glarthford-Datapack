tellraw @a[r=5] ["",{"text":"\n[","color":"dark_gray"},{"translate":"lumberjack","color":"gold"},{"text":"] ","color":"dark_gray"},{"translate":"lumberjack.d","color":"gray"}]
playsound lumberjack1 voice @a[r=5] ~ ~ ~ 100 1
execute @s[tag=!a] ~ ~ ~ scoreboard players test quest Stats 1 1
execute @s[score_Success_min=1] ~ ~ ~ tellraw @a[r=5] ["",{"text":"[","color":"green"},{"translate":"lumberjack.a1","color":"green","clickEvent":{"action":"run_command","value":"/trigger trigger set 1"}},{"text":"] ","color":"green"}]
execute @s[tag=!b] ~ ~ ~ tellraw @a[r=5] ["",{"text":"[","color":"green"},{"translate":"lumberjack.a2","color":"green","clickEvent":{"action":"run_command","value":"/trigger trigger set 25"}},{"text":"] ","color":"green"}]
