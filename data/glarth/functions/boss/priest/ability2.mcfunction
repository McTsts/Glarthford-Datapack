execute @e[tag=ender_boss] ~ ~ ~ summon minecraft:shulker
execute @e[tag=ender_boss] ~ ~ ~ tellraw @a[r=15] ["",{"text":"\n[","color":"dark_gray"},{"translate":"ender_priest","color":"dark_purple"},{"text":"] ","color":"dark_gray"},{"translate":"ender_priest.2","color":"gray"}]
execute @e[tag=ender_boss] ~ ~ ~ playsound ender_priest4 voice @a[r=15] ~ ~ ~ 100 1