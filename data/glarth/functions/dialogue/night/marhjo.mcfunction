execute @s[tag=!a] ~ ~ ~ tellraw @a[r=5] ["",{"text":"\n[","color":"dark_gray"},{"translate":"marhjo","color":"dark_green"},{"text":"] ","color":"dark_gray"},{"translate":"marhjo.n","color":"gray"}]
execute @s[tag=!a] ~ ~ ~ playsound marhjo2 voice @a[r=5] ~ ~ ~ 100 1
execute @s[tag=a] ~ ~ ~ tellraw @a[r=5] ["",{"text":"\n[","color":"dark_gray"},{"translate":"marhjo","color":"dark_green"},{"text":"] ","color":"dark_gray"},{"translate":"marhjo.g","color":"gray"}]
execute @s[tag=a] ~ ~ ~ playsound marhjo3 voice @a[r=5] ~ ~ ~ 100 1
execute @s[tag=!a] ~ ~ ~ tellraw @a[r=5] ["",{"text":"[","color":"green"},{"translate":"marhjo.a1","color":"green","clickEvent":{"action":"run_command","value":"/trigger trigger set 71"}},{"text":"] ","color":"green"}]