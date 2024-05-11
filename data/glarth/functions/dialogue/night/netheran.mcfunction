execute @s[tag=!a] ~ ~ ~ tellraw @a[r=5] ["",{"text":"\n[","color":"dark_gray"},{"translate":"netheran","color":"dark_red"},{"text":"] ","color":"dark_gray"},{"translate":"netheran.i","color":"gray"}]
execute @s[tag=!a] ~ ~ ~ playsound netheran1 voice @a[r=5] ~ ~ ~ 100 1
execute @s[tag=a] ~ ~ ~ tellraw @a[r=5] ["",{"text":"\n[","color":"dark_gray"},{"translate":"netheran","color":"dark_red"},{"text":"] ","color":"dark_gray"},{"translate":"netheran.d","color":"gray"}]
execute @s[tag=a] ~ ~ ~ playsound netheran2 voice @a[r=5] ~ ~ ~ 100 1
execute @s[tag=a] ~ ~ ~ function bentechy:netheran/spawn