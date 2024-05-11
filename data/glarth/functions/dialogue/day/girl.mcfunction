tellraw @a[r=5] ["",{"text":"\n[","color":"dark_gray"},{"translate":"girl","color":"red"},{"text":"] ","color":"dark_gray"},{"translate":"girl.d","color":"gray"}]
playsound girl1 voice @a[r=5] ~ ~ ~ 100 1
execute @s[tag=!a] ~ ~ ~ scoreboard players test quest Stats 2 2
execute @s[score_Success_min=1] ~ ~ ~ tellraw @a[r=5] ["",{"text":"[","color":"green"},{"translate":"girl.a1","color":"green","clickEvent":{"action":"run_command","value":"/trigger trigger set 10"}},{"text":"] ","color":"green"}]
