execute @s[tag=!b] ~ ~ ~ tellraw @a[r=5] ["",{"text":"\n[","color":"dark_gray"},{"translate":"graveyard","color":"gray"},{"text":"] ","color":"dark_gray"},{"translate":"graveyard.n","color":"gray"}]
execute @s[tag=!b] ~ ~ ~ playsound graveyard1 voice @a[r=5] ~ ~ ~ 100 1
execute @s[tag=b] ~ ~ ~ tellraw @a[r=5] ["",{"text":"\n[","color":"dark_gray"},{"translate":"graveyard","color":"gray"},{"text":"] ","color":"dark_gray"},{"translate":"graveyard.x","color":"gray"}]
execute @s[tag=b] ~ ~ ~ playsound graveyard2 voice @a[r=5] ~ ~ ~ 100 1
execute @s[tag=!a] ~ ~ ~ tellraw @a[r=5] ["",{"text":"[","color":"green"},{"translate":"graveyard.a1","color":"green","clickEvent":{"action":"run_command","value":"/trigger trigger set 50"}},{"text":"] ","color":"green"}]