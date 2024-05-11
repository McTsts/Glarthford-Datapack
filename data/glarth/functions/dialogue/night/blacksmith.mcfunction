execute @s[tag=!c] ~ ~ ~ tellraw @a[r=5] ["",{"text":"\n[","color":"dark_gray"},{"translate":"blacksmith","color":"black"},{"text":"] ","color":"dark_gray"},{"translate":"blacksmith.n","color":"gray"}]
execute @s[tag=!c] ~ ~ ~ playsound blacksmith3 voice @a[r=5] ~ ~ ~ 100 1
execute @s[tag=c] ~ ~ ~ tellraw @a[r=5] ["",{"text":"\n[","color":"dark_gray"},{"translate":"blacksmith","color":"black"},{"text":"] ","color":"dark_gray"},{"translate":"blacksmith.n2","color":"gray"}]
execute @s[tag=c] ~ ~ ~ playsound blacksmith5 voice @a[r=5] ~ ~ ~ 100 1
execute @s[tag=!a] ~ ~ ~ scoreboard players test quest Stats 5 5
execute @s[score_Success_min=1] ~ ~ ~ tellraw @a[r=5] ["",{"text":"[","color":"green"},{"translate":"blacksmith.a1","color":"green","clickEvent":{"action":"run_command","value":"/trigger trigger set 21"}},{"text":"] ","color":"green"}]
execute @s[tag=!b] ~ ~ ~ tellraw @a[r=5] ["",{"text":"[","color":"green"},{"translate":"blacksmith.a2","color":"green","clickEvent":{"action":"run_command","value":"/trigger trigger set 41"}},{"text":"] ","color":"green"}]
execute @s[tag=!c] ~ ~ ~ scoreboard players test quest Stats 1 2
execute @s[score_Success_min=1] ~ ~ ~ tellraw @a[r=5] ["",{"text":"[","color":"green"},{"translate":"blacksmith.a3a","color":"green","clickEvent":{"action":"run_command","value":"/trigger trigger set 42"}},{"text":"] ","color":"green"}]
execute @s[score_Success_min=1] ~ ~ ~ tellraw @a[r=5] ["",{"text":"[","color":"green"},{"translate":"blacksmith.a3b","color":"green","clickEvent":{"action":"run_command","value":"/trigger trigger set 43"}},{"text":"] ","color":"green"}]
execute @s[tag=!d] ~ ~ ~ scoreboard players test quest Stats 3 3
execute @s[score_Success_min=1] ~ ~ ~ tellraw @a[r=5] ["",{"text":"[","color":"green"},{"translate":"blacksmith.a4","color":"green","clickEvent":{"action":"run_command","value":"/trigger trigger set 47"}},{"text":"] ","color":"green"}]
execute @s[tag=d] ~ ~ ~ execute @s[tag=!e] ~ ~ ~ scoreboard players test quest Stats 3 3
execute @s[score_Success_min=1] ~ ~ ~ tellraw @a[r=5] ["",{"text":"[","color":"green"},{"translate":"blacksmith.a4.1","color":"green","clickEvent":{"action":"run_command","value":"/trigger trigger set 48"}},{"text":"] ","color":"green"}]
execute @s[tag=f] ~ ~ ~ execute @s[tag=!g] ~ ~ ~ scoreboard players test quest Stats 3 3
execute @s[score_Success_min=1] ~ ~ ~ tellraw @a[r=5] ["",{"text":"[","color":"green"},{"translate":"blacksmith.a5","color":"green","clickEvent":{"action":"run_command","value":"/trigger trigger set 49"}},{"text":"] ","color":"green"}]