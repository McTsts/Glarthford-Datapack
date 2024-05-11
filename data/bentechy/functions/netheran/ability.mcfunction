execute @e[tag=netheran_boss] ~ ~ ~ summon zombie_pigman ~ ~1 ~ {Tags:["minion"],IsBaby:1,Anger:767,Attributes:[{Name:generic.maxHealth,Base:5}],Health:5.0f}
scoreboard players reset @e[tag=netheran_boss] SKBossTimer
execute @e[tag=netheran_boss] ~ ~ ~ tellraw @a[r=15] ["",{"text":"\n[","color":"dark_gray"},{"translate":"netheran","color":"dark_red"},{"text":"] ","color":"dark_gray"},{"translate":"netheran.1","color":"gray"}]
execute @e[tag=netheran_boss] ~ ~ ~ playsound netheran3 voice @a[r=15] ~ ~ ~ 100 1