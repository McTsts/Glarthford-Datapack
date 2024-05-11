execute @e[tag=ender_boss] ~ ~ ~ summon minecraft:endermite
execute @e[tag=ender_boss] ~ ~ ~ tellraw @a[r=15] ["",{"text":"\n[","color":"dark_gray"},{"translate":"ender_priest","color":"dark_purple"},{"text":"] ","color":"dark_gray"},{"translate":"ender_priest.1","color":"gray"}]
execute @e[tag=ender_boss] ~ ~ ~ playsound ender_priest3 voice @a[r=15] ~ ~ ~ 100 1