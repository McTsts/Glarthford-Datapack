tellraw @a[r=5] ["",{"text":"\n[","color":"dark_gray"},{"translate":"witch","color":"dark_purple"},{"text":"] ","color":"dark_gray"},{"translate":"witch.d","color":"gray"}]
playsound witch1 voice @a[r=5] ~ ~ ~ 100 1
execute @s[tag=!a] ~ ~ ~ scoreboard players test quest Stats 2 2
execute @s[score_Success_min=1] ~ ~ ~ tellraw @a[r=5] ["",{"text":"[","color":"green"},{"translate":"witch.a1","color":"green","clickEvent":{"action":"run_command","value":"/trigger trigger set 12"}},{"text":"] ","color":"green"}]
execute @s[tag=!b] ~ ~ ~ tellraw @a[r=5] ["",{"text":"[","color":"green"},{"translate":"witch.a2","color":"green","clickEvent":{"action":"run_command","value":"/trigger trigger set 23"}},{"text":"] ","color":"green"}]
execute @s[tag=!c] ~ ~ ~ scoreboard players test quest Stats 5 5
execute @s[score_Success_min=1] ~ ~ ~ tellraw @a[r=5] ["",{"text":"[","color":"green"},{"translate":"witch.a3","color":"green","clickEvent":{"action":"run_command","value":"/trigger trigger set 59"}},{"text":"] ","color":"green"}]
execute @s[tag=c] ~ ~ ~ execute @s[tag=!d] ~ ~ ~ scoreboard players test quest Stats 5 5
execute @s[score_Success_min=1] ~ ~ ~ tellraw @a[r=5] ["",{"text":"[","color":"green"},{"translate":"witch.a3.1","color":"green","clickEvent":{"action":"run_command","value":"/trigger trigger set 60"}},{"text":"] ","color":"green"}]