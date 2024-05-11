scoreboard players reset @e[tag=skeleton_boss] SKBossTimer
effect @e[tag=skeleton_king] minecraft:regeneration 3 2
execute @e[tag=skeleton_boss] ~ ~ ~ tellraw @a[r=15] ["",{"text":"\n[","color":"dark_gray"},{"translate":"skeleton_king","color":"dark_gray"},{"text":"] ","color":"dark_gray"},{"translate":"skeleton_king.2","color":"gray"}]
execute @e[tag=skeleton_boss] ~ ~ ~ playsound skeleton_king4 voice @a[r=15] ~ ~ ~ 100 1