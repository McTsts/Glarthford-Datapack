execute @s[tag=!a] ~ ~ ~ tellraw @a[r=5] ["",{"text":"\n[","color":"dark_gray"},{"translate":"richard","color":"dark_aqua"},{"text":"] ","color":"dark_gray"},{"translate":"richard.d","color":"gray"}]
execute @s[tag=!a] ~ ~ ~ playsound richard1 voice @a[r=5] ~ ~ ~ 100 1
execute @s[tag=a] ~ ~ ~ tellraw @a[r=5] ["",{"text":"\n[","color":"dark_gray"},{"translate":"richard","color":"dark_aqua"},{"text":"] ","color":"dark_gray"},{"translate":"richard.d1","color":"gray"}]
execute @s[tag=a] ~ ~ ~ playsound richard3 voice @a[r=5] ~ ~ ~ 100 1
execute @s[tag=!a] ~ ~ ~ tellraw @a[r=5] ["",{"text":"[","color":"green"},{"translate":"richard.a1","color":"green","clickEvent":{"action":"run_command","value":"/trigger trigger set 7"}},{"text":"] ","color":"green"}]
