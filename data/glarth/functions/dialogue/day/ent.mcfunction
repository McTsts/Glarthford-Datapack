tellraw @a[r=5] ["",{"text":"\n[","color":"dark_gray"},{"translate":"ent","color":"dark_green"},{"text":"] ","color":"dark_gray"},{"translate":"ent.d","color":"gray"}]
playsound ent1 voice @a[r=5] ~ ~ ~ 100 1
execute @s[tag=!a] ~ ~ ~ tellraw @a[r=5] ["",{"text":"[","color":"green"},{"translate":"ent.a1","color":"green","clickEvent":{"action":"run_command","value":"/trigger trigger set 77"}},{"text":"] ","color":"green"}]