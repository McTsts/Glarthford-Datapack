execute @s ~ ~ ~ scoreboard players test quest Stats 1 2
execute @s[score_Success_min=1] ~ ~ ~ tellraw @a[r=5] ["",{"text":"\n[","color":"dark_gray"},{"translate":"baker","color":"red"},{"text":"] ","color":"dark_gray"},{"translate":"baker.d","color":"gray"}]
execute @s[score_Success_min=1] ~ ~ ~ playsound baker1 voice @a[r=5] ~ ~ ~ 100 1
execute @s ~ ~ ~ scoreboard players test quest Stats 4
execute @s[score_Success_min=1] ~ ~ ~ tellraw @a[r=5] ["",{"text":"\n[","color":"dark_gray"},{"translate":"baker","color":"red"},{"text":"] ","color":"dark_gray"},{"translate":"baker.d","color":"gray"}]
execute @s[score_Success_min=1] ~ ~ ~ playsound baker1 voice @a[r=5] ~ ~ ~ 100 1
execute @s ~ ~ ~ scoreboard players test quest Stats 3 3
execute @s[score_Success_min=1] ~ ~ ~ tellraw @a[r=5] ["",{"text":"\n[","color":"dark_gray"},{"translate":"baker","color":"red"},{"text":"] ","color":"dark_gray"},{"translate":"baker.f","color":"gray"}]
execute @s[score_Success_min=1] ~ ~ ~ playsound baker3 voice @a[r=5] ~ ~ ~ 100 1
tellraw @a[r=5] ["",{"text":"[","color":"green"},{"translate":"baker.a1","color":"green","clickEvent":{"action":"run_command","value":"/trigger trigger set 40"}},{"text":"] ","color":"green"}]
execute @s[tag=!a] ~ ~ ~ scoreboard players test quest Stats 1 1
execute @s[score_Success_min=1] ~ ~ ~ tellraw @a[r=5] ["",{"text":"[","color":"green"},{"translate":"baker.a2","color":"green","clickEvent":{"action":"run_command","value":"/trigger trigger set 61"}},{"text":"] ","color":"green"}]
execute @s[tag=b] ~ ~ ~ execute @s[tag=!c] ~ ~ ~ scoreboard players test quest Stats 1 1
execute @s[score_Success_min=1] ~ ~ ~ tellraw @a[r=5] ["",{"text":"[","color":"green"},{"translate":"baker.a2.1","color":"green","clickEvent":{"action":"run_command","value":"/trigger trigger set 62"}},{"text":"] ","color":"green"}]
