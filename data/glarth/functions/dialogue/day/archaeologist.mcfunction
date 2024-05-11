execute @s[tag=!b] ~ ~ ~ tellraw @a[r=5] ["",{"text":"\n[","color":"dark_gray"},{"translate":"archaeologist","color":"gray"},{"text":"] ","color":"dark_gray"},{"translate":"archaeologist.d","color":"gray"}]
execute @s[tag=!b] ~ ~ ~ playsound archaeologist1 voice @a[r=5] ~ ~ ~ 100 1
execute @s[tag=b] ~ ~ ~ execute @s[tag=!c] ~ ~ ~ tellraw @a[r=5] ["",{"text":"\n[","color":"dark_gray"},{"translate":"archaeologist","color":"gray"},{"text":"] ","color":"dark_gray"},{"translate":"archaeologist.g1","color":"gray"}]
execute @s[tag=b] ~ ~ ~ execute @s[tag=!c] ~ ~ ~ playsound archaeologist3 voice @a[r=5] ~ ~ ~ 100 1
execute @s[tag=c] ~ ~ ~ tellraw @a[r=5] ["",{"text":"\n[","color":"dark_gray"},{"translate":"archaeologist","color":"gray"},{"text":"] ","color":"dark_gray"},{"translate":"archaeologist.g2","color":"gray"}]
execute @s[tag=c] ~ ~ ~ playsound archaeologist4 voice @a[r=5] ~ ~ ~ 100 1
execute @s[tag=!a] ~ ~ ~ scoreboard players test quest Stats 4 4
execute @s[score_Success_min=1] ~ ~ ~ tellraw @a[r=5] ["",{"text":"[","color":"green"},{"translate":"archaeologist.a1","color":"green","clickEvent":{"action":"run_command","value":"/trigger trigger set 16"}},{"text":"] ","color":"green"}]
execute @s[tag=!b] ~ ~ ~ scoreboard players test quest Stats 2 2
execute @s[score_Success_min=1] ~ ~ ~ tellraw @a[r=5] ["",{"text":"[","color":"green"},{"translate":"archaeologist.a2","color":"green","clickEvent":{"action":"run_command","value":"/trigger trigger set 44"}},{"text":"] ","color":"green"}]
execute @s[tag=b] ~ ~ ~ execute @s[tag=!c] ~ ~ ~ scoreboard players test quest Stats 2 2
execute @s[score_Success_min=1] ~ ~ ~ tellraw @a[r=5] ["",{"text":"[","color":"green"},{"translate":"archaeologist.a3","color":"green","clickEvent":{"action":"run_command","value":"/trigger trigger set 45"}},{"text":"] ","color":"green"}]