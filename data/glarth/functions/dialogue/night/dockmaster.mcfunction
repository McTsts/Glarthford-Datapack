tellraw @a[r=5] ["",{"text":"\n[","color":"dark_gray"},{"translate":"dockmaster","color":"red"},{"text":"] ","color":"dark_gray"},{"translate":"dockmaster.n","color":"gray"}]
playsound dockmaster2 voice @a[r=5] ~ ~ ~ 100 1
execute @s[tag=!a] ~ ~ ~ tellraw @a[r=5] ["",{"text":"[","color":"green"},{"translate":"dockmaster.a1","color":"green","clickEvent":{"action":"run_command","value":"/trigger trigger set 84"}},{"text":"] ","color":"green"}]