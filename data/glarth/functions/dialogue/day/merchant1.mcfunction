tellraw @a[r=5] ["",{"text":"\n[","color":"dark_gray"},{"translate":"merchant1","color":"red"},{"text":"] ","color":"dark_gray"},{"translate":"merchant1.d","color":"gray"}]
playsound merchantf1 voice @a[r=5] ~ ~ ~ 100 1
execute @s[tag=!a] ~ ~ ~ tellraw @a[r=5] ["",{"text":"[","color":"green"},{"translate":"merchant1.a1","color":"green","clickEvent":{"action":"run_command","value":"/trigger trigger set 17"}},{"text":"] ","color":"green"}]
execute @s[tag=!b] ~ ~ ~ tellraw @a[r=5] ["",{"text":"[","color":"green"},{"translate":"merchant1.a2","color":"green","clickEvent":{"action":"run_command","value":"/trigger trigger set 30"}},{"text":"] ","color":"green"}]
execute @s[tag=b] ~ ~ ~ execute @s[tag=!c] ~ ~ ~ tellraw @a[r=5] ["",{"text":"[","color":"green"},{"translate":"merchant1.a2.1","color":"green","clickEvent":{"action":"run_command","value":"/trigger trigger set 31"}},{"text":"] ","color":"green"}]
execute @s[tag=c] ~ ~ ~ execute @s[tag=!d] ~ ~ ~ tellraw @a[r=5] ["",{"text":"[","color":"green"},{"translate":"merchant1.a2.2","color":"green","clickEvent":{"action":"run_command","value":"/trigger trigger set 32"}},{"text":"] ","color":"green"}]
