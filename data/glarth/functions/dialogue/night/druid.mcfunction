tellraw @a[r=5] ["",{"text":"\n[","color":"dark_gray"},{"translate":"druid","color":"dark_green"},{"text":"] ","color":"dark_gray"},{"translate":"druid.n","color":"gray"}]
playsound druid2 voice @a[r=5] ~ ~ ~ 100 1
execute @s[tag=!a] ~ ~ ~ scoreboard players test quest Stats 2 2
execute @s[score_Success_min=1] ~ ~ ~ tellraw @a[r=5] ["",{"text":"[","color":"green"},{"translate":"druid.a1","color":"green","clickEvent":{"action":"run_command","value":"/trigger trigger set 11"}},{"text":"] ","color":"green"}]
tellraw @a[r=5] ["",{"text":"[","color":"green"},{"translate":"druid.a2","color":"green","clickEvent":{"action":"run_command","value":"/trigger trigger set 19"}},{"text":"] ","color":"green"}]