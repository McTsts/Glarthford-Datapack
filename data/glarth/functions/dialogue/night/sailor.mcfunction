tellraw @a[r=5] ["",{"text":"\n[","color":"dark_gray"},{"translate":"sailor","color":"dark_blue"},{"text":"] ","color":"dark_gray"},{"translate":"sailor.n","color":"gray"}]
playsound sailor2 voice @a[r=5] ~ ~ ~ 100 1
execute @s[tag=!a] ~ ~ ~ scoreboard players test quest Stats 5 5
execute @s[score_Success_min=1] ~ ~ ~ tellraw @a[r=5] ["",{"text":"[","color":"green"},{"translate":"sailor.a1","color":"green","clickEvent":{"action":"run_command","value":"/trigger trigger set 20"}},{"text":"] ","color":"green"}]
execute @s[tag=!c] ~ ~ ~ scoreboard players test quest Stats 5 5
execute @s[score_Success_min=1] ~ ~ ~ tellraw @a[r=5] ["",{"text":"[","color":"green"},{"translate":"sailor.a3","color":"green","clickEvent":{"action":"run_command","value":"/trigger trigger set 83"}},{"text":"] ","color":"green"}]
execute @s[tag=!b] ~ ~ ~ tellraw @a[r=5] ["",{"text":"[","color":"green"},{"translate":"sailor.a2","color":"green","clickEvent":{"action":"run_command","value":"/trigger trigger set 36"}},{"text":"] ","color":"green"}]