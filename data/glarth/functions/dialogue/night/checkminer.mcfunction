tellraw @a[r=5] ["",{"text":"\n[","color":"dark_gray"},{"translate":"checkminer","color":"green"},{"text":"] ","color":"dark_gray"},{"translate":"checkminer.n","color":"gray"}]
playsound lucas2 voice @a[r=5] ~ ~ ~ 100 1
execute @s[tag=!a] ~ ~ ~ tellraw @a[r=5] ["",{"text":"[","color":"green"},{"translate":"checkminer.a1","color":"green","clickEvent":{"action":"run_command","value":"/trigger trigger set 68"}},{"text":"] ","color":"green"}]