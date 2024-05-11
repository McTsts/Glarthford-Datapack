tellraw @a[r=5] ["",{"text":"\n[","color":"dark_gray"},{"translate":"fisher","color":"blue"},{"text":"] ","color":"dark_gray"},{"translate":"fisher.n","color":"gray"}]
playsound fisher2 voice @a[r=5] ~ ~ ~ 100 1
execute @s[tag=!a] ~ ~ ~ tellraw @a[r=5] ["",{"text":"[","color":"green"},{"translate":"fisher.a1","color":"green","clickEvent":{"action":"run_command","value":"/trigger trigger set 5"}},{"text":"] ","color":"green"}]
