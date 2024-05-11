tellraw @a[r=5] ["",{"text":"\n[","color":"dark_gray"},{"translate":"farmer","color":"yellow"},{"text":"] ","color":"dark_gray"},{"translate":"farmer.n","color":"gray"}]
playsound farmer2 voice @a[r=5] ~ ~ ~ 100 1
execute @s[tag=!a] ~ ~ ~ scoreboard players test quest Stats 4 4
execute @s[score_Success_min=1] ~ ~ ~ tellraw @a[r=5] ["",{"text":"[","color":"green"},{"translate":"farmer.a1","color":"green","clickEvent":{"action":"run_command","value":"/trigger trigger set 51"}},{"text":"] ","color":"green"}]
execute @s[tag=!b] ~ ~ ~ scoreboard players test quest Stats 1 1
execute @s[score_Success_min=1] ~ ~ ~ tellraw @a[r=5] ["",{"text":"[","color":"green"},{"translate":"farmer.a2","color":"green","clickEvent":{"action":"run_command","value":"/trigger trigger set 64"}},{"text":"] ","color":"green"}]
execute @s[tag=!b] ~ ~ ~ scoreboard players test quest Stats 6 6
execute @s[score_Success_min=1] ~ ~ ~ tellraw @a[r=5] ["",{"text":"[","color":"green"},{"translate":"farmer.a2","color":"green","clickEvent":{"action":"run_command","value":"/trigger trigger set 64"}},{"text":"] ","color":"green"}]