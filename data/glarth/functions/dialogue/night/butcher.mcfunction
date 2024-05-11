tellraw @a[r=5] ["",{"text":"\n[","color":"dark_gray"},{"translate":"butcher","color":"dark_red"},{"text":"] ","color":"dark_gray"},{"translate":"butcher.n","color":"gray"}]
playsound butcher2 voice @a[r=5] ~ ~ ~ 100 1
execute @s[tag=!a] ~ ~ ~ tellraw @a[r=5] ["",{"text":"[","color":"green"},{"translate":"butcher.a1","color":"green","clickEvent":{"action":"run_command","value":"/trigger trigger set 52"}},{"text":"] ","color":"green"}]
