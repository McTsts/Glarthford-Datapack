scoreboard players test quest Stats 1 1
execute @s[score_Success_min=1] ~ ~ ~ tellraw @a[r=5] ["",{"text":"\n[","color":"dark_gray"},{"translate":"hermit","color":"yellow"},{"text":"] ","color":"dark_gray"},{"translate":"hermit.n","color":"gray"}]
execute @s[score_Success_min=1] ~ ~ ~ playsound hermit2 voice @a[r=5] ~ ~ ~ 100 1
scoreboard players test quest Stats 2
execute @s[score_Success_min=1] ~ ~ ~ tellraw @a[r=5] ["",{"text":"\n[","color":"dark_gray"},{"translate":"hermit","color":"yellow"},{"text":"] ","color":"dark_gray"},{"translate":"hermit.n2","color":"gray"}]
execute @s[score_Success_min=1] ~ ~ ~ playsound hermit4 voice @a[r=5] ~ ~ ~ 100 1
execute @s[tag=!a] ~ ~ ~ tellraw @a[r=5] ["",{"text":"[","color":"green"},{"translate":"hermit.a1","color":"green","clickEvent":{"action":"run_command","value":"/trigger trigger set 57"}},{"text":"] ","color":"green"}]
execute @s[tag=!b] ~ ~ ~ tellraw @a[r=5] ["",{"text":"[","color":"green"},{"translate":"hermit.a2","color":"green","clickEvent":{"action":"run_command","value":"/trigger trigger set 58"}},{"text":"] ","color":"green"}]