tellraw @a[r=5] ["",{"text":"\n[","color":"dark_gray"},{"translate":"adventurer","color":"gold"},{"text":"] ","color":"dark_gray"},{"translate":"adventurer.d","color":"gray"}]
playsound adventurer1 voice @a[r=5] ~ ~ ~ 100 1
execute @s[tag=!a] ~ ~ ~ scoreboard players test quest Stats 4 4
execute @s[score_Success_min=1] ~ ~ ~ tellraw @a[r=5] ["",{"text":"[","color":"green"},{"translate":"adventurer.a1","color":"green","clickEvent":{"action":"run_command","value":"/trigger trigger set 15"}},{"text":"] ","color":"green"}]
