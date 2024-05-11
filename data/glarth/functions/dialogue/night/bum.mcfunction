tellraw @a[r=5] ["",{"text":"\n[","color":"dark_gray"},{"translate":"bum","color":"gray"},{"text":"] ","color":"dark_gray"},{"translate":"bum.n","color":"gray"}]
playsound bum2 voice @a[r=5] ~ ~ ~ 100 1
execute @s[tag=!a] ~ ~ ~ scoreboard players test quest Stats 1 2
execute @s[score_Success_min=1] ~ ~ ~ tellraw @a[r=5] ["",{"text":"[","color":"green"},{"translate":"bum.a1","color":"green","clickEvent":{"action":"run_command","value":"/trigger trigger set 4"}},{"text":"] ","color":"green"}]
execute @s[tag=!b] ~ ~ ~ scoreboard players test quest Stats 4 4
execute @s[score_Success_min=1] ~ ~ ~ tellraw @a[r=5] ["",{"text":"[","color":"green"},{"translate":"bum.a2","color":"green","clickEvent":{"action":"run_command","value":"/trigger trigger set 8"}},{"text":"] ","color":"green"}]