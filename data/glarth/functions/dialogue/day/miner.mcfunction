execute @s[tag=!a] ~ ~ ~ scoreboard players test quest Stats 1 1
execute @s[score_Success_min=1] ~ ~ ~ tellraw @a[r=5] ["",{"text":"\n[","color":"dark_gray"},{"translate":"miner","color":"dark_gray"},{"text":"] ","color":"dark_gray"},{"translate":"miner.d1","color":"gray"}]
execute @s[score_Success_min=1] ~ ~ ~ playsound miner4 voice @a[r=5] ~ ~ ~ 100 1
execute @s[tag=a] ~ ~ ~ scoreboard players test quest Stats 1 1
execute @s[score_Success_min=1] ~ ~ ~ tellraw @a[r=5] ["",{"text":"\n[","color":"dark_gray"},{"translate":"miner","color":"dark_gray"},{"text":"] ","color":"dark_gray"},{"translate":"miner.d2","color":"gray"}]
execute @s ~ ~ ~ scoreboard players test quest Stats 2
execute @s[score_Success_min=1] ~ ~ ~ tellraw @a[r=5] ["",{"text":"\n[","color":"dark_gray"},{"translate":"miner","color":"dark_gray"},{"text":"] ","color":"dark_gray"},{"translate":"miner.d2","color":"gray"}]
execute @s[score_Success_min=1] ~ ~ ~ playsound miner7 voice @a[r=5] ~ ~ ~ 100 1
execute @s[tag=!a] ~ ~ ~ scoreboard players test quest Stats 1 1
execute @s[score_Success_min=1] ~ ~ ~ tellraw @a[r=5] ["",{"text":"[","color":"green"},{"translate":"miner.a1","color":"green","clickEvent":{"action":"run_command","value":"/trigger trigger set 9"}},{"text":"] ","color":"green"}]
execute @s ~ ~ ~ scoreboard players test quest Stats 2 2
execute @s[score_Success_min=1] ~ ~ ~ tellraw @a[r=5] ["",{"text":"[","color":"green"},{"translate":"miner.a2","color":"green","clickEvent":{"action":"run_command","value":"/trigger trigger set 13"}},{"text":"] ","color":"green"}]
