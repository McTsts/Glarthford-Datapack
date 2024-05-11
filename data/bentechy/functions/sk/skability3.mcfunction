execute @e[tag=skeleton_boss] ~ ~ ~ execute @a[r=15] ~ ~ ~ summon lightning_bolt ~ ~ ~
execute @e[tag=skeleton_boss] ~ ~ ~ tellraw @a[r=15] ["",{"text":"\n[","color":"dark_gray"},{"translate":"skeleton_king","color":"dark_gray"},{"text":"] ","color":"dark_gray"},{"translate":"skeleton_king.3","color":"gray"}]
execute @e[tag=skeleton_boss] ~ ~ ~ playsound skeleton_king5 voice @a[r=15] ~ ~ ~ 100 1