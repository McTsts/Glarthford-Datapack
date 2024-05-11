tellraw @a[r=5] ["",{"text":"\n[","color":"dark_gray"},{"translate":"enderman","color":"dark_purple"},{"text":"] ","color":"dark_gray"},{"translate":"enderman.d","color":"gray"}]
playsound minecraft:entity.endermen.ambient hostile @a[r=5] ~ ~ ~ 100 1
execute @s[tag=!a] ~ ~ ~ scoreboard players test quest Stats 5 5
execute @s[score_Success_min=1] ~ ~ ~ tellraw @a[r=5] ["",{"text":"[","color":"green"},{"translate":"enderman.a1","color":"green","clickEvent":{"action":"run_command","value":"/trigger trigger set 18"}},{"text":"] ","color":"green"}]
execute @s[tag=!b] ~ ~ ~ scoreboard players test quest Stats 4 4
execute @s[score_Success_min=1] ~ ~ ~ tellraw @a[r=5] ["",{"text":"[","color":"green"},{"translate":"enderman.a2","color":"green","clickEvent":{"action":"run_command","value":"/trigger trigger set 46"}},{"text":"] ","color":"green"}]