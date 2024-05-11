tellraw @a[r=5] ["",{"text":"\n[","color":"dark_gray"},{"translate":"priest","color":"white"},{"text":"] ","color":"dark_gray"},{"translate":"priest.n","color":"gray"}]
playsound priest2 voice @a[r=5] ~ ~ ~ 100 1
execute @s[tag=!a] ~ ~ ~ scoreboard players test quest Stats 1 2
execute @s[score_Success_min=1] ~ ~ ~ tellraw @a[r=5] ["",{"text":"[","color":"green"},{"translate":"priest.a1","color":"green","clickEvent":{"action":"run_command","value":"/trigger trigger set 6"}},{"text":"] ","color":"green"}]
execute @s[tag=!b] ~ ~ ~ tellraw @a[r=5] ["",{"text":"[","color":"green"},{"translate":"priest.a2","color":"green","clickEvent":{"action":"run_command","value":"/trigger trigger set 37"}},{"text":"] ","color":"green"}]
execute @s[tag=b] ~ ~ ~ execute @s[tag=!c] ~ ~ ~ tellraw @a[r=5] ["",{"text":"[","color":"green"},{"translate":"priest.a2.1","color":"green","clickEvent":{"action":"run_command","value":"/trigger trigger set 38"}},{"text":"] ","color":"green"}]